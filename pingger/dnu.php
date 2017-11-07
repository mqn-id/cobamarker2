<?php 
    $d_koridor=$conn->query("SELECT*FROM koridor WHERE pusat_client='1'")->fetch_assoc();
    $id_kt = $d_koridor['id_koridor']; // Id Kantor Daop 3
    //$id_blok = $d_blok['id_blok']; // Id Kantor Daop 3
    $name_st = $d_koridor['name_koridor']; // Nama 
    extract($d_koridor); // khusus kantor daop

                   $pantau = 1;
                      if ($pantau!=0) {
                        $ar_status = "Destination net unreachable";
                        $count_ar = count($ar_status); // array di mulai dari nol jadi hasil count di kurangi 1
                        $status_cl = $ar_status;
                            $sql = "SELECT * FROM client WHERE id_koridor='$id_kt' AND status_client='$status_cl' ORDER BY id_client ASC";
                            $hitung = $conn->query($sql)->num_rows;
                           
                            
                            echo "$status_cl ( $hitung )";
                        }
                       
                  ?> 
                  <div>
    <img src="./assets/img/loading.gif" id="loaderIcon" style="display:none" />
  </div>
                  <script type="text/javascript" src="lib/js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function() {
    $("#loaderIcon").show();
    var interval = setInterval(function() {
        $.ajax({
             url: './pingger/ping-daop3.php?id=<?php echo $id_koridor; if (isset($pn)) { echo $pn_link;}; ?>',
             success: function(data) {
                $("#loaderIcon").hide();
                $('#monitoring').html(data);
             }
        });
    }, 1000);
});
</script>