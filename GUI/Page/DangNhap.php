
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Form đăng nhập</title>
  <title>Font Awesome Icons</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet"type="text/css" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
  <style>
   #body-color{
     background-color: #283e54;
   } 
  #signin{
    margin-top: 103px;
    margin-bottom:150px;
    margin-right:150px;
    margin-left: 382px;
    border:3px solid #a1a1a1;
    padding:9px 35px;
    background: #27cc0063;
    width: 549px;
    border-radius:20px;
    box-shadow: 9px 9px 6px darkblue;
    height: 274px;
    }
  #button{
   border-radius: 42px;
   width: 170px;
   height:40px;
   background: #a29995;
   font-weight:bold;
   font-size:20px;
   color: rgb(228, 35, 13);
   font-family: tahoma;
   border: 3px solid #1c49de;
}
input:focus{
  background: yellow;
} 
</style>
</head>
<body id="body-color"> 
    <div id="signin"> 
     <fieldset style="width:93%,height:79%">
      <legend style="color:#e21166e3;font-weight: 900;font-family: monospace;font-size: 14px">ĐĂNG NHẬP
      </legend> 
             
       <form method="post" action="?a=exLogin" name="frmlogin" onsubmit="Checklogin()"> 
         <font style="color:#161711;font-family:cursive;font-size:19px"> UserName: </font> <br>
         <input type="text" name="us" size="30" id="txtusernamelogin"><br><br>
         <font style="color:#161711;font-family:cursive;font-size:19px"> PassWord: </font> <br>
         <input type="password" name="pass" size="30" id ="txtpasswordlogin"><br><br> 
         <input id="button" type="submit" name="dangnhap" value="Đăng nhập">
         <p style="font-size:17px; "> Chưa có Tài khoản ? <i class="far fa-thumbs-up" style="color:#6d2519"></i><a href="?a=dangky" style="color:#e0cec5; font-size:20px;text-decoration: none; "> Đăng Ký Tại Đây</a></p>
       </form> 
     </fieldset> 
   </div> 
 </body> 
</html>
