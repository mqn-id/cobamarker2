<!DOCTYPE html>
<html>
<head>
	<title>Tes Jaringan</title>
</head>
<body bgcolor="#6cd6ad">
<h3><font color=#FFFFFF>Ketik IP Address client yang akan di ping:</font></h3>
<div bgcolor="#FFFFFF">
 <table border="1" bgcolor=blue margin=12px width=74%>
 <tr><td>
   <form action="" method="post">
  <input type="text" placeholder="ping ip address" value="" style= "width:253px;" name="ping_ip" />
     <input type="submit" name="ping" value="Tes Jaringan" />
     </form>
</td>
</tr>
</table>
  <?php
include '../db/koneksi.php';
  //jika tombol Cari di klik akan menjalankan script berikutnya
  if(isset($_POST['ping'])){
    //membuat variabel $kata_kunci yang menyimpan data dari inputan kata kunci
    $ping_ip = $koneksi->real_escape_string(htmlentities(trim($_POST['ping_ip'])));
      exec("ping -n 3 $ping_ip", $output, $status);
      echo "<pre>";
      print_r($output);
      echo "</pre>";
      }
  ?>
</div>
</body>
</html>