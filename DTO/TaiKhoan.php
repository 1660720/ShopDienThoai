<?php 
 class TaiKhoan
 {
 	var $MaTaiKhoan;
 	var $TenDangNhap;
 	var $MatKhau;
 	var $TenHienThi;
 	var $DiaChi;
 	var $DienThoai;
 	var $BiXoa;
 	var $MaLoaiTaiKhoan;
 	public function __construct()
 	{
         $this->MaTaiKhoan = 0;
         $this->TenDangNhap    = "";
         $this->MatKhau        = 0;
         $this->TenHienThi     = "";
         $this->DiaChi         = "";
         $this->DienThoai      = "";
         $this->BiXoa          = 0;
         $this->MaLoaiTaiKhoan = 1;
 	}
 }
 ?>