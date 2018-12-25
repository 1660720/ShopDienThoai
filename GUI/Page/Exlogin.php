<?php 
   if(isset($_POST['dangnhap']))
   {
        $tenDangNhap = $_POST['us'];
        $matKhau =$_POST['pass'];

     if(empty($tenDangNhap) || empty($matKhau))
      {
        echo "<script>alert('Tài Khoản hoặc Mật Khẩu Trống')</script>";
        echo "<script>window.open('index.php','_self')</script>";
      }
       else
       {
            $taiKhoanBUS = new TaiKhoanBUS();
            $dem =  $taiKhoanBUS->CountRow($tenDangNhap,$matKhau);
            if($dem < 1)
            {
                 echo "<script>alert('Tài Khoản chua duoc dang ki')</script>";
              echo "<script>window.open('index.php?a=dangnhap','_self')</script>";
            }
            else
            { 
               $taiKhoanBUS = new TaiKhoanBUS();
               $taiKhoanBUS = $taiKhoanBUS->GetUser($tenDangNhap);
               if( $taiKhoanBUS->MaLoaiTaiKhoan == 1)
               {
               $_SESSION['tenUser'] = $taiKhoanBUS->TenDangNhap;
               echo "<script>alert('Đăng nhập thành công')</script>";
               echo "<script>window.open('index.php','_self')</script>";
               }
               if( $taiKhoanBUS->MaLoaiTaiKhoan == 2)
               {
               $_SESSION['tenUser'] = $taiKhoanBUS->TenDangNhap;
               echo "<script>alert('Chào mừng quản trị viên')</script>";
               echo "<script>window.open('?a=admin','_self')</script>";
               }
               
            }
        }  
   }
 ?>