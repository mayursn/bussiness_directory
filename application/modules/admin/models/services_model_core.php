<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * BusinessDirectory faq_model_core model
 *
 * This class handles faq_model_core management related functionality
 *
 * @package		Faq
 * @subpackage	Faq_model_core
 * @author		webhelios
 * @link		http://webhelios.com
 */

class Services_model_core extends CI_Model 
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
        
    function insert_service($data)
    {
        $this->db->insert('bd_services',$data);
        return $this->db->insert_id();
    }
    
    function get_all_services()
    {
        $id = $this->session->userdata('user_id');
        if(!is_admin())
	{
            $this->db->where('user_id',$id);
        }
        return $this->db->get('bd_services');
    }
    
    function get_service($id)
    {
        $this->db->where('service_id',$id);
        return $this->db->get('bd_services')->row();        
    }
    
    function update_service($data,$id)
    {
        $this->db->where('service_id',$id);
        $this->db->update('bd_services',$data);
    }	
    function delete($id)
    {
        $this->db->where('service_id',$id);
        $this->db->delete('bd_services');
    }
}

/* End of file admin_model_core.php */
/* Location: ./system/application/models/admin_model_core.php */