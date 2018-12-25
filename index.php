<?php
session_start();
?>
<html>
<div id="wrapper">

<?php include_once "GUI/Page/require.php"?>
 <?php
 // thu vien
  $a = isset($_GET['a']) && $_GET['a']?$_GET['a']:'head';
  $path = 'GUI/Model/'.$a.'.php';
  if(file_exists($path))
  {
	  include $path;  
  }
 // header
 $a = isset($_GET['a'])&&$_GET['a']?$_GET['a']:'header';
	$path = 'GUI/Model/'.$a.'.php';
	if(file_exists($path))
	{
		include $path;
	}
//sidebar
$a = isset($_GET['a'])&&$_GET['a']?$_GET['a']:'sidebar';
$path = 'GUI/Model/'.$a.'.php';
if(file_exists($path))
{
	include $path;
}		   	  	  	
?>
 <div id="content">      
	<?php 
		$a = isset($_GET['a'])&&$_GET['a']?$_GET['a']:'TrangChu';
        $path = 'GUI/Page/'.$a.'.php';
		if(file_exists($path))
		{
		    include $path;
		}
	?> 
</div>
 <?php
  $a = isset($_GET['a'])&&$_GET['a']?$_GET['a']:'footer';
  $path = 'GUI/Model/'.$a.'.php';
  if(file_exists($path))
  {
	  include $path;   
  }
  ?>
</div>
</html>
<?php
 /* + empty: Hàm empty() trong php dùng để kiểm tra một biến nào đó có giá trị rỗng hoặc chưa được khởi tạo hay không. 
       + isset: Hàm isset() được dùng để kiểm tra một biến nào đó đã được khởi tạo trong bộ nhớ của máy tính hay chưa,
       nếu nó đã khởi tạo (tồn tại) thì sẽ trả về TRUE và ngược lại sẽ trả về FALSE.
       + session: Biến Session trong PHP được dùng để lưu trữ thông tin của người dùng 
       hoặc là lưu trữ tùy chọn cấu hình hệ thống cho người dùng
    */
?>