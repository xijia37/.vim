<?php
class Supplier_m extends CI_Model {

    function __construct()
    {
        parent::__construct();
		$this->load->database();
    }
	
    function get_last_ten_entries()
    {
        $query = $this->db->get('supplier', 10);
        return $query->result();
    }

	function query_all()
    {
        $query = $this->db->get('supplier');
            if( $query->num_rows() > 0 ) {
            return $query->result_array();
        } else {
            return array();
        }
    }
	
	function id($id)
	{
		$query = $this->db->get_where('supplier', array('supplier_id' => $id));
		return $query->row_array();
	}	
	
	function id($id)
	{
		$query = $this->db->get_where('supplier', array('supplier_id' => $id));
		return $query->row_array();
	}
	
    function insert_entry()
    {
		$this->_fill_field();
		$this->reg_time = time();
        $this->db->insert('supplier', $this);
		return $this->db->affected_rows()> 0 ? True : False ;
    }

    function update_entry($id)
    {	
		$this->_fill_field();
        $this->db->update('supplier', $this, array('supplier_id' => $id));
		return $this->db->affected_rows()>= 0 ? True : False ;
    }
    
	function delete_entry()
    {
		$this->db->delete('supplier', array('supplier_id' => $id)); 
		return $this->db->affected_rows()> 0 ? True : False ;
    }	
	
	}