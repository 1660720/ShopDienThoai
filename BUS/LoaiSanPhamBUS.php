<?php 
 class LoaiSanPhamBUS
	  {
	  	 var $loaiSanPhamDAO;
	  	 public function __construct()
	  	 {
	  	 	$this->loaiSanPhamDAO = new LoaiSanPhamDAO();
	  	 }
	  	 public function GetAllAvailable()
	  	 {
	  	 	return $this->loaiSanPhamDAO->GetAllAvailable();
	  	 }
	  	 public function GetByID_LSP($maLoaiSanPham)
	  	 {
	  	 	return $this->loaiSanPhamDAO->GetByID_LSP($maLoaiSanPham);
	  	 }
	  }
 ?>