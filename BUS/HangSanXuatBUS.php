<?php 
 class HangSanXuatBUS
	  {
	  	 var $hangSanXuatDAO;
	  	 public function __construct()
	  	 {
	  	 	$this->hangSanXuatDAO = new HangSanXuatDAO();
	  	 }
	  	 public function GetAllAvailable()
	  	 {
	  	 	return $this->hangSanXuatDAO->GetAllAvailable();
	  	 }
	  	 public function GetByID_HSX($maHangSanXuat)
	  	 {
	  	 	return $this->hangSanXuatDAO->GetByID_HSX($maHangSanXuat);
	  	 }
	  }
 ?>