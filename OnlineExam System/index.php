<?php
  session_start(); 
?>

<!DOCTYPE html>
<html>
<head>
  <title>User Login Page</title>
  <link rel="stylesheet" type="text/css" href="quiz.css">
</head>
<body>

  <?php
     include("header.php");
     include ("db.php");
     extract($_POST);
     if (isset($submit)) {
      $rs = mysqli_query($con, "select * from user where email = '$loginid' and password = '$pass'");
      if (mysqli_num_rows($rs) < 1) {
        $found = "N";
      }
      else {
        $_SESSION['email'] = $loginid;
      }
     }
     if (isset($_SESSION['email'])) {
      echo "<h1 class='style8' align=center><u>Wel come to Online Exam</u></h1>";
      echo '<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:center">
            <div style="padding-top:10%">
            <p class="style4"><img src="images/search.jpg" width="55" height="55" align="middle"><a href="sublist.php"> Search Subject for Quiz </a></p><br>
            <p class="style4"><img src="images/view.jpg" width="52" height="52" align="absmiddle"><a href="view.php" > View Progile </a></p><br>
            <p class="style4"><img src="images/result.jpg" width="55" height="55" align="absmiddle"><a href="result.php" > See Results </a></p>
            </div></div>';
      exit;
     }
  ?>

  <table width="100%" border="0">
    <tr>
      <td width="29%" bgcolor="#003366"><div align="center" class="style1">User Login</div></td>
      <td width="1%" rowspan="2" bgcolor="#003366"></td>
      <td width="100%" height="25">&nbsp;</td>
    </tr>
    <tr>
      
      <td align="center" valign="top">
        <form name="form1" method="post" action="">
          <p class="style2">Email ID
            <input name="loginid" type="text" id="loginid2"></p>
          <p class="style2">Password
            <input name="pass" type="password" id="pass2"></p>
            <span class="errors">
            <?php
              if (isset($found)) {
                echo "Invalid Username or Password";
              }
           ?><p>
              <input type="submit" name="submit" id="submit" value="Login"></p>
              <p><div style="font-weight: bold;">New User ? <a href="register.php">Signup Free</a></div></p>
              <p><a href="admin.php"><img src="images/admin.jpg" width="134" height="128"></a></p>
            </form>
      </td>

      <td height="296"><div align="center">
        <h1 class="style8">Welcome to Online Exam</h1>
        <span class="style5"><img src="images/i3.jpg" width="129" height="100"><span class="style7"><img src="images/i2.png" width="100" height="100"></span></span>

        <p align="left" class="style5">&nbsp;</p>
      <blockquote>
          <p align="left" style="font-weight: bold;">This Site will provide the quiz for various subjects of interest. 
            You need to login for take the online exam. If you don't have the account then create an account free to click signup free button!</span></p>
      </blockquote>
      </div></td>
    </tr>
  </table>
</body>
</html>