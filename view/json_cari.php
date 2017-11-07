<?php
include '../db/conf.php';
$konfigurasi = new konfigurasi();
if (isset($_GET['term'])) {
$getData = $konfigurasi->cariData('penanda','id_client','nama_halte', $_GET['term'],$_GET['term']);
$arr = array();
while ($data = $getData->fetch(PDO::FETCH_ASSOC)) {
    $arr[] = array(
      'label' => $data['id_client'].' - '.$data['nama_halte'],
      'value' => $data['id_client'].','.$data['nama_halte'].','.$data['latitude'].','.$data['longitude'],
    );
}
echo json_encode($arr);
}
 ?>