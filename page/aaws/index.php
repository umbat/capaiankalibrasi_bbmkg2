<div class="right_col" role="main">
  <!-- top tiles -->
  <?php
  $query = mysqli_query($con, "select * from data_aaws");
  $no = 0;


  ?>
  <div class="row" style="display: inline-block;">
    <div class="tile_count">
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Total AAWS</span>
        <div class="count">
          <?php
          $data = "data_aaws";
          $sql_total = "SELECT id_aaws FROM data_aaws";
          $query_total = mysqli_query($con, $sql_total);
          $count_total = mysqli_num_rows($query_total);
          echo "$count_total <br/>"
          ?>
        </div>
        <span class="count_bottom">Site</span>
      </div>
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Terkalibrasi </span>
        <div class="count green">
          <?php
          $data_terkalibrasi = "data_aaws";
          $sql_terkalibrasi = "SELECT id_aaws FROM $data_terkalibrasi where status_aaws = 'Terkalibrasi'";
          $query_terkalibrasi = mysqli_query($con, $sql_terkalibrasi);
          $count_terkalibrasi = mysqli_num_rows($query_terkalibrasi);
          echo "$count_terkalibrasi <br/>"
          ?>
        </div>
        <span class="count_bottom"> Site</span>

      </div>
      <div class="col-md-4 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Belum Terkalibrasi </span>
        <div class="count red">
          <?php
          $data_belum_terkalibrasi = "data_aaws";
          $sql_belum_terkalibrasi = "SELECT id_aaws FROM $data_belum_terkalibrasi where status_aaws = 'Belum Terkalibrasi'";
          $query_belum_terkalibrasi = mysqli_query($con, $sql_belum_terkalibrasi);
          $count_belum_terkalibrasi = mysqli_num_rows($query_belum_terkalibrasi);
          echo "$count_belum_terkalibrasi <br/>"
          ?>
        </div>
        <span class="count_bottom"> Site</span>
      </div>
    </div>
  </div>


  <!-- /top tiles -->

  <br />
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 ">
      <div class="x_panel">
        <div class="x_title">
          <h2>Monitoring Kalibrasi AAWS </h2>

          <ul class="nav navbar-right panel_toolbox">
            <!-- <?php
                  if ($_SESSION['hak_akses'] == 1) {
                  ?>
                          <a class="btn btn-primary btn-sm float-sm-right" href="?page=aws.tambah">+ AWS</a>
                          <br>
                          <?php
                        }
                          ?> -->
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item " href="?page=aaws.tambah"><i class="fa fa-plus"></i> Tambah AAWS</a>
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
                <!-- <p class="text-muted font-13 m-b-30">
                      Untuk koreksi dapat dilakukan dengan mengedit: <code>$().DataTable();</code>
                    </p> -->
                <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                  <thead>
                    <tr>
                      <th class="column-title">No </th>
                      <th class="column-title">Nama AAWS </th>
                      <th class="column-title">Provinsi </th>
                      <th class="column-title">Lat </th>
                      <th class="column-title">Lon </th>
                      <th class="column-title">Nama Penjaga </th>
                      <th class="column-title">Kontak Penjaga </th>
                      <th class="column-title">Tanggal Kalibrasi </th>
                      <th class="column-title">Petugas Kalibrasi </th>
                      <th class="column-title no-link last"><span class="nobr">Action</span>
                      </th>
                      <th class="bulk-actions" colspan="7">
                        <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                      </th>
                    </tr>
                  </thead>

                  <tbody>
                    <?php
                    $query = mysqli_query($con, "select * from data_aaws");
                    $no = 0;
                    while ($data = mysqli_fetch_array($query)) {
                      $no++;
                      $url_edit = '?page=aaws.edit&id=' . $data['id_aaws'];
                      $url_hapus = '?page=aaws.hapus&id=' . $data['id_aaws'];
                    ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $data['nama_aaws']; ?></td>
                        <td><?php echo $data['provinsi']; ?></td>
                        <td><?php echo $data['lat_aaws']; ?></td>
                        <td><?php echo $data['lon_aaws']; ?></td>
                        <td><?php echo $data['nama_penjaga_aaws']; ?></td>
                        <td><?php echo $data['kontak_aaws']; ?></td>
                        <td><?php echo $data['terakhir_kalibrasi_aaws']; ?></td>
                        <td><?php echo $data['petugas_kalibrasi_aaws']; ?></td>
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