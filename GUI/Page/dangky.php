<!-- <?php
  //session_start(); // Save to session when data lost
?> -->
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <title>Trang đăng ký tài khoản</title>
      
         <link rel="stylesheet"type="text/css" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
        <style>
      .styleregister {
             width: 50%;
             border: 1px solid #19eae8;
             background: #dcd4d4;
             margin: auto;
             padding-left: 7px;
     }
     input[type="submit"]{
             background: #779aa9;
             padding: 9px;
             width: 138px;
             /* text-align: center; */
             margin: auto;
             height: 50px;
             margin-bottom: 9px;
             margin-left: 23px;
             margin-top: 7px;
     }
     .tieudetk {
        color: #22cebf;
        font-size: 20px;
        background: #071007;
        padding: 14px;
        width: 382px;
        height: 17px;
        margin: auto;
        font-family: sans-serif;
        border: 1px solid red;
        text-align: center;
        margin-bottom: 4px;
     }

</style>
</head>

<body>

      <div class="tieudetk">Đăng ký Tài Khoản</div>
      <div class="styleregister">     
       <script>
            function CheckSubmit() 
 {
      var hoten = document.getElementById('txthoten');
      if (hoten.value=="")
      {
        alert("Yêu cầu nhập họ tên");
        hoten.focus();
            return false;
      }
      var username =document.getElementById('txtusername');
      if (username.value =="")
      {
        alert("Yêu cầu nhập username") ;
        username.focus();
          return false;
      }
      var password =document.getElementById('txtpassword');
      if (password.value =="")
      {
        alert("Yêu cầu nhập mật khẩu ");
            password.focus();
            return false;
      }
      var retypepassword =document.getElementById('txtretypepassword');
      if (retypepassword.value =="")
      {
        alert("Yêu cầu Nhập lại mật khẩu") ;
            retypepassword.focus();
            return false;
      }
      var captcha1 = document.getElementById('nhapcaptcha');
      if (captcha1.value =="")
      {
        alert("Yêu cầu nhập capt cha");
        return  false;
      }
    return true;
 }
       </script>  
       <form action="?a=exDangky" method="post" name="frmdangky" onsubmit="return CheckSubmit()">      
              <label for="" style="color:blue">Thông tin cá nhân</label><br>
              <label for="">Họ tên của bạn</label>
              <input id="txthoten" type="text" name="txthoten" size="30"><br><br>
              <label for="">Ngày sinh</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <select name="otpngay">
                <option value="" selected="true" name=>Ngày</option>
                <?php 
                for ($i=1;$i<=31;$i++)
                {
                ?>
                 <option value="<?php echo $i;?>"><?php echo $i;?></option>
                
                <?php } ?>
        </select>

        <select name="otpthang">
             <option value="" >Tháng</option>
             <?php 
                for ($i =1;$i<=12;$i++)
                {
             ?>
              <option value="<?php echo $i;?>"><?php echo $i;?></option>
              <?php 
            }
              ?>
     </select>

     <select name="otpnam">
            <option  >
                Năm
            </option>
        <?php
                for ($i =1900; $i <=2018; $i++) { 
        ?>
                
            <option value="<?php echo $i;?>"> <?php echo "$i"; ?></option>           
        <?php
          } 
        ?>

     </select>
     <br><br>
     <label for="">Bạn sống tại</label>&nbsp;&nbsp;&nbsp;&nbsp;
     <select name="otpsongtai" id="">
            <option value="">--Chọn thành phố--</option>
            <option value="Hà Nội">Hà nội</option>
            <option value="Hồ Chí Minh">Hồ Chí Minh </option>
            <option value="Cần Thơ">Cần Thơ City </option>
    </select> <br><br>
    <span style="color:blue">Thông tin tài khoản</span><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="">Tên đăng ký <font style="color: red">*</font></label>
    <input type="text" name="txtusername" size="20" id="txtusername"> 
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label for="">Mật khẩu <font style="color: red">*</font> </label> 
    <input type="password" name="txtpassword" size="20" id ="txtpassword">
    <br><br>
    <label for="">Xác nhận mật khẩu <font style="color: red">*</font></label>
    <input type="password" name="txtretypepassword" size="20" id ="txtretypepassword"><br>
    <br>
    <span style="color:blue">Check Mã kiểm tra</span><br>
    <label for="">Mã kiểm tra</label> <br>
    <!-- <img src="../Page/captcha.php" alt="" style=" margin-left: 20%;">-->
     <br><br>
         <!--  
                  
    <label for="">Nhập mã kiểm tra <font style="color: red">*</font></label>
    <input type="text" size="30" name="captcha1" id="nhapcaptcha" autocomplete="off"><br>-->
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <input type="submit" value="Đăng ký" size="20" name="submit">
    <p style="font-size:17px; "> Đã có Tài khoản? <i class="far fa-thumbs-up" style="color:#6d2519"></i><a href="../mLogin/frmLogin.php" style="color:red; font-size:20px;text-decoration: none; "> Đăng Nhập</a></p>
</form>
</div> <!-- #styleregister -->
</body>
</html>

