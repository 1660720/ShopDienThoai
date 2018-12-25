<?php 
session_start();//tạo session lưu trữ dữ liệu tạm thời sẽ 9dc lưu trên server khác với cookie -> client
$ranStr=md5(microtime());//lấy chuỗi rồi mã hóa md5
$ranStr=substr($ranStr,0,6);// cắt chuỗi  llấy 6 kí tự từ location 0
$_SESSION['cap_code'] =$ranStr; //lưu Zzô session
$newImage = imagecreatefromjpeg("../img/anhnencapcha.jpg");//tạo một đối tượng ảnh từ tập tin 
 $txtCoLor=imagecolorallocate($newImage, 0, 0, 0); //thêm màu cho ảnh
 imagestring($newImage,5,5,5,$ranStr,$txtCoLor); //vẽ văn bản cho ảnh
 header("content-type:/jpg");//xuất định dạng là ảnh
 imagejpeg($newImage);// xuất và hiển thị ảnh như 1 tập tin
 
 ?>