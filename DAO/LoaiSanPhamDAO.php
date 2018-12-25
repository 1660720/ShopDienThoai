<?php 
  class LoaiSanPhamDAO extends DB
	  {
	  	public function GetAllAvailable()
	  	{
	  		$sql = "SELECT MaLoaiSanPham, TenLoaiSanPham, BiXoa from LoaiSanPham ";
	  		$result = $this->ExecuteQuery($sql);
	  		$lstLoaiSanPham = array();
	  		while($row = mysqli_fetch_array($result))
	  		{
	  			$loaiSanPham = new LoaiSanPham();
	  			$loaiSanPham->MaLoaiSanPham  = $row["MaLoaiSanPham"];
	  			$loaiSanPham->TenLoaiSanPham = $row['TenLoaiSanPham'];
	  			$loaiSanPham->BiXoa          = $row['BiXoa'];
	  			$lstLoaiSanPham[]                = $loaiSanPham;
	  		}
	  		return $lstLoaiSanPham;
	  	}
	  	public function GetByID_LSP($maLoaiSanPham) 
	  	{
              $sql ="SELECT MaLoaiSanPham, TenLoaiSanPham, BiXoa where MaLoaiSanPham = $maLoaiSanPham";
              $result = $this->ExecuteQuery($sql);
              if($result == null)
              	return null;
              $row = mysqli_fetch_array($result);
              $loaiSanPham = new LoaiSanPham();
	  		  $loaiSanPham->MaLoaiSanPham  = $row["MaLoaiSanPham"];
	  		  $loaiSanPham->TenLoaiSanPham = $row['TenLoaiSanPham'];
	  		  $loaiSanPham->BiXoa          = $row['BiXoa'];
	  			return $loaiSanPham;
	  	}	  	
	  }
 ?>