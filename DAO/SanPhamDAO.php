<?php 
  class SanPhamDAO extends DB
	  {
	  	public function GetAllAvailable()
	  	{
	  		$sql = "SELECT MaSanPham,TenSanPham,HinhURL,GiaSanPham,NgayNhap,SoLuongTon,SoLuongBan,SoLuocXem,MoTa,BiXoa,MaLoaiSanPham,MaHangSanXuat from SanPham order by SoLuongBan";
	  		$result = $this->ExecuteQuery($sql);
	  		$lstSanPham = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
	  			$sanPham = new SanPham();
	  			$sanPham->MaSanPham     = $row["MaSanPham"];
	  			$sanPham->TenSanPham    = $row['TenSanPham'];
	  			$sanPham->HinhURL       = $row['HinhURL'];
	  			$sanPham->GiaSanPham    = $row['GiaSanPham'];
	  			$sanPham->SoLuongBan    = $row['SoLuongBan'];
	  			$sanPham->SoLuotXem     = $row['SoLuocXem'];
	  			$sanPham->MoTa          = $row['MoTa'];
	  			$sanPham->MaLoaiSanPham = $row['MaLoaiSanPham'];
	  			$sanPham->MaHangSanXuat = $row['MaHangSanXuat'];
	  			$sanPham->NgayNhap      = $row['NgayNhap'];
	  			$sanPham->BiXoa         = $row['BiXoa'];
	  			$sanPham->SoLuongTon    = $row['SoLuongTon'];
	  			$lstSanPham[]           = $sanPham;
	  		}
	  		return $lstSanPham;
	  	}

	  	public function GetNgayNhap()
	  	{
	  		$sql = "SELECT MaSanPham,TenSanPham,HinhURL,GiaSanPham,NgayNhap,SoLuongTon,SoLuongBan,SoLuocXem,MoTa,BiXoa,MaLoaiSanPham,MaHangSanXuat from SanPham order by NgayNhap";
	  		$result = $this->ExecuteQuery($sql);
	  		$lstSanPham = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
	  			$sanPham = new SanPham();
	  			$sanPham->MaSanPham     = $row["MaSanPham"];
	  			$sanPham->TenSanPham    = $row['TenSanPham'];
	  			$sanPham->HinhURL       = $row['HinhURL'];
	  			$sanPham->GiaSanPham    = $row['GiaSanPham'];
	  			$sanPham->SoLuongBan    = $row['SoLuongBan'];
	  			$sanPham->SoLuotXem     = $row['SoLuocXem'];
	  			$sanPham->MoTa          = $row['MoTa'];
	  			$sanPham->MaLoaiSanPham = $row['MaLoaiSanPham'];
	  			$sanPham->MaHangSanXuat = $row['MaHangSanXuat'];
	  			$sanPham->NgayNhap      = $row['NgayNhap'];
	  			$sanPham->BiXoa         = $row['BiXoa'];
	  			$sanPham->SoLuongTon    = $row['SoLuongTon'];
	  			$lstSanPham[]           = $sanPham;
	  		}
	  		return $lstSanPham;
	  	}
	  	public function GetByID_ChiTiet($maSanPham) //chi Tiết Sản Phẩm
	  	{
              $sql ="SELECT MaSanPham,TenSanPham,HinhURL,GiaSanPham,NgayNhap,SoLuongTon,SoLuongBan,SoLuocXem,MoTa,BiXoa,MaLoaiSanPham,MaHangSanXuat,XuatXu from SanPham where MaSanPham = $maSanPham";
              $result = $this->ExecuteQuery($sql);
              if($result == null)
              	return null;
              $row = mysqli_fetch_array($result);
              $sanPham = new SanPham();
              $sanPham->MaSanPham        = $row['MaSanPham'];
	  			$sanPham->TenSanPham       = $row['TenSanPham'];
	  			$sanPham->AnhURL          = $row['HinhURL'];
	  			$sanPham->GiaSanPham       = $row['GiaSanPham'];
	  			$sanPham->SoLuongBan       = $row['SoLuongBan'];
	  			$sanPham->SoLuotXem      = $row['SoLuocXem'];
	  			$sanPham->MoTa             = $row['MoTa'];
	  			$sanPham->MaLoaiSanPham    = $row['MaLoaiSanPham'];
	  			$sanPham->MaHangSanXuat    =$row['MaHangSanXuat'];
	  			$sanPham->NgayNhap         = $row['NgayNhap'];
	  			$sanPham->BiXoa            = $row['BiXoa'];
	  			$sanPham->SoLuongTon       = $row['SoLuongTon'];
	  			 $sanPham->XuatXu          = $row['XuatXu'];
	  			return $sanPham;
	  	}	

	  	public function GetByID_Loai($maLoaiSanPham)
	  	{
	  		 $sql = "SELECT MaSanPham,TenSanPham,HinhURL,GiaSanPham,NgayNhap,SoLuongTon,SoLuongBan,SoLuocXem,MoTa,BiXoa,MaLoaiSanPham,MaHangSanXuat from SanPham where MaLoaiSanPham = $maLoaiSanPham";
	  		 $result = $this->ExecuteQuery($sql);
	  		$lstSanPham = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
  			 	$sanPham = new SanPham();
              	$sanPham->MaSanPham        = $row['MaSanPham'];
	  			$sanPham->TenSanPham       = $row['TenSanPham'];
	  			$sanPham->AnhURL          = $row['HinhURL'];
	  			$sanPham->GiaSanPham       = $row['GiaSanPham'];
	  			$sanPham->SoLuongBan       = $row['SoLuongBan'];
	  			$sanPham->SoLuotXem      = $row['SoLuocXem'];
	  			$sanPham->MoTa             = $row['MoTa'];
	  			$sanPham->MaLoaiSanPham    = $row['MaLoaiSanPham'];
	  			$sanPham->MaHangSanXuat    =$row['MaHangSanXuat'];
	  			$sanPham->NgayNhap         = $row['NgayNhap'];
	  			$sanPham->BiXoa            = $row['BiXoa'];
	  			$sanPham->SoLuongTon       = $row['SoLuongTon'];
	  			$lstSanPham[]           = $sanPham;
	  		}
	  		return $lstSanPham;
	  	}  	

	  	public function GetHang($maHangSanXuat)
	  	{
	  		 $sql = "SELECT MaSanPham,TenSanPham,HinhURL,GiaSanPham,NgayNhap,SoLuongTon,SoLuongBan,SoLuocXem,MoTa,BiXoa,MaLoaiSanPham,MaHangSanXuat from SanPham where MaHangSanXuat = $maHangSanXuat";
	  		 $result = $this->ExecuteQuery($sql);
	  		$lstSanPham = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
	  			 $sanPham = new SanPham();
              $sanPham->MaSanPham        = $row['MaSanPham'];
	  			$sanPham->TenSanPham       = $row['TenSanPham'];
	  			$sanPham->AnhURL          = $row['HinhURL'];
	  			$sanPham->GiaSanPham       = $row['GiaSanPham'];
	  			$sanPham->SoLuongBan       = $row['SoLuongBan'];
	  			$sanPham->SoLuotXem      = $row['SoLuocXem'];
	  			$sanPham->MoTa             = $row['MoTa'];
	  			$sanPham->MaLoaiSanPham    = $row['MaLoaiSanPham'];
	  			$sanPham->MaHangSanXuat    =$row['MaHangSanXuat'];
	  			$sanPham->NgayNhap         = $row['NgayNhap'];
	  			$sanPham->BiXoa            = $row['BiXoa'];
	  			$sanPham->SoLuongTon       = $row['SoLuongTon'];
	  			$lstSanPham[]           = $sanPham;
	  		}
	  		return $lstSanPham;
	  	}  
	  }
 ?>