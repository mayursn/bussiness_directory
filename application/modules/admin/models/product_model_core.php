<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * BusinessDirectory faq_model_core model
 *
 * This class handles faq_model_core management related functionality
 *
 * @package		Admin
 * @subpackage          Admin
 * @author		webhelios
 * @link		http://webhelios.com
 */
class Product_model_core extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insert_product($data) {
        $this->db->insert('bd_products', $data);
        return $this->db->insert_id();
    }

    function get_all_product() {
        $id = $this->session->userdata('user_id');
        if (!is_admin()) {
            $this->db->where('user_id', $id);
        }
        return $this->db->get('bd_products');
    }

    function get_product($id) {
        $this->db->where('product_id', $id);
        return $this->db->get('bd_products')->row();
    }

    function update_product($data, $id) {
        $this->db->where('product_id', $id);
        $this->db->update('bd_products', $data);
    }

    function delete($id) {
        $this->db->where('product_id', $id);
        $this->db->delete('bd_products');
    }

}

/* End of file admin_model_core.php */
/* Location: ./system/application/models/product_model_core.php */