<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin</title>
  <style>
  .wrapper1 {

  }
    .top
    {
      background: #b5dcb3;
      width: 100%;
      height: 71px;
    }
    .top p{
      text-align: center;
      padding-top: 22px;
      font-weight: 900;
      font-size: 25px;
      color: red;
    }
    .trai {
      float: left;
      width: 20%;
    }
    .trai ul{
      background: #aaa;
      margin: 0;
      padding: 0;     
      height: 400px;
    }
    .trai ul li {
      height: 44px;
      line-height: 44px;
      border-bottom: 1px solid red;
      background: #c6d3dc;      
    }
    .trai ul li a
    {
      text-decoration: none;
      font-size: 17px;
      color: black;
      display: block;

    }
    .trai a:hover{
      background: black;
    }
        li:nth-child(2){
          border-top: 1px solid red;
        } 
        .phai {
          float: right;
        background: #af9e74;
        width: 80%;
        height: 400px;
        margin-top: 1%;
        display: inline-block;
        }
    .but {
      /* text-align: right; */
    margin-top: -2%;
    /* clear: both; */
    margin-left: 70%;
    }
        .duoi {
        
          background: #bdb1a4;
        width: 100%;
        height: 40px;
        text-align: center;
        padding: 10px 0px;
        margin-top: 1%;
        }
  </style>
</head>
<body>
  <div class="wrapper1">
  <div class="top">
    <p>Chào mừng bạn đến trang quản trị viên</p>
  </div>
  <div class="trai">
    <ul>
      <h1 style="text-align: center;font-size: 20px;font-weight: bold;color:green;padding-top: 10px ">Main Menu</h1>
      <li><a href="#">Quản lý sản phẩm</a></li>
      <li><a href="#">Quản lý loại sản phẩm</a></li>
      <li><a href="#">Quản lý nhà sản xuất</a></li>
      <li><a href="#">Quản lý tài khoản người dùng</a></li>
      <li><a href="#">Quản lý đơn đặt hàng</a></li>
    </ul>
  </div> <!-- #trai -->
  <div class="phai">
    <table border="1" style="">
      <thead >
        <td width="100px" >STT</td>
        <td width="200px">Mã Sản Phẩm</td>
        <td width="200px">Tên Sản Phẩm</td>
        <td width="200px">Hinh URL</td>   
      </thead>
      <tr>
        <td>1</td>
        <td>ABCXY</td>
        <td>IPhone</td>
        <td>IPhone 1</td>
      </tr> 
    </table>
    <div class="but">
      <button>Thêm</button>
      <button>Sửa</button>
      <button>Xóa</button>
    </div>
  </div> <!-- #phai -->
  <div class="clear" style="clear: both;"></div>
  <div class="duoi">
    <p>QuanTriVienShopOnline_DoAnWeb1</p>
  </div>
  </div> <!-- #wrppaer1 -->
</body>
</html>