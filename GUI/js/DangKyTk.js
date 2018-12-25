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
return true;
}