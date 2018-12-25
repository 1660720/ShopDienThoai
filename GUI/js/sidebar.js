// ----------slider ---------------------

var KichThuoc = document.getElementsByClassName("slide")[0].clientWidth;
var ChuyenSlide = document.getElementsByClassName("chuyen-slide")[0];
var Img = ChuyenSlide.getElementsByTagName("img");
var Max = KichThuoc * Img.length;
Max -= KichThuoc;
var Chuyen = 0;
function Next()
{
	if(Chuyen < Max) Chuyen += KichThuoc;
	else Chuyen = 0;
	ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
}

function Back()
{
	if(Chuyen == 0) Chuyen = Max;
	else Chuyen -= KichThuoc;
	ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
}

function vitri(i)
{
    if(i == 5) 
    {
         Chuyen = Max;
	    ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
    }
    if( i == 4)
    {
        Chuyen = Max - KichThuoc;
        ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
    }

    if( i == 3)
    {
        Chuyen = Max - 2*KichThuoc;
        ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
    }

    if( i == 2)
    {
        Chuyen = Max - 3*KichThuoc;
        ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
    }
    if( i == 1)
    {
        Chuyen = Max - 4*KichThuoc;
        ChuyenSlide.style.marginLeft = '-' + Chuyen + 'px';
    }
	
}
// -----form đăng ký =JS -------------------------------------
function CheckSubmit() 
{
     var hoten = document.getElementById('txthoten');
     if (hoten.value=="")
     {
       Alert("Yêu cầu nhập họ tên");
           // return false;
     }
     var username =document.getElementById('txtusername');
     if (username.value =="")
     {
       Alert("Yêu cầu nhập username") ;
           // return false;
     }
     var password =document.getElementById('txtpassword');
     if (password.value =="")
     {
       Alert("Yêu cầu nhập mật khẩu ") ;
           return false;
     }
     var retypepassword =document.getElementById('txtretypepassword');
     if (retypepassword.value =="")
     {
       Alert("Yêu cầu Nhập lại mật khẩu") ;
           return false;
     }
return true;
}
 