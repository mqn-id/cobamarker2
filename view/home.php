<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map1 {
        height: 104%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 94%;
        margin-top:40px;
        padding: 0;
      }
    </style>
<script type="text/javascript">
    function initMap() {
      var map1;
      var gambar = <?php
          include 'inc/dbconfig.php';
            $pilih = "SELECT * FROM client WHERE status_client='Disconnected'";
            $rata = $conn->query($pilih);
            while ($sdata = mysqli_fetch_array($rata))
            {
                $status_client = $data['status_client'];
               
                if($status_client == 'Connected'){
                  echo './assets/img/dco.png';
                }else{
                  echo './assets/img/conn.png';
                }
                
                                      
            }

            
          ?>;
      var geocoder = new google.maps.Geocoder;
      markerBaru = [];
      var styleGMaps = [
  {
    "featureType": "road.local",
    "elementType": "geometry",
    "stylers": [
      { "visibility": "on" },
      { "invert_lightness": true },
      { "gamma": 1.96 },
      { "lightness": -65 },
      { "saturation": 53 },
      { "hue": "#00e5ff" },
      { "weight": 0.2 },
      { "color": "#dd6630" }
    ]
  },{
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      { "invert_lightness": true },
      { "lightness": 33 },
      { "gamma": 0.84 },
      { "hue": "#0008ff" },
      { "visibility": "on" },
      { "saturation": 38 },
      { "weight": 2.2 },
      { "color": "#4f90f4" }
    ]
  },{
    "featureType": "road.arterial",
    "elementType": "geometry.fill",
    "stylers": [
      { "visibility": "on" },
      { "invert_lightness": true },
      { "color": "#ffb147" },
      { "saturation": 23 },
      { "hue": "#ff9100" },
      { "lightness": -30 },
      { "gamma": 4.09 },
      { "weight": 2.1 }
    ]
  },{
    "featureType": "landscape.natural",
    "elementType": "geometry.fill",
    "stylers": [
      { "visibility": "on" },
      { "lightness": -14 },
      { "color": "#5cae8e" },
      { "weight": 0.4 },
      { "saturation": 34 },
      { "gamma": 1.42 }
    ]
  }
];
      var styled = new google.maps.StyledMapType(styleGMaps,
        {name: "Styled Map"});

      var mapOptions = {
          center: {lat: -6.21462, lng: 106.84513},
          zoom:12,
          mapTypeControlOptions: {
            mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
          },
          mapTypeControl: false,
          zoomControl: false,
          scaleControl: false,
          streetViewControl: false,
          rotateControl: false,
          fullscreenControl: false
        };

        var mapAwal = {
            center: {lat: -6.21462, lng: 106.84513},
            zoom: 12 ,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map1'),mapOptions);
        map.mapTypes.set('map_style', styled);
        map.setMapTypeId('map_style');
        var infoWindow = new google.maps.InfoWindow;
        downloadUrl("./view/koordinat.php", function(data) {
          var xml = data.responseXML;
          var markers = xml.documentElement.getElementsByTagName("marker");
          for (var i = 0; i < markers.length; i++) {
            var latitude = parseFloat(markers[i].getAttribute("b"));
            var longitude = parseFloat(markers[i].getAttribute("c"));
            var nama_halte = markers[i].getAttribute("d");
            var id_koridor = markers[i].getAttribute("e");
            var image = '<img src="'+markers[i].getAttribute("f")+'" width=230px height=150px alt="FOTO"/>';


var html = "<b>Halte:</b> " + nama_halte + "</b> <br/>" ;
 var html1 = "<b>Koridor:</b> " + id_koridor +"</b> <br/>" ;
var html2 = "<b>CCTV Online: </b> <br/>" + image +"<br/>";
            var icon = gambar;
            var marker = new google.maps.Marker({
              map: map,
              position: {lat:latitude,lng:longitude},
              icon: icon,
            });
            bindInfoWindow(marker, map, infoWindow, html, html1, html2, nama_halte, id_koridor, image);
          }
        });

        document.getElementById('cariLokasi').addEventListener('click', function() {
          cariLokasi();
        });

        function cariLokasi() {
          setMapOnAll(null);
          var input = document.getElementById('cari_lokasi').value;
          var latlngStr = input.split(',', 4);
          var posisi = new google.maps.LatLng(latlngStr[2], latlngStr[3]);
          var lokasiMarker = latlngStr[0];
          geocoder.geocode({'location': posisi}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
              if (results[1]) {
                map.setCenter(posisi)
                downloadUrl("./view/koordinat_cari.php?id_client="+lokasiMarker, function(data) {
                  var xml = data.responseXML;
                  var markers = xml.documentElement.getElementsByTagName("marker");
                    var latitude = parseFloat(markers[0].getAttribute("b"));
                    var longitude = parseFloat(markers[0].getAttribute("c"));
                    var nama_halte = markers[0].getAttribute("d");
                    var id_koridor = markers[0].getAttribute("e");
                    var ip_client = markers[0].getAttribute("g");
                    var status_client = markers[0].getAttribute("h");

var html = "<b>Halte:</b> " + nama_halte + "</b> <br/>" ;
 var html1 = "<b>Koordinat:</b> " + longitude +" , "+latitude+"</b> <br/>" ;
var html2 = "<b>IP Address: </b>" + ip_client + "<br/>";
var html3 = "<b>Status Jaringan: </b>" + status_client + "<br/>";
                    var icon = './assets/img/biru.png' || {};
                    var marker = new google.maps.Marker({
                      map: map,
                      position: {lat:latitude,lng:longitude},
                      icon: icon,
                    });
                    bindInfoWindow(marker, map, infoWindow, html, html1, html2,html3);
                });
              } else {
                  window.alert('Tidak ada hasil');
                }
            } else {
              window.alert('Pencarian tidak lengkap, silahkan pilih berdasarkan data yang ditampilkannJANGAN LUPA FOLLOW : www.java-sc.com');
            }
          });
        }

      function bindInfoWindow(marker, map, infoWindow, html, html1, html2, html3,nama_halte, id_koridor, image) {
        markerBaru.push(marker);
        google.maps.event.addListener(marker, 'click', function() {
          infoWindow.setContent(html+html1+html2+html3);
          infoWindow.open(map, marker);

        });
      }

      function setMapOnAll(map) {
            for (var i = 0; i < markerBaru.length; i++) {
              markerBaru[i].setMap(map);
            }
          }

      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;


        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }
}

    function doNothing() {}
</script>
<script>
$(document).ready(function() {
    $('#cari_lokasi').autocomplete({
        source: './view/json_cari.php'
    });
    $("#refresh").click(function() {
       $("#map1").load("superadmin.php")
    });
})
</script>
 