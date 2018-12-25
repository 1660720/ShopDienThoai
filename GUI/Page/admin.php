<html>
<head>
  <meta charset="UTF-8">
 <link rel="stylesheet" type="text/css" href="GUI/css/Admin.css">
</head>
<body>
<div id="header">
    <a href="index.php">Hệ Thống Bán Điện Thoại Di Động</a>
</div>
<div class="admin">
    <?php
    if (isset($_SESSION['tenUser']))
    {
        echo "&nbsp;&nbsp;&nbsp;&nbsp;Hello<b> ".$_SESSION['tenUser'].'</b>&nbsp;'; 
        echo "<a href='?a=Logout'>&nbsp;&nbsp;&nbsp;&nbsp;Đăng Xuất&nbsp;&nbsp;</a>";
    } ?>
</div>
<!---->
<div class="trai">
<ul>
      <h1 class="menu">Main Menu</h1>
      <li><a href="#">Quản lý sản phẩm</a></li>
      <li><a href="#">Quản lý loại sản phẩm</a></li>
      <li><a href="#">Quản lý nhà sản xuất</a></li>
      <li><a href="#">Quản lý tài khoản người dùng</a></li>
      <li><a href="#">Quản lý đơn đặt hàng</a></li>
</ul>
</div>  
  <div class="phai">
      123456
  </div> 
  <div class="duoi">
    <p>&copy; 2018 - Design by students in IT from the University of Science</p>
  </div>
  </div>
</body>
</html>