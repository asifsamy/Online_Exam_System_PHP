<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#000000" background="imges/blackbar.jpg">
	<tr>
		<td><img border="0" src="images/i1.jpg" width="503" height="68" align="left"></td>
	</tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" bgcolor="#000000" background="imges/blackbar.jpg">
  <tr>
    <td width="100%" align="right"><img border="0" src="images/blackbar.jpg" width="89" height="15"></td>
  </tr>
  </table>

  <table width="100%">
  <tr>
  <td>
  <?php 
  @$_SESSION['email']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	<?php
	if(isset($_SESSION['email']))
	{
	 echo "<div align=\"right\"><strong><a href=\"index.php\"> Home </a>|<a href=\"logout.php\">Signout</a></strong></div>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
	</td>
	
  </tr>
  
</table>