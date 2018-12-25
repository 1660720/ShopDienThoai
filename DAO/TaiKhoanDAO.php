<?php 
  class TaiKhoanDAO extends DB
	  {
	  	public function GetAllAvailable()
	  	{
	  		$sql = "SELECT MaTaiKhoan, TenDangNhap, MatKhau, TenHienThi, DiaChi, DienThoai, BiXoa, MaLoaiTaiKhoan from TaiKhoan";
	  		$result = $this->ExecuteQuery($sql);
	  		$lstTaiKhoan = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
	  			$taiKhoan = new TaiKhoan();
	  			$taiKhoan->MaLoaiTaiKhoan     = $row["MaTaiKhoan"];
	  			$taiKhoan->TenDangNhap        = $row['TenDangNhap'];
	  			$taiKhoan->MatKhau            = $row['MatKhau'];
	  			$taiKhoan->TenHienThi         = $row['TenHienThi'];
	  			$taiKhoan->DiaChi             = $row['DiaChi'];
	  			$taiKhoan->DienThoai          = $row['DienThoai'];
	  			$taiKhoan->BiXoa              = $row['BiXoa'];
	  			$taiKhoan->MaLoaiTaiKhoan     = $row['MaLoaiTaiKhoan'];
	  			$lstTaiKhoan[]                = $taiKhoan;
	  		}
	  		return $lstTaiKhoan;
	  	}
	  	public function GetByID($maTaiKhoan)
	  	{
              $sql ="SELECT MaTaiKhoan, TenDangNhap, MatKhau, TenHienThi, DiaChi, DienThoai, BiXoa, MaLoaiTaiKhoan from TaiKhoan";
              $result = $this->ExecuteQuery($sql);
              if($result == null)
              	return null;
              $row = mysqli_fetch_array($result);
                $taiKhoan = new TaiKhoan();
	  		    $taiKhoan->MaTaiKhoan     = $row["MaTaiKhoan"];
	  		    $taiKhoan->TenDangNhap        = $row['TenDangNhap'];
	  			$taiKhoan->MatKhau            = $row['MatKhau'];
	  			$taiKhoan->TenHienThi         = $row['TenHienThi'];
	  			$taiKhoan->DiaChi             = $row['DiaChi'];
	  			$taiKhoan->DienThoai          = $row['DienThoai'];
	  			$taiKhoan->BiXoa              = $row['BiXoa'];
	  			$taiKhoan->MaLoaiTaiKhoan     = $row['MaLoaiTaiKhoan'];
	  			return $taiKhoan;
          }

       public function GetUser($tenDangNhap)
	  	{
              $sql ="SELECT MaTaiKhoan, TenDangNhap, MatKhau, TenHienThi, DiaChi, DienThoai, BiXoa, MaLoaiTaiKhoan from TaiKhoan where TenDangNhap = '$tenDangNhap'";
              $result = $this->ExecuteQuery($sql);
              if($result == null)
              	return null;
              $row = mysqli_fetch_array($result);
                $taiKhoan = new TaiKhoan();
	  		    $taiKhoan->MaTaiKhoan     = $row["MaTaiKhoan"];
	  		    $taiKhoan->TenDangNhap        = $row['TenDangNhap'];
	  			$taiKhoan->MatKhau            = $row['MatKhau'];
	  			$taiKhoan->TenHienThi         = $row['TenHienThi'];
	  			$taiKhoan->DiaChi             = $row['DiaChi'];
	  			$taiKhoan->DienThoai          = $row['DienThoai'];
	  			$taiKhoan->BiXoa              = $row['BiXoa'];
	  			$taiKhoan->MaLoaiTaiKhoan     = $row['MaLoaiTaiKhoan'];
	  			return $taiKhoan;
		  }
          /** insert, delete, update */
          public function Insert($hoten, $username, $diachi, $matkhau)
          {
			  $sql =  "INSERT into TaiKhoan(TenHienThi,TenDangNhap,DiaChi,MatKhau,BiXoa,MaLoaiTaiKhoan) values ('$hoten','$username','$diachi','$matkhau',0, 1); ";
              $this->ExecuteQuery($sql);
          }

          public function Delete($maTaiKhoan)
          {
              $sql = "DELETE FROM TaiKhoan where MaTaiKhoan = $maTaiKhoan->MaTaiKhoan";
              $this->ExecuteQuery($sql);
          }
          public function CountRow($tenDangNhap,$matKhau)
          {
          	  $sql = "SELECT MaTaiKhoan, TenDangNhap, MatKhau, TenHienThi, DiaChi, DienThoai, BiXoa, MaLoaiTaiKhoan from TaiKhoan where TenDangNhap = '$tenDangNhap' and MatKhau = '$matKhau'";
          	  $result = $this->ExecuteQuery($sql);
          	  $soDong = mysqli_num_rows($result);

          	  return $soDong;
          }
	  }
 ?>