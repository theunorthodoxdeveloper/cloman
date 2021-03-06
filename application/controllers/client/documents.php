<?php 	

	
	class Documents extends CI_Controller {

		public function __construct(){
			parent::__construct();
			$this->isClientAuthorised();
			$this->load->model('projects_model');
			$this->load->model('people_model');
		}

		public function index(){
			$data['title'] = 'Documents Overview | Logic Client';
			$data['projects'] = $this->projects_model->get_projects_to_person($this->session->userdata('people_id'));
			$count = 0;
			foreach($data['projects'] as $proj){
				$c = $this->projects_model->get_comment_count($proj['project_id']);
				$data['projects'][$count]['comment_count'] = $c['count'];
				$count++;
			}
			$data['user_data'] = $this->people_model->get($this->session->userdata('people_id'));
			$data['comment_full_count'] = $this->projects_model->customer_full_count();
			$data['documents'] = $this->people_model->get_live_documents();
			$data['admin'] = $this->session->userdata('is_admin');
			$this->render_client_view('documents', $data);
		}

		public function download($file){
			$this->load->helper('download');
			$data = file_get_contents("uploads/documents/" . $file); // Read the file's contents
			$name = $file;
			force_download($name, $data); 
		}

	}