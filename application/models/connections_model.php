<?php 

	require_once('application/libraries/classes/Connections.php');
	
	class Connections_Model extends CI_Model {

		public function __constructor(){
			parent::__constructor();
		}

		public function get_connection_types() {
			$this->db->select('*');
			$this->db->from('connection_options');
			$query = $this->db->get();
			return $query->result_array();
		}

		public function insert_connection(){
			// if new type is not blank then you need to add that in and then save it against that ID
			$con = new Connections_Class();
			$con->setConnectionOptionsID($_POST['connection']['Type_of_connection']);
			$con->setBusinessID($_POST['connection']['Business']);
			$con->setUsername($_POST['connection']['Username']);
			$con->setUsernameTwo($_POST['connection']['Username_2']);
			$con->setPassword($_POST['connection']['Password']);
			$con->setUrl($_POST['connection']['Link']);
			$con->save();
		}
	}
?>