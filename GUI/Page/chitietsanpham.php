    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitionnal//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html>
        <head xmlns="http://www.w3.org/1999/xhtml">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name=”viewport” content=”width=device-width, initial-scale=1.0″>
            <title>Website BabyShop</title>
            <link rel="stylesheet" Type="text/css" href="../css/style.css">
            <link rel="stylesheet"type="text/css" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <!-- -----------------use owl carousel------------------ -->
         <link rel="stylesheet" href="assets/owl.carousel.min.css">
         <link rel="stylesheet" href="assets/owl.theme.default.min.css">
            <style>
.noidung
 {
    max-width: 1010px;
    min-height: 500px;   
 }
 .content_left {
    float: left;
     margin-top: 15px;
 }
 .box1 {
   
    border: 1px solid red;
    width: 246px;
    height: 262px;
    padding: 10px;
    background: darkblue;
 }
 .box1 img {
    width: 220px!important;
 }
 .content_right {
    float: left;
    min-width: 200px;
    margin-left: 100px;
 }
 .soluot {
  font-family: tahoma;
  font-weight: none;
  margin-left: 5px;
  font-size: 17px;
  line-height: 30px;
  height: 30px;
 }
 .nut {
  margin-top: 103px;
  position: relative;
 }
 .addcart {
  position: absolute;
  color: white;
  font-size: 14px;
  border: 1px solid #e06f6f;
  background: #8ad2c2;
  width: 122px;
  height: 36px;
  padding: 5px;
  text-align: center;
  padding-top: 11px;
}

 .mua {
  position: absolute;
  color: white;
  font-size: 13px;
  border: 1px solid #e06f6f;
  background: #f99c9c;
  width: 119px;
  height: 25px;
  margin-left: 153px;
  padding: 14px;
  text-align: center;
  }
.addcart:hover {
  background: blue;
  color: red;
  font-weight: bold;
}
.mua:hover {
  background: blue;
  color: red;
  font-weight: bold;
}
.motasanpham {
  min-width: 300px;
  clear: both;
  display: inline-block;
  margin-top: 30px;
}     
.boxlq {
    width: 170px;
    height: 169px;
    float: left;
    border: 1px solid #2b0bea61;
    padding: 15px;
    border-right: none;
}
.sanphamlienquan {
  height: 300px;
}
.boxlq img {
  width: 170px;
  height: 100px;
}
.chu {
  clear: both;
  width: 200px;
  height: 100px;
 
}
.chu p:nth-child(odd) {
color:green;font-size: 15px;font-family: Arial;font-weight: 700;
padding-top: 10px;
 padding-left: 12px;
}
.chu p:nth-child(even) {
color:red;font-size: 12px;font-family: Arial;font-weight: 600;
padding-top: 0px;
 padding-left: 42px;
}
.boxlq:last-child {
border-right:5px solid #4754c361;
}
.boxlq:hover {
  background: lightblue;
}
</style>
         
           <!--  <div id="wrapper"> -->
                

              <?php 
                    if(isset($_GET['chitiet']))
                    {
                       $maSanPham = $_GET['chitiet'];
                        $sanPhamBUS = new SanPhamBUS();
                         $sanPhamBUS = $sanPhamBUS->GetByID_ChiTiet($maSanPham);
                        $img = $sanPhamBUS->AnhURL;
                       
                        $soLuotXem = $sanPhamBUS->SoLuotXem;
                        $soLuotBan = $sanPhamBUS->SoLuongBan;
                        $moTa = $sanPhamBUS->MoTa;
                        $xuatXu = $sanPhamBUS->XuatXu;
                        $gia = $sanPhamBUS->GiaSanPham;
                        $ten = $sanPhamBUS->TenSanPham;
                        $maHangSanXuat = $sanPhamBUS->MaHangSanXuat;

                        $hangSanXuatBUS = new HangSanXuatBUS();
                        $hangSanXuatBUS = $hangSanXuatBUS->GetByID_HSX($maHangSanXuat);
                        $tenHSX = $hangSanXuatBUS->TenHangSanXuat;


                        echo '  <div class="noidung">
         <div class="content_left">
         <div class="box1">
           <img src="GUI/img/'.$img.'" >
          </div> <!-- #box1 -->
          </div> <!-- #content-left -->

          <div class="content_right">   
              <p style="color: orange;font-weight: 700;font-size: 25px;font-family: Arial;height: 10px;">'.$ten.'</p>
              <p style="color:green;font-size: 23px;font-weight: 800;font-family: sans-serif;margin-left: 25px;height: 21px;"> '.$gia.'<sup>đ</sup></p>
          <div class="soluot">
               <i class="fas fa-eye"></i>&nbsp;Số lượt xem: '.$soLuotXem.' <br />
               <i class="fas fa-eye"></i>&nbsp;Số lượt bán: '.$soLuotBan.' <br />
               <i class="fas fa-align-right"></i>&nbsp; Xuất xứ: '.$xuatXu.' <br />                      
                <i class="fas fa-cannabis"></i>&nbsp; Nhà sản xuất:'.$tenHSX.'
          </div>      
          <div class="nut">
          <div class="addcart"> Thêm vào giỏ hàng </div>
          <div class="mua"> Mua </div>
          </div> <!-- #nut -->
          </div> <!-- #content-right -->     
          
        <div class="motasanpham">
          <p style="color:#a99595;font-weight: 600;font-family: tahoma;font-size: 20px">Mô tả sản phẩm</p>
          <hr/>
        <p>
           '.$moTa.'
       </p>
        </div> <!-- #motasanpham -->
          <!-- su dung owl-carousel -->
        

      </div>';

                    }
               ?> 
                
        <!-- #noidung -->
            <!-- </div> --><!--  #wrapper -->
       


 

<div class="sanphamlienquan"> <!-- 5 sp cùng loại -->
           <p style="color:#a99595;font-weight: 600;font-family: tahoma;font-size: 20px">Sản phẩm liên quan</p>
           <hr />
<!--           Hiển thị 5 danh sách sản phẩm liên quan -->
                 <?php  
    if(isset($_GET['chitiet']))
    {
       $maSanPham = $_GET['chitiet'];
       $sanPhamBUS = new SanPhamBUS();
       $sanPhamBUS = $sanPhamBUS->GetByID_ChiTiet($maSanPham);
       $maHangSanXuat = $sanPhamBUS->MaHangSanXuat;
        $sanPhamBUSS = new SanPhamBUS();
       $lst  = $sanPhamBUSS->GetHang($maHangSanXuat);
       $count = 0;
        foreach($lst as $sanPhamBUSS){
          if($count < 5)
          {
            echo '<div class="boxlq">
                  <img src="GUI/img/'.$sanPhamBUSS->AnhURL.'" >
                  <div class="chu">
                  <p>'.$sanPhamBUSS->TenSanPham.'</p>
                  <p>Giá:'.$sanPhamBUSS->GiaSanPham.'<sup>đ</sup></p>
                </div> <!-- #chu -->
                </div>';
          }
          $count++;
        }

         



    }


  ?>
        </div>  <!-- #sanphamlienquan -->