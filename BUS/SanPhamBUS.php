<?php 
 class SanPhamBUS
	  {
	  	 var $sanPhamDAO;
	  	 public function __construct()
	  	 {
	  	 	$this->sanPhamDAO = new SanPhamDAO();
	  	 }
	  	 public function GetAllAvailable()
	  	 {
	  	 	return $this->sanPhamDAO->GetAllAvailable();
	  	 }
	  	 public function GetByID_ChiTiet($maSanPham)
	  	 {
	  	 	return $this->sanPhamDAO->GetByID_ChiTiet($maSanPham);
	  	 }
	  	 public function GetByID_Loai($maLoaiSanPham)
	  	 {
	  	 	return $this->sanPhamDAO->GetByID_Loai($maLoaiSanPham);

	  	 }
	  	 public function GetByID_Hang($maHangSanXuat)
	  	 {
	  	 	return $this->sanPhamDAO->GetByID_Hang($maHangSanXuat);
	  	 }
	  	 public function TimKiem($Search)
	  	 {
	  	 	return $this->sanPhamDAO->TimKiem($Search);
	  	 }
	  	 public function GetProductSelling()
	  	 {
	  	 	return $this->sanPhamDAO->GetProductSelling();
	  	 }
	  	 public function GetProductNew()
	  	 {
	  	 	return $this->sanPhamDAO->GetProductNew();
	  	 }
	  	 public function GetHang($maHangSanXuat)
	  	 {
	  	 	return $this->sanPhamDAO->GetHang($maHangSanXuat);
	  	 }
	  	 public function GetNgayNhap()
	  	 {
	  	 	return $this->sanPhamDAO->GetNgayNhap();
	  	 }
	  }
 ?>