<div id="header">
    <table height="50px">
        <tr>
            <td class="logo">sanphamcongnghe.com</td>
            <td> 
                <input class="search" type="text" name="search" placeholder="Bạn tìm gì..." aria-label="Bạn tìm gì...">
            </td>
            <td>
                <?php include "GUI/Model/Menu.php";  ?>
            </td>
            <?php 
                if (isset($_SESSION['tenUser']))
                {
                    echo "<td><a href='?a=Logout'>ĐĂNG XUẤT&nbsp;&nbsp;</a></td>";
                    echo "<td>&nbsp;&nbsp;&nbsp;&nbsp;Hello<b> ".$_SESSION['tenUser'].'</b>&nbsp;</td>'; 
                } 
                else
                {
                    echo '<td><a href=" ?a=dangnhap">ĐĂNG NHẬP &nbsp;&nbsp;&nbsp;</a></td>
                          <td> <a href="?a=dangky">&nbsp;&nbsp;&nbsp;ĐĂNG KÝ</a></td>';
                }
        ?>        
        </tr>    
    </table>
</div> 
