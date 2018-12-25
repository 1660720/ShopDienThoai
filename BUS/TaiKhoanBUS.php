<?php
class TaiKhoanBUS
{
  var $TaiKhoanDAO;

  public function __construct()
  {
    $this->TaiKhoanDAO = new TaiKhoanDAO();
  }
  
  /*public function GetAll()
  {
    return $this->LoaiSanPhamDAO->GetAll();
  }*/

  public function GetAllAvailable()
  {
    return $this->TaiKhoanDAO->GetAllAvailable();
  }

  public function GetByID($maTaiKhoan)
  {
    return $this->TaiKhoanDAO->GetByID($maTaiKhoan);
  }

  public function Insert($hoten, $username, $diachi, $matkhau)
  {
    $this->TaiKhoanDAO->Insert($hoten, $username, $diachi, $matkhau);
  }

  public function Delete($maTaiKhoan)
  {
    $taiKhoan = new TaiKhoan();
    $taiKhoan->MaTaiKhoan = $maTaiKhoan;
    $this->TaiKhoanDAO->Delete($maTaiKhoan);
  }
  public function CountRow($tenDangNhap,$matKhau)
  {
    return $this->TaiKhoanDAO->CountRow($tenDangNhap,$matKhau);
  }
  public function  GetUser($tenDangNhap)
  {
     return $this->TaiKhoanDAO->GetUser($tenDangNhap);
  }
}
?>