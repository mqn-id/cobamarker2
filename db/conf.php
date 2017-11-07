 <?php
/**
* Dibuat Oleh Hady Eka Saputra || www.java-sc.com
*/
class konfigurasi {
   public function __construct() {
    try {
     $host = "localhost";
     $db = "monitoring";
     $user = "root";
     $pass = "";
     $this->db = new PDO('mysql:host='.$host.';dbname='.$db.'',''.$user.'',''.$pass.'');
     $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     // echo "Berhasil terkoneksi !";
    }
    catch (PDOException $e) {
     echo $e->getMessage();
    }
   }
public function getXMLData($tabel){
   $getXMLData = $this->db->prepare("SELECT * FROM $tabel");
   $getXMLData->execute();
   return $getXMLData;
}
public function tampil($tabel , $id_client){
   $tampil = $this->db->prepare("SELECT * FROM $tabel ORDER BY $id_client DESC");
   $tampil->execute();
   return $tampil;
}
public function tampilBerdasarkanData($tabel , $kondisi ,$id_client){
   $tampil = $this->db->prepare("SELECT * FROM $tabel WHERE $kondisi='$id_client'");
   $tampil->execute();
   return $tampil;
}
public function cariData($table , $kolom1, $kolom2 ,$value1, $value2 ){
  $cari = $this ->db->prepare("SELECT * FROM $table WHERE $kolom1 LIKE '%{$value1}%' OR $kolom2 LIKE '%{$value1}%' ");
  $cari->execute();
  return $cari;
 }

 public function tampilDataPencarianLokasi($tabel , $kolom, $value){
  $cari = $this->db->prepare("SELECT * FROM $tabel WHERE $kolom=$value");
  $cari->execute();
  return $cari;
 }
public function tambah($tabel , $latitude,$longitude,$nama_halte,$koridor,$image){
   $tambah = $this->db->prepare("INSERT INTO $tabel (id_client, latitude, longitude, nama_halte, koridor,image) VALUES (NULL,'$latitude','$longitude','$nama_halte','$koridor','image') ");
   $tambah->execute();
   return $tambah;
}
public function ubah($tabel , $latitude,$longitude,$nama_halte,$koridor,$image,$kondisi,$nilai){
   $ubah = $this->db->prepare("UPDATE $tabel SET latitude='$latitude', longitude='$longitude', nama_halte='$nama_halte', koridor='$koridor', image='$image' WHERE $kondisi='$nilai'");
   $ubah->execute();
   return $ubah;
}
public function hapus($tabel , $kondisi,$nilai){
   $hapus = $this->db->prepare("DELETE FROM $tabel WHERE $kondisi='$nilai'");
   $hapus->execute();
   return $hapus;
}
}


?>