<div class="col-md-12">
  <div class="row">
  <center><h3>...</h3></center><center><h4><strong>Kelola Data Lokasi Penanda Peta</strong></h4></center>
    <p class="alert alert-info col-md-10" style="position:fixed;"><span class="col-md-8"><input type="text" class="form-control" placeholder="Pencarian..." id="keyword"></span>&nbsp <button class="btn btn-warning" type="button" id="btn-search">Cari Data</button>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <a href="superadmin.php?page=kelola&aksi=tambah" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah</a>&nbsp &nbsp<a href="superadmin.php?page=home" class="btn btn-success"><i class="fa fa-arrow-left"></i> Kembali</a>
           </p>
         
  </div>
  <div class="row"></center>
    <center><h4>...</h4></center></center>
    <center><h3>...</h3></center></div>
  <div class="row">
   <?php 
    if ($_GET['page'] == 'kelola' && isset($_GET['hapus']) == 'true' && !empty($_GET['data']) ) {
     try {
      $delete = $konfigurasi->hapus('penanda','id_client',$_GET['data']);
      if ($delete) {
       echo "<script>alert('Data Lokasi Berhasil Dihapus');window.location.href = 'superadmin.php?page=kelola'</script>";
      }
     }
     catch (PDOException $e) {
      echo $e->getMessage();
     }
    }
    else if ($_GET['page'] == 'kelola' && isset($_GET['aksi']) == 'tambah' && empty($_GET['data'])) {
     if (isset($_POST['simpan'])) {
      try {
       $insert = $konfigurasi->tambah('penanda',$_POST['latitude'],$_POST['longitude'],$_POST['nama_halte'],$_POST['koridor'],$_POST['image']);
       if ($insert) {
        echo "<script>alert('Data Lokasi Berhasil Disimpan');window.location.href = 'superadmin.php?page=kelola'</script>";
       }
      }
      catch (PDOException $e) {
       echo $e->getMessage();
      }
     }
     ?>
    <script type="text/javascript">
       function updateMarkerPosition(latLng) {
            document.getElementById('latitude').value = [latLng.lat()]
            document.getElementById('longitude').value = [latLng.lng()]
        }
        function initMap(){
       var map = new google.maps.Map(document.getElementById('maps'), {
           zoom: 14,
           center: new google.maps.LatLng(0.5163256, 101.4437629),
           mapTypeId: google.maps.MapTypeId.ROADMAP,
           mapTypeControl: false,         zoomControl: true,
         scaleControl: false,
         streetViewControl: false,
         rotateControl: false,
         fullscreenControl: false
       });
       var latLng = new google.maps.LatLng(0.5163256, 101.4437629);
       var marker = new google.maps.Marker({
           position : latLng,
           title : 'lokasi',
           map : map,
           streetViewControl: false,
           draggable : true,
       });
       updateMarkerPosition(latLng);
       google.maps.event.addListener(marker, 'drag', function() {
           updateMarkerPosition(marker.getPosition());
       });
        }
        </script>
   <div class="col-md-12">
    <div class="panel panel-default">
    <div class="panel-body">
    <div class="col-md-6">
     <form class="form-horizontal" method="POST" action="">
      <div class="form-group">
       <div class="col-md-12">
        <input type="text" placeholder="Latitude" name="latitude" id="latitude" class="form-control">
       </div>
      </div>
      <div class="form-group">
       <div class="col-md-12">
        <input type="text" placeholder="Longitude" name="longitude" id="longitude" class="form-control">
       </div>
      </div>
      <div class="form-group">
       <div class="col-md-12">
       <textarea class="form-control" name="nama_halte" rows="3"></textarea>
       </div>
     </div>
      <div class="form-group">
       <div class="col-md-12">
        <select class="form-control" name="koridor">
         <option>2</option>
         <option>3</option>
         <option>4</option>
         <option>5</option>
         <option>6</option>
         <option>7</option>
         <option>8</option>
        </select>
       </div>
      </div>
      <div class="form-group">
      <div class="col-md-12">
        <input type="text" placeholder="image" name="image" id="image" class="form-control">
       </div>
      </div>
      <input type="submit" class="btn btn-success" name="simpan" value="SIMPAN">
      <a href="superadmin.php?page=kelola" class="btn btn-warning">BATAL</a>
     </form>
     </div>
     <div class="col-md-6">
      <div id="maps" style="width:100%;height:300px"></div>
     </div>
    </div>
    <?php
   }
   else if ($_GET['page'] == 'kelola' && isset($_GET['aksi']) == 'edit' && !empty($_GET['data'])) {
   $read = $konfigurasi->tampilBerdasarkanData('penanda','id_client',$_GET['data']);
   $result = $read->fetch();
   if (isset($_POST['ubah'])) {
    try {
     $update = $konfigurasi->ubah('penanda' , $_POST['latitude'],$_POST['longitude'],$_POST['nama_halte'],$_POST['koridor'],$_POST['image'],'id_client',$_GET['data']);
     if ($update) {
      echo "<script>alert('Data Lokasi Berhasil Diubah');window.location.href = 'superadmin.php?page=kelola'</script>";
     }
    }
    catch (PDOException $e) {
     echo $e->getMessage();
    }
   }
    ?>
<script type="text/javascript">
       function updateMarkerPosition(latLng) {
            document.getElementById('latitude').value = [latLng.lat()]
            document.getElementById('longitude').value = [latLng.lng()]
        }
        function initMap(){
       var map = new google.maps.Map(document.getElementById('maps'), {
           zoom: 14,
           center: new google.maps.LatLng(<?php echo $result['latitude'];?>, <?php echo $result['longitude']; ?>),
           mapTypeId: google.maps.MapTypeId.ROADMAP,
           mapTypeControl: false,
          zoomControl: true,
         scaleControl: false,
         streetViewControl: false,
         rotateControl: false,
         fullscreenControl: false
       });
       var latLng = new google.maps.LatLng(<?php echo $result['latitude'];?>, <?php echo $result['longitude']; ?>);
       var marker = new google.maps.Marker({
           position : latLng,
           title : 'lokasi',
           map : map,
           streetViewControl: false,
           draggable : true,
       });
       updateMarkerPosition(latLng);
       google.maps.event.addListener(marker, 'drag', function() {
           updateMarkerPosition(marker.getPosition());
       });
        }
        </script>
     <div class="col-md-12">
      <div class="panel panel-default">
      <div class="panel-body">
      <div class="col-md-6">
       <form class="form-horizontal" method="POST" action="">
        <div class="form-group">
         <div class="col-md-12">
          <input type="text" placeholder="Latitude" name="latitude" id="latitude" class="form-control" value="<?php echo $result['latitude']; ?>">
         </div>
        </div>
        <div class="form-group">
         <div class="col-md-12">
          <input type="text" placeholder="Longitude" name="longitude" id="longitude" class="form-control" value="<?php echo $result['longitude']; ?>">
         </div>
        </div>
        <div class="form-group">
         <div class="col-md-12">
          <textarea class="form-control" name="nama_halte" rows="3"><?php echo $result['nama_halte']; ?></textarea>
         </div>
        </div>
        <div class="form-group">
         <div class="col-md-12">
          <select class="form-control" name="koridor">
          <?php
          if ($result['koridor'] == "2") {
           echo "
           <option selected>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option>
           <option>6</option>
           <option>7</option>
           <option>8</option>
           ";
          }
          else if ($result['koridor'] == "3") {
           echo "
           <option>2</option>
           <option selected>3</option>
           <option>4</option>
           <option>5</option>
           <option>6</option>
           <option>7</option>
           <option>8</option>
          ";
          }
          if ($result['koridor'] == "4") {
           echo "
           <option>2</option>
           <option>3</option>
           <option selected>4</option>
           <option>5</option>
           <option>6</option>
           <option>7</option>
           <option>8</option>
           ";
          }
          else if ($result['koridor'] == "5") {
           echo "
            <option>2</option>
           <option>3</option>
           <option>4</option>
           <option selected>5</option>
           <option>6</option>
           <option>7</option>
           <option>8</option>
          ";
          }
          if ($result['koridor'] == "6") {
           echo "
           <option>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option>
           <option selected>6</option>
           <option>7</option>
           <option>8</option>
           ";
          }
          else if ($result['koridor'] == "7") {
           echo "
            <option>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option>
           <option>6</option>
           <option selected>7</option>
           <option>8</option>
          ";
          }
          else {
           echo "
            <option>2</option>
           <option>3</option>
           <option>4</option>
           <option>5</option>
           <option>6</option>
           <option>7</option>
           <option selected>8</option>";
         }
          ?>
          </select>
         </div>
        </div>
        <div class="form-group">
         <div class="col-md-12">
          <input type="text" placeholder="image" name="image" id="image" class="form-control" value="<?php echo $result['image']; ?>">
         </div>
        </div>
        <input type="submit" class="btn btn-success" name="ubah" value="UBAH">
        <a href="superadmin.php?page=kelola" class="btn btn-warning">BATAL</a>
       </form>
       </div>
       <div class="col-md-6">
        <div id="maps" style="width:100%;height:300px"></div>
       </div>
       </div>
      <?php
     }
    ?>
     <table id="table" class="table table-responsive table-bordered table-striped">
      <thead>
      
      </thead>
          <tbody id="view">
          <?php include "./view/view.php"; ?>
          </tbody>
        </table>
      
    </div>
</div>
