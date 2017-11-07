<?php
include '../db/conf.php';
$konfigurasi = new konfigurasi();
$getData = $konfigurasi->tampilDataPencarianLokasi('penanda','id_client',$_GET['id_client']);
header("Content-type: text/xml");
try {
 echo "<markers>";
 if ($getData->rowCount() == 1) {
    $result = $getData->fetch(PDO::FETCH_OBJ);
   echo "<marker ";
   echo "a='" . $result->id_client. "' ";
   echo "b='" . $result->latitude. "' ";
   echo "c='" . $result->longitude. "' ";
   echo "d='" . $result->nama_halte. "' ";
   echo "e='" . $result->koridor. "' ";
   echo "f='" . $result->image. "' ";
   echo "/>";
  }
 echo "</markers>";
}
catch (PDOException $e) {
 echo $e->getMessage();
}
?>