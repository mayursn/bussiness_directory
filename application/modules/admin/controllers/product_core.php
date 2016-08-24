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

class Product_core extends CI_Controller {
	
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
		$this->load->model('product_model');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
	}
	
	public function index()
	{
		$this->all();
	}

	#load all services view with paging
	public function all($start='0')
	{
            $this->load->model('admin/product_model');
            $value['product'] = $this->product_model->get_all_product();            
            $data['title'] = lang_key('products');
            $data['content']= load_admin_view('product/product_view',$value,TRUE);
            load_admin_view('template/template_view',$data);		
	}


	
	function create()
	{
		$this->load->model('admin/product_model');
		$this->load->model('admin/package_model');
                $data['title'] 		= lang_key('create_product');        
                $value['packages'] 	= $this->package_model->get_all_packages_by_range('all');
                $data['content'] 	= load_admin_view('product/createprodct_view',$value,TRUE);
		load_admin_view('template/template_view',$data);		
	}



	function add()
	{
            
		$this->form_validation->set_rules('product_name',lang_key('product_name'), 'required|xss_clean');
		$this->form_validation->set_rules('quality',lang_key('quality'), 	'required|xss_clean');
		$this->form_validation->set_rules('guarantee',lang_key('guarantee'), 'required|xss_clean');
		$this->form_validation->set_rules('color',lang_key('color'), 'required|xss_clean');
		$this->form_validation->set_rules('size',lang_key('size'), 'required|xss_clean');
		$this->form_validation->set_rules('capacity', lang_key('capacity'), 'required|xss_clean');
		$this->form_validation->set_rules('make',lang_key('make'), 'required|xss_clean');
                $this->form_validation->set_rules('model',lang_key('model'), 'required|xss_clean');
                $this->form_validation->set_rules('price',lang_key('price'), 'required|xss_clean');
                $this->form_validation->set_rules('after_sales_service',lang_key('after_sales_service'), 'required|xss_clean');
		
		if($this->form_validation->run() == FALSE)
		{			
			$this->create();	
                }
		else
		{
                    $data = array();
                    if($_FILES['photoimg']['name']!="")
                    {
                    $file = $_FILES['photoimg']['name'];
                    $exp = explode('.', $file);
                    $ext = strtolower(end($exp));
                    $file_name = date('dmYhis').'.'.$ext;
                    
                    $config['upload_path']          = FCPATH.'assets/images/product/';
                    $config['allowed_types']        = 'gif|jpg|png|jpeg';
                    $config['file_name'] = $file_name;

                    $this->load->library('upload', $config);
                    if ( ! $this->upload->do_upload('photoimg'))
                    {
                            $error =  $this->upload->display_errors();
                            $this->session->set_flashdata('error',$error);
                            $this->create();
                    }
                    else
                    {
                            //$data = array('upload_data' => $this->upload->data());
                          
                            $data['product_file'] =  $file_name;
                    }
                     
                    }
			$this->load->helper('date');
			$this->load->library('encrypt');
			$datestring = "%Y-%m-%d";
			$time = time();
			$request_date = mdate($datestring, $time);
			
                       
                        $data['user_id'] = $this->session->userdata('user_id');
			$data['product_name'] = $this->input->post('product_name');
                        $data['product_description'] = $this->input->post('description');
			$data['quality'] = $this->input->post('quality');
			$data['guarantee'] = $this->input->post('guarantee');
			$data['color'] = $this->input->post('color');
			$data['size'] 	= $this->input->post('size');
                        $data['capacity'] = $this->input->post('capacity');
                        $data['make'] = $this->input->post('make');                        			
                        $data['model'] = $this->input->post('model');                        			
                        $data['price'] = $this->input->post('price');      
                        $data['after_sales_service'] = $this->input->post('after_sales_service');                              
			$this->load->model('admin/product_model');
			$user_id = $this->product_model->insert_product($data);
                        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('product_created').'</div>');
			redirect(site_url('admin/product/'));		
		}
	}



	
        function editproduct($id)
        {
                $this->load->model('admin/product_model');		
                $data['title'] 		= lang_key('edit_product');                       
                $value['id'] = $id;
                $value['product'] = $this->product_model->get_product($id);               
                $data['content'] 	= load_admin_view('product/editproduct_view',$value,TRUE);
                
		load_admin_view('template/template_view',$data);
        }
        
        function update($id)
        {
                $this->form_validation->set_rules('product_name',lang_key('product_name'), 'required|xss_clean');
		$this->form_validation->set_rules('quality',lang_key('quality'), 	'required|xss_clean');
		$this->form_validation->set_rules('guarantee',lang_key('guarantee'), 'required|xss_clean');
		$this->form_validation->set_rules('color',lang_key('color'), 'required|xss_clean');
		$this->form_validation->set_rules('size',lang_key('size'), 'required|xss_clean');
		$this->form_validation->set_rules('capacity', lang_key('capacity'), 'required|xss_clean');
		$this->form_validation->set_rules('make',lang_key('make'), 'required|xss_clean');
                $this->form_validation->set_rules('model',lang_key('model'), 'required|xss_clean');
                $this->form_validation->set_rules('price',lang_key('price'), 'required|xss_clean');
                $this->form_validation->set_rules('after_sales_service',lang_key('after_sales_service'), 'required|xss_clean');
		
		if($this->form_validation->run() == FALSE)
		{			
			$this->create();	
                }
		else
		{
                   $data = array();
                   
                    if($_FILES['photoimg']['name']!="")
                    {
                   
                    $file = $_FILES['photoimg']['name'];
                    $exp = explode('.', $file);
                    $ext = strtolower(end($exp));
                    $file_name = date('dmYhis').'.'.$ext;
                    $config['upload_path']          = FCPATH.'assets/images/product/';
                    $config['allowed_types']        = 'gif|jpg|png|jpeg';
                    $config['file_name'] = $file_name;

                    $this->load->library('upload', $config);
                    
                    if ( ! $this->upload->do_upload('photoimg'))
                    {
                            $error =  $this->upload->display_errors();                            
                            $this->session->set_flashdata('error',$error);
                            $this->create();
                    }
                    else
                    {
                            //$data = array('upload_data' => $this->upload->data());
                         $data['product_file'] =  $file_name;
                    }
                     
                   
                    }
			$this->load->helper('date');
			$this->load->library('encrypt');
			$datestring = "%Y-%m-%d";
			$time = time();
			$request_date = mdate($datestring, $time);
                        $data['user_id'] = $this->session->userdata('user_id');
			$data['product_name'] = $this->input->post('product_name');
                        $data['product_description'] = $this->input->post('description');
			$data['quality'] = $this->input->post('quality');
			$data['guarantee'] = $this->input->post('guarantee');
			$data['color'] = $this->input->post('color');
			$data['size'] 	= $this->input->post('size');
                        $data['capacity'] = $this->input->post('capacity');
                        $data['make'] = $this->input->post('make');                        			
                        $data['model'] = $this->input->post('model');                        			
                        $data['price'] = $this->input->post('price');      
                        $data['after_sales_service'] = $this->input->post('after_sales_service');                              
                        
			$this->load->model('admin/product_model');
			$user_id = $this->product_model->update_product($data,$id);
                        $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('product_updated').'</div>');
			redirect(site_url('admin/product/'));		
		}
        }
        
        function delete($id)
        {
            $this->load->model('admin/product_model');	
            $this->product_model->delete($id);
            $this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('product_deleted').'</div>');
            redirect(site_url('admin/product/'));		
        }
        
        

}

/* End of file users.php */
/* Location: ./application/modules/admin/controllers/admin.php */