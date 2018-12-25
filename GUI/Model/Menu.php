 
<div class="nav">
<ul>
    <li>
        <a href="">ĐIỆN THOẠI</a>
            <ul>
            <?php
                $hangSanXuat    = new HangSanXuatBUS();
                $lstHangSanXuat = $hangSanXuat->GetAllAvailable();
                foreach($lstHangSanXuat as $hangSanXuatBUS)
                {
            ?>
            <li><a href="?a=HangSanXuat&hang=<?php echo $hangSanXuatBUS->MaHangSanXuat; ?>">
                <?php echo $hangSanXuatBUS->TenHangSanXuat ;?>  
            </a> 
        </a>
            <ul>
        <?php 
            $loaiSanPhamBUS = new LoaiSanPhamBUS();
            $lstLoaiSanPham =$loaiSanPhamBUS->GetAllAvailable();
            foreach($lstLoaiSanPham as $loaiSanPhamBUS)
            {
                if(substr($loaiSanPhamBUS->TenLoaiSanPham, 0, 6) == 'IPhone' && $hangSanXuatBUS ->TenHangSanXuat == 'Apple')
                    echo '<li><a href="?a=LoaiSanPham&loai='.$loaiSanPhamBUS->MaLoaiSanPham.'">'.$loaiSanPhamBUS->TenLoaiSanPham.'</a></li>';
                if(substr($loaiSanPhamBUS->TenLoaiSanPham, 0, 7) == 'Samsung' && $hangSanXuatBUS ->TenHangSanXuat == 'Samsung')
                    echo '<li><a href="?a=LoaiSanPham&loai='.$loaiSanPhamBUS->MaLoaiSanPham.'">'.$loaiSanPhamBUS->TenLoaiSanPham.'</a></li>';
                if(substr($loaiSanPhamBUS->TenLoaiSanPham, 0, 4) == 'Oppo' && $hangSanXuatBUS ->TenHangSanXuat == 'Oppo')
                    echo '<li><a href="?a=LoaiSanPham&loai='.$loaiSanPhamBUS->MaLoaiSanPham.'">'.$loaiSanPhamBUS->TenLoaiSanPham.'</a></li>';
                if(substr($loaiSanPhamBUS->TenLoaiSanPham, 0, 5) == 'Redmi' && $hangSanXuatBUS ->TenHangSanXuat == 'XiaoMi')
                    echo '<li><a href="?a
                    =LoaiSanPham&loai='.$loaiSanPhamBUS->MaLoaiSanPham.'">'.$loaiSanPhamBUS->TenLoaiSanPham.'</a></li>';
                if(substr($loaiSanPhamBUS->TenLoaiSanPham, 0, 5) == 'Nokia' && $hangSanXuatBUS ->TenHangSanXuat == 'Nokia')
                    echo '<li><a href="?a=LoaiSanPham&loai='.$loaiSanPhamBUS->MaLoaiSanPham.'">'.$loaiSanPhamBUS->TenLoaiSanPham.'</a></li>';
        ?>
        </li>  
      <?php } ?> 
        </ul> 
        <?php } ?> 
    </li>                                  
</ul>
</div>

