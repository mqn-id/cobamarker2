<?php
include '../db/conf.php';
$konfigurasi = new konfigurasi();
$getData = $konfigurasi->getXMLData('penanda');
header("Content-type: text/xml");
try {
  echo "<markers>";
    while ($result = $getData->fetch(PDO::FETCH_OBJ)) {
    if ($getData->rowCount() < 1) {
     echo "<marker Data Kosong />";
    }
    else {
     echo "<marker ";
     echo "a='" . $result->id_client. "' ";
     echo "b='" . $result->latitude. "' ";
     echo "c='" . $result->longitude. "' ";
     echo "d='" . $result->nama_halte. "' ";
     echo "e='" . $result->koridor. "' ";
     echo "f='" . $result->image. "' ";
     echo "/>";
    }
   }
  echo "</markers>";
}
catch (PDOException $e) {
   echo $e->getMessage();
}


?>