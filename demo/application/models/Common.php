<?php

class Common extends CI_Model
{	
	function __construct()
	{		
		$this->load->model('Location');
	}
}
?>
