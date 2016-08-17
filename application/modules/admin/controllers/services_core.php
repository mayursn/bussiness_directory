<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * BusinessDirectory Services Controller
 *
 * This class handles Services management related functionality
 *
 * @package		Admin
 * @subpackage	users
 * @author		webhelios
 * @link		http://webhelios.com
 */

class Services_core extends CI_Controller {
	
	var $per_page = 3;
	
	public function __construct()
	{
		parent::__construct();
		is_installed(); #defined in auth helper
		checksavedlogin(); #defined in auth helper
		
		if(!is_loggedin())
		{
			if(count($_POST)<=0)
			$this->session->set_userdata('req_url',current_url());
			redirect(site_url('admin/auth'));
		}

		$this->per_page = get_per_page_value();#defined in auth helper
		$this->load->model('services_model');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
	}
	
	public function index()
	{
		$this->all();
	}

	#load all services view with paging
	public function all($start='0')
	{
            $this->load->model('admin/services_model');
            $value['services'] = $this->services_model->get_all_services();            
            $data['title'] = lang_key('services');
            $data['content']= load_admin_view('services/services_view',$value,TRUE);
            load_admin_view('template/template_view',$data);		
	}


	public function ban_user($user_id=0, $page = 1)
	{
		if(constant("ENVIRONMENT")=='demo')
		{
			$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
		}
		else
		{
	        $this->users_model->ban_user($user_id);
	        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('user_banned').'</div>');
		}
        redirect(site_url('admin/users/all/' . $page));
    }

    public function unban_user($user_id=0, $page = 1)
    {
    	if(constant("ENVIRONMENT")=='demo')
		{
			$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
		}
		else
		{
	        $this->users_model->unban_user($user_id);
	        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('user_unbanned').'</div>');
		}
        redirect(site_url('admin/users/all/' . $page));
    }

	public function detail($id)
	{
		$value['profile'] 	= $this->users_model->get_user_by_id($id);
        $data['title'] 		= lang_key('user_profile');
		$data['content'] 	= load_admin_view('users/detail_view',$value,TRUE);
		load_admin_view('template/template_view',$data);		
	}

	public function banuser($page='0',$id='',$limit='')
	{
		$this->load->model('user/user_model');
		if($limit=='forever')
		{
			if(constant("ENVIRONMENT")=='demo')
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
			}
			else
			{
				$this->user_model->banuser($id,$limit);
				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('user_banned').'</div>');
			}

			redirect(site_url('admin/userdetail/'.$id));			
		}

		$this->form_validation->set_rules('limit',	'Limit', 'required|numeric|xss_clean');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->userdetail($id);	
		}
		else
		{
			if(constant("ENVIRONMENT")=='demo')
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
			}
			else
			{
				$limit = $this->input->post('limit');
				$this->user_model->banuser($id,$limit);
				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('user_banned').'</div>');
			}
			redirect(site_url('admin/userdetail/'.$id));
		}
	}

	function exportemails()
	{
		$query = $this->users_model->get_all_user_emails();
		$this->load->dbutil();
		$data = $this->dbutil->csv_from_result($query); 

	    # Load the download helper and send the file to your desktop
        $this->load->helper('download');
        force_download('userlist.csv', $data);	

	}

	function create()
	{
		$this->load->model('admin/services_model');
		$this->load->model('admin/package_model');
                $data['title'] 		= lang_key('create_service');        
                $value['packages'] 	= $this->package_model->get_all_packages_by_range('all');
                $data['content'] 	= load_admin_view('services/createservice_view',$value,TRUE);
		load_admin_view('template/template_view',$data);		
	}

	public function useremail_check($str)
	{
		$this->load->model('auth_model');
		$res = $this->auth_model->is_email_exists($str);
		if ($res>0)
		{
			$this->form_validation->set_message('useremail_check', lang_key('email_allready_in_use'));
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}

	#username validation function
	public function username_check($str)
	{
		$this->load->model('auth_model');
		$res = $this->auth_model->is_username_exists($str);

		if ($res>0)
		{
			$this->form_validation->set_message('username_check', lang_key('username_allready_in_use'));
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}


	function add()
	{
            
		$this->form_validation->set_rules('service_name',lang_key('service_name'), 'required|xss_clean');
		$this->form_validation->set_rules('quality',lang_key('quality'), 	'required|xss_clean');
		$this->form_validation->set_rules('duration',lang_key('duration'), 'required|xss_clean');
		$this->form_validation->set_rules('opening_hours',lang_key('opening_hours'), 'required|xss_clean');
		$this->form_validation->set_rules('services_cost',lang_key('services_cost'), 'required|xss_clean');
		$this->form_validation->set_rules('warranty_given', lang_key('warranty_given'), 'required|xss_clean');
		$this->form_validation->set_rules('follow_up',lang_key('follow_up'), 'required|xss_clean');
		
		if ($this->form_validation->run() == FALSE)
		{			
			$this->create();	
                }
		else
		{
			$this->load->helper('date');
			$this->load->library('encrypt');
			$datestring = "%Y-%m-%d";
			$time = time();
			$request_date = mdate($datestring, $time);
			$data = array();
                        $data['user_id'] = $this->session->userdata('user_id');
			$data['service_name'] = $this->input->post('service_name');
			$data['quality'] = $this->input->post('quality');
			$data['duration'] = $this->input->post('duration');
			$data['opening_hours'] = $this->input->post('opening_hours');
			$data['services_cost'] 	= $this->input->post('services_cost');
                        $data['warranty_given'] = $this->input->post('warranty_given');
                        $data['follow_up'] = $this->input->post('follow_up');                        			
			$this->load->model('admin/services_model');
			$user_id = $this->services_model->insert_service($data);
                        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('service_created').'</div>');
			redirect(site_url('admin/services/'));		
		}
	}

	public function profile_photo_uploader()
	{
		load_admin_view('users/profile_photo_uploader_view');
	}



	public function upload_profile_photo()
	{
		$date_dir = 'profile_photos/';
		$config['upload_path'] = './uploads/profile_photos/';
		$config['allowed_types'] = 'gif|jpg|JPG|png';
		$config['max_size'] = '5120';

		$this->load->library('upload', $config);
		$this->upload->display_errors('', '');	

		if($this->upload->do_upload('photoimg'))
		{

			$data = $this->upload->data();
			$this->load->helper('date');
			$format = 'DATE_RFC822';
			$time = time();

			$media['media_name'] 		= $data['file_name'];
			$media['media_url']  		= base_url().'uploads/profile_photos/'.$data['file_name'];
			$media['create_time'] 		= standard_date($format, $time);
			$media['status']			= 1;

			create_square_thumb('./uploads/profile_photos/'.$data['file_name'],'./uploads/profile_photos/thumb/');

			$status['error'] 	= 0;
			$status['name']	= $data['file_name'];
		}
		else
		{
			$errors = $this->upload->display_errors();
			$errors = str_replace('<p>','',$errors);
			$errors = str_replace('</p>','',$errors);
			$status = array('error'=>$errors,'name'=>'');
		}

		echo json_encode($status);
		die;
	}
        
        function editservice($id)
        {
                $this->load->model('admin/services_model');		
                $data['title'] 		= lang_key('edit_service');                       
                $value['id'] = $id;
                $value['service'] = $this->services_model->get_service($id);
               
                $data['content'] 	= load_admin_view('services/editservice',$value,TRUE);
                
		load_admin_view('template/template_view',$data);
        }
        
        function update($id)
        {
                $this->form_validation->set_rules('service_name',lang_key('service_name'), 'required|xss_clean');
		$this->form_validation->set_rules('quality',lang_key('quality'), 	'required|xss_clean');
		$this->form_validation->set_rules('duration',lang_key('duration'), 'required|xss_clean');
		$this->form_validation->set_rules('opening_hours',lang_key('opening_hours'), 'required|xss_clean');
		$this->form_validation->set_rules('services_cost',lang_key('services_cost'), 'required|xss_clean');
		$this->form_validation->set_rules('warranty_given', lang_key('warranty_given'), 'required|xss_clean');
		$this->form_validation->set_rules('follow_up',lang_key('follow_up'), 'required|xss_clean');
		
		if ($this->form_validation->run() == FALSE)
		{			
			$this->editservice($id);	
                }
		else
		{
			$this->load->helper('date');
			$this->load->library('encrypt');
			$datestring = "%Y-%m-%d";
			$time = time();
			$request_date = mdate($datestring, $time);
			$data = array();
                        $data['user_id'] = $this->session->userdata('user_id');
			$data['service_name'] = $this->input->post('service_name');
			$data['quality'] = $this->input->post('quality');
			$data['duration'] = $this->input->post('duration');
			$data['opening_hours'] = $this->input->post('opening_hours');
			$data['services_cost'] 	= $this->input->post('services_cost');
                        $data['warranty_given'] = $this->input->post('warranty_given');
                        $data['follow_up'] = $this->input->post('follow_up');                        			
			$this->load->model('admin/services_model');
			$user_id = $this->services_model->update_service($data,$id);
                        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('service_updated').'</div>');
			redirect(site_url('admin/services/'));		
		}
        }
        
        function delete($id)
        {
            $this->load->model('admin/services_model');	
            $this->services_model->delete($id);
            $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('service_deleted').'</div>');
            redirect(site_url('admin/services/'));		
        }
        
        

}

/* End of file users.php */
/* Location: ./application/modules/admin/controllers/admin.php */