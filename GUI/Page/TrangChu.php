 <div class="tren">
      <?php
                $sanPhamBUS = new SanPhamBUS();
                $lstSanPham =$sanPhamBUS->GetAllAvailable();
                $count = 0;
                foreach($lstSanPham as $sanPhamBUS)
                {
                    if($count  < 10)
                    {
                         echo '<div class="box">
                        <img src="GUI/img/'.$sanPhamBUS->HinhURL.'">
                        <div class="pname">'.$sanPhamBUS->TenSanPham.'</div>
                        <div class="pprice">'.$sanPhamBUS->GiaSanPham.'</div>
                        <div class="action">
                        <a href="?a=chitietsanpham&chitiet='.$sanPhamBUS->MaSanPham.'">Chi tiết</a>
                        </div>
                        </div>';
                    }
                    $count ++;
                   
                }

            
               
            ?>
 </div>

<div class="duoi">
    <?php 

                 $count_s = 0;
                $sanPhamBUSS = new SanPhamBUS();
                $lst = $sanPhamBUSS->GetNgayNhap();
                 foreach ($lst as $sanPhamBUSS) {

                    if($count_s < 10)
                    {
                         echo '<div class="box">
                        <img src="GUI/img/'.$sanPhamBUSS->HinhURL.'">
                        <div class="pname">'.$sanPhamBUSS->TenSanPham.'</div>
                        <div class="pprice">'.$sanPhamBUSS->GiaSanPham.'</div>
                        <div class="action">
                        <a href="?a=chitietsanpham&chitiet='.$sanPhamBUSS->MaSanPham.'">Chi tiết</a>
                        </div>
                        </div>';
                    }
                    $count_s++;
                 }
             ?>
</div>
            