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

class Faq_model_core extends CI_Model 
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
        
        function get_all_faq()
        {
            return $this->db->get('db_faq')->result();
        }

	
}

/* End of file admin_model_core.php */
/* Location: ./system/application/models/admin_model_core.php */