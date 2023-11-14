<div class="right_col" role="main">
  <!-- top tiles -->
  <?php
  $query = mysqli_query($con, "select * from data_inatews");
  $no = 0;
  ?>

  <!-- /Peta Mulai -->

  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 ">
      <div class="x_panel">
        <div class="x_title">
          <h2>Peta Ina-Tews </h2>

          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <!-- <a class="dropdown-item " href="?page=aws.tambah"><i class="fa fa-plus"></i> Tambah AWS</a> -->
              </div>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>

        <div class="x_content">
          <div class="row">
            <div class="col-sm-12">
              <html>

              <head>
                <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="" />
                <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js" integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew==" crossorigin=""></script>
                <style>
                  #map {
                    width: 100%;
                    height: 450px;
                  }
                </style>
              </head>

              <body>
                <div id="map"></div>
                <script>
                  var map = L.map('map', {
                    center: [-3.2035479, 109.6400543],
                    zoom: 5.5
                  });

                  // Format Icon
                  var awstes = L.icon({
                    iconUrl: 'pin.png',
                    iconSize: [30, 30]
                  });

                  <?php
                  $query = mysqli_query($con, "select * from data_inatews ");
                  while ($data = mysqli_fetch_array($query)) {
                  ?>
                    var marker = L.marker([<?php echo $data['lat_inatews']; ?>, <?php echo $data['lon_inatews']; ?>], ).bindPopup('<?php echo $data['nama_inatews']; ?>').addTo(map);
                  <?php
                  }
                  ?>
                  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                  }).addTo(map);
                </script>
              </body>

              </html>


            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Tutup Peta -->


  <!-- Tabel Mulai -->
  <br>
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 ">
      <div class="x_panel">
        <div class="x_title">
          <h2>Monitoring Kalibrasi Ina-Tews </h2>

          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item " href="?page=inatews.tambah"><i class="fa fa-plus"></i> Tambah Ina-Tews</a>
              </div>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <div class="row">
            <div class="col-sm-12">
              <div class="card-box table-responsive">
                <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                  <thead>
                    <tr>
                      <th class="column-title">No </th>
                      <th class="column-title">Nama inatews </th>
                      <th class="column-title">Provinsi </th>
                      <th class="column-title">Lon / Lat </th>
                      <th class="column-title">Tanggal Kalibrasi </th>
                      <th class="column-title">Petugas Kalibrasi (Update)</th>
                      <th class="column-title no-link last"><span class="nobr">Action</span>
                      </th>
                      <th class="bulk-actions" colspan="7">
                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                      </th>
                    </tr>
                  </thead>

                  <tbody>
                    <?php
                    $query = mysqli_query($con, "select * from data_inatews");
                    $no = 0;
                    while ($data = mysqli_fetch_array($query)) {
                      $no++;
                      $url_edit = '?page=inatews.edit&id=' . $data['id_inatews'];
                      $url_hapus = '?page=inatews.hapus&id=' . $data['id_inatews'];
                    ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $data['nama_inatews']; ?></td>
                        <td><?php echo $data['provinsi']; ?></td>
                        <td><?php echo $data['lon_inatews']; ?> / <?php echo $data['lat_inatews']; ?></td>
                        <td><?php echo $data['terakhir_kalibrasi_inatews']; ?></td>
                        <td><?php echo $data['updated_by']; ?></td>
                        <td>
                          <?php
                          if ($_SESSION['hak_akses'] == 1) {
                          ?>
                            <center>
                              <a href="<?php echo $url_edit; ?>" class="btn btn-info btn-xs" data-popup="tooltip" data-original-title="Edit Data" data-placement="top"><i class="fa fa-edit"></i></a>
                              <a href="<?php echo $url_hapus; ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data Ini');" class="btn btn-danger btn-xs tooltips" data-popup="tooltip" data-original-title="Hapus Data" data-placement="top"><i class="fa fa-trash"></i></i></a>
                            </center>
                          <?php
                          }
                          ?>
                        </td>
                      </tr>
                    <?php
                    }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>