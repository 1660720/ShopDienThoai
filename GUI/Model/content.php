<!--   -->
<div id="content">      
            <?php
                $sanPhamBUS = new SanPhamBUS();
                $lstSanPham =$sanPhamBUS->GetAllAvailable();
                foreach($lstSanPham as $sanPhamBUS)
                {
                    echo '<div class="box">
                        <img src="GUI/img/'.$sanPhamBUS->HinhURL.'">
                        <div class="pname">'.$sanPhamBUS->TenSanPham.'</div>
                        <div class="pprice">'.$sanPhamBUS->GiaSanPham.'</div>
                        <div class="action">
                        <a href="#">Chi tiết</a>
                        </div>
                        </div>';
                }
            ?>
</div>