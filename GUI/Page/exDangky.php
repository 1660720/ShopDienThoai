<?php
 if(isset($_POST['submit'])) //
 {   
     $con = mysqli_connect("localhost","root","","web1") or die ("khong the ket noi");
       mysqli_set_charset($con,"utf8");
   // include_once "../../DAO/db.php" ; //from file stand 
    $hoten = mysqli_real_escape_string($con,trim($_POST['txthoten']));
  //  $ngay =  mysqli_real_escape_string($con,trim($_POST['otpngay']));
   // $thang = mysqli_real_escape_string($con,trim($_POST['otpthang']));
   // $nam =  mysqli_real_escape_string($con,trim($_POST['otpnam']));
    $diachi = mysqli_real_escape_string($con,trim($_POST['otpsongtai']));
    $username = mysqli_real_escape_string($con,trim($_POST['txtusername']));
    $matkhau = mysqli_real_escape_string($con,trim($_POST['txtpassword']));
   $xacnhan_password = mysqli_real_escape_string($con,trim($_POST['txtretypepassword']));
 } 
 ?>

 <?php
    {      
                 //kiểm tra ten dang nhap va hien thi                               
                $sql_kiemtra = "SELECT * from taikhoan where TenDangNhap='$username'";
                //thuc thi truy van
                $result_kiemtra = mysqli_query($con,$sql_kiemtra);
                $resultCheck = mysqli_num_rows($result_kiemtra);

                if(strlen($username) < 3 or strlen($username)>30)
             {
                echo "<script>alert('Tên đăng nhập phải từ 3 - 30 ký tự')</script>";
                // echo "<script>window.open('dangky.php','_self')</script>";
                 exit();
             }                
                if($matkhau!=$xacnhan_password)
                {                 
                    echo "<script>alert('Vui lòng nhập 2 mật khẩu phải giống nhau')</script>";
                    echo "<script>window.open('dangky.php','_self')</script>";
                    // exit();
                }
                  
               else 
                {
                    if($resultCheck > 0)
                    {                           
                    echo "<script>alert('Tên Đăng Ký đã Tồn Tại. Hãy dùng tên DK khác')</script>";
                    echo "<script>window.open('dangky.php','_self')</script>";
                    // exit();
                    }
                    else{
                      //  if ( $_POST['captcha1'] == $_SESSION['cap_code']) //check captcha data submit with session
                     //{
                        //$mes ='dung';         
                       // $ngaysinh = $ngay.'-'.$thang.'-'.$nam;
                        // $matkhau_mahoa = password_hash($matkhau, PASSWORD_DEFAULT);
                        //$type = '2';
                        //echo "<script>alert('Đăng ký thành công')</script>";
                        $taiKhoanBUS = new TaiKhoanBUS();
                        $taiKhoanBUS->Insert($hoten, $username, $diachi, $matkhau);
                        echo "<script>alert('Đăng ký thành công')</script>";
                       echo"<script> window.open('?a=dangnhap','_self')</script>";
                       // $sql = "INSERT into TaiKhoan(TenHienThi,TenDangNhap,DiaChi,MatKhau,BiXoa,MaLoaiTaiKhoan) values ('$hoten','$username','$diachi','$matkhau',0, 1); ";
                        //mysqli_query($con,$sql);    
                        //}
                       /* else 
                          {
                          $mes ='';
                          echo "<script>alert('Captcha ko đúng mời nhập lại!')</script>";
                         echo"<script> window.open('?a=dangky','_self')</script>";
                          }*/
                     }
                 }                                 
    }
?>