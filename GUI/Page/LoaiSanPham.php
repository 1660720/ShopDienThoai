<?php 
 if(isset($_GET['loai']))
 {
 	$maLoaiSanPham = $_GET['loai'];
 	$sanPhamBUS = new SanPhamBUS();
 	$lst = $sanPhamBUS->GetByID_Loai($maLoaiSanPham);
 	foreach($lst as $sanPhamBUS)
 	{
 		echo '<div class="box">
                        <img src="GUI/img/'.$sanPhamBUS->AnhURL.'">
                        <div class="pname">'.$sanPhamBUS->TenSanPham.'</div>
                        <div class="pprice">'.$sanPhamBUS->GiaSanPham.'</div>
                        <div class="action">
                        <a href="?a=chitietsanpham&chitiet='.$sanPhamBUS->MaSanPham.'">Chi tiết</a>
                        </div>
                        </div>';
 	}
 }

 ?>