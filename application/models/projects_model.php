<?php 

	require_once('application/libraries/classes/Projects.php');
	require_once('application/libraries/classes/Project_To_Users.php');
	

	class Projects_Model extends CI_Model {

		public function __construct(){
			parent::__construct();
		}

		public function insert_project($id){
			$project = new Project_Class();
			$project->setBusinessID($_POST['project']['Business']);
			$project->setSalesID($_POST['project']['Salesman']);
			$project->setProjectName($_POST['project']['Name']);
			$project->setManagerID($_POST['project']['Manager']);
			$project->setProjectTypeID($_POST['project']['Type']);
			$project->setStatusID($_POST['project']['Status']);
			$project->setStartDate(date('Y-m-d', strtotime($_POST['project']['Startdate'])));
			$project->setInternalDeadline(date('Y-m-d', strtotime($_POST['project']['internal-end-date'])));
			$project->setClientDeadline(date('Y-m-d', strtotime($_POST['project']['external-end-date'])));
			$project->setNotes($_POST['project']['Notes']);
			$project->setBudget($_POST['project']['Cost']);
			$project->save();

			$workers = explode(',', $_POST['project']['Workers']);

			foreach($workers as $w){
				$projectUsers = new Project_To_Users_Class();
				$projectUsers->setProjectID($project->getID());
				$projectUsers->setUserID($w);
				$projectUsers->save();
			}
		}

		public function update_project($id){
			$project = new Project_Class($id);
			$project->setBusinessID($_POST['project']['Business']);
			$project->setSalesID($_POST['project']['Salesman']);
			$project->setProjectName($_POST['project']['Name']);
			$project->setManagerID($_POST['project']['Manager']);
			$project->setProjectTypeID($_POST['project']['Type']);
			$project->setStatusID($_POST['project']['Status']);
			$project->setStartDate(date('Y-m-d', strtotime($_POST['project']['Startdate'])));
			$project->setInternalDeadline(date('Y-m-d', strtotime($_POST['project']['internal-end-date'])));
			$project->setClientDeadline(date('Y-m-d', strtotime($_POST['project']['external-end-date'])));
			$project->setNotes($_POST['project']['Notes']);
			$project->setBudget($_POST['project']['Cost']);
			$project->save();

			$workers = explode(',', $_POST['project']['Workers']);
			
			$this->db->delete('project_to_users', array('project_id' => $project->getID())); 

			foreach($workers as $w){
				$projectUsers = new Project_To_Users_Class();
				$projectUsers->setProjectID($project->getID());
				$projectUsers->setUserID($w);
				$projectUsers->save();
			}
			return true;
		}

		public function search_managers_token($data){
			$sql = "SELECT u.user_id as id, name from users as u
			inner join users_to_group as ug on ug.user_id = u.user_id
			where name like '%{$data}%' and ug.group_id = 1";
			$query = $this->db->query($sql);
			return json_encode($query->result_array());
		}

		public function search_salesman_token($data){
			$sql = "SELECT u.user_id as id, name from users as u
			inner join users_to_group as ug on ug.user_id = u.user_id
			where name like '%{$data}%' and ug.group_id = 2";
			$query = $this->db->query($sql);
			return json_encode($query->result_array());
		}

		public function search_workers_token($data){
			$sql = "SELECT u.user_id as id, name from users as u
			inner join users_to_group as ug on ug.user_id = u.user_id
			where name like '%{$data}%' and (ug.group_id = 3 or ug.group_id = 4)";
			$query = $this->db->query($sql);
			return json_encode($query->result_array());
		}

		public function search_all_workers_token($data){
			$sql = "SELECT u.user_id as id, name from users as u
			inner join users_to_group as ug on ug.user_id = u.user_id
			where name like '%{$data}%'";
			$query = $this->db->query($sql);
			return json_encode($query->result_array());
		}

		public function get_project_types(){
			$this->db->select('*');
			$this->db->from('project_type');
			$query = $this->db->get();
			return $query->result_array();
		}

		public function get_project_status(){
			$this->db->select('*');
			$this->db->from('status_table');
			$query = $this->db->get();
			return $query->result_array();
		}

		public function get_project_list(){
			$this->db->select('*');
			$this->db->from('projects');
			$this->db->join('users', 'projects.manager_id = users.user_id');
			$this->db->join('businesses', 'businesses.business_id = projects.business_id');
			$this->db->where('complete', 'N');
			$this->db->order_by('status_id asc, internal_deadline desc'); 
			$query = $this->db->get();
			return $query->result_array();
		}

		public function search_projects($data){
			$this->db->select('*');
			$this->db->from('projects');
			$this->db->join('users', 'projects.manager_id = users.user_id');
			$this->db->join('businesses', 'businesses.business_id = projects.business_id');
			$this->db->like('project_name', $data);
			$this->db->or_like('businesses.name', $data);
			$this->db->order_by('status_id asc, internal_deadline desc'); 
			$query = $this->db->get();
			return $query->result_array();
		}

		public function get_project_tasks($id){
			$this->db->select('*');
			$this->db->from('tasks');
			$this->db->where('project_id', $id);
			$this->db->where('complete', 'N');
			$this->db->order_by("status_id", "desc");
			$this->db->order_by("internal_deadline", "desc");
			$this->db->limit(5);
			$query = $this->db->get();
			return $query->result_array();
		}

		public function get_project_comments($id){
			$this->db->select('*');
			$this->db->from('projects_comments');
			$this->db->where('project_id', $id);
			$query = $this->db->get();
			return $query->result_array();
		}

		public function project_deatils($id){
			$sql = "SELECT p.*, pt.name as project_type, st.name as status_name, u.*, uu.name as sales_name, uu.display_name as sales_display_name, b.name as business_name from projects as p
				inner join users as u on u.user_id = p.manager_id
				inner join users as uu on uu.user_id = p.sales_id
				inner join businesses as b on b.business_id = p.business_id
				inner join project_type as pt on pt.project_type_id = p.project_type_id
				inner join status_table as st on st.status_id = p.status_id
				where p.project_id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row();
		}

		public function project_workers($id){
			$sql = "SELECT u.* from projects as p
			inner join project_to_users as ptu on ptu.project_id = p.project_id
			inner join users as u on u.user_id = ptu.user_id
			where p.project_id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->result_array();
		}

		public function project_business($id, $json = false){
			if($json){
				$select = "SELECT b.business_id as id, b.name";
			} else {
				$select = "SELECT *";
			}
			$sql = $select . " from businesses as b
inner join projects as p on p.business_id = b.business_id
where p.project_id = ?";
			$query = $this->db->query($sql, array($id));
			if(!$json){
				return $query->result_array();
			} else {
				return json_encode($query->result_array());
			}
		}

		public function project_manager($id, $json = false){
			if($json){
				$select = " SELECT u.user_id as id, name";
			} else {
				$select = "SELECT *";
			}
			$sql = $select . " from users as u
inner join projects as p on p.manager_id = u.user_id
where p.project_id = ?";
			$query = $this->db->query($sql, array($id));
			if(!$json){
				return $query->result_array();
			} else {
				return json_encode($query->result_array());
			}
		}

		public function project_salesman($id, $json = false){
			if($json){
				$select = " SELECT u.user_id as id, name";
			} else {
				$select = "SELECT *";
			}
			$sql = $select . " from users as u
inner join projects as p on p.sales_id = u.user_id
where p.project_id = ?";
			$query = $this->db->query($sql, array($id));
			if(!$json){
				return $query->result_array();
			} else {
				return json_encode($query->result_array());
			}
		}

		public function json_project_user($id){
			$sql ="SELECT u.user_id as id, name
			from users as u
			inner join project_to_users as ptu on ptu.user_id = u.user_id
			where ptu.project_id = ?";
			$query = $this->db->query($sql, array($id));
			return json_encode($query->result_array());
		}

		public function add_project_comment($id){
			$data = array(
			   'project_id' => $id,
			   'comment' => $_POST['data'],
			   'user_id' => $this->session->userdata('user_id')
			);

			$this->db->insert('projects_comments', $data); 
		}

		public function remove_project_comment($id){
			$this->db->delete('projects_comments', array('project_comment_id' => $id));
			return;		
		}

		public function get_project_of_comment($id){
			$this->db->select('project_id');
			$this->db->from('projects_comments');
			$this->db->where('project_comment_id', $id);
			$query = $this->db->get();
			return $query->row();
		}

		public function put_project_on_hold($id){
			$data = array(
			   'project_id' => $id,
			   'hold_date' => date('Y-m-d H:i:s', strtotime('now')),
			   'done_by' => $this->session->userdata('user_id')
			);
			$this->db->insert('projects_on_hold', $data); 
			$data = array('on_hold' => 'Y', 'hold_id' => $this->db->insert_id());
			$this->db->where('project_id', $id);
			$this->db->update('projects', $data); 
		}

		public function unhold_project($id){
			$this->db->select('hold_id');
			$this->db->from('projects');
			$this->db->where('project_id', $id);
			$query = $this->db->get();
			$query = $query->row();

			$data = array('unhold_date' => date('Y-m-d H:i:s', strtotime('now')));
			$this->db->where('project_hold_id', $query->hold_id);
			$this->db->update('projects_on_hold', $data); 
			$data = array('on_hold' => 'N', 'hold_id' => null);
			$this->db->where('project_id', $id);
			$this->db->update('projects', $data);
			return true;
		}

		public function get_hold_time($id){
			$this->db->select('*');
			$this->db->from('projects_on_hold');
			$this->db->where('project_id', $id);
			$query = $this->db->get();
			$query = $query->result_array();
			$diff = 0;

			foreach($query as $q){
				if($q['unhold_date'] != null){
					$unhold = strtotime($q['unhold_date']);
				} else {
					$date = new DateTime();
				    $unhold = $date->getTimestamp();
				}
				$diff = $diff + abs($unhold - strtotime($q['hold_date']));
			}

			$years   = floor($diff / (365*60*60*24)); 
			$months  = floor(($diff - $years * 365*60*60*24) / (30*60*60*24)); 
			$days    = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
			$hours   = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24)/ (60*60)); 
			$minutes  = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24 - $hours*60*60)/ 60); 

			$time = sprintf("%d months, %d days, %d hours, %d minuts\n", $months, $days, $hours, $minutes);
			return $time;

		}
	}