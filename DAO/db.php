<?php 

 class DB
 {
 	  // var $db_host = "localhost";
 	  // var $db_username = "root";
 	  // var $db_password ="";
 	  // var $_dbName ="mobie_shop";
    public function ExecuteQuery($sql)
    {     
        $con = mysqli_connect("localhost","root","","web1") or die ("khong the ket noi");
        mysqli_set_charset($con, 'UTF8');
    	if($result = mysqli_query($con,$sql))
    	{
    	    mysqli_close($con);
    	  	return $result;
    	}
    	   // $con = mysqli_connect(host: "localhost",user: "root",password: "",database: "1660623_quanlysanpham")  or die ('can not kết nối');
    	   //  mysqli_query ($con, $sql);
    	   //  mysqli_close($con);
    	   //  return $result;
    }
 }
 ?>