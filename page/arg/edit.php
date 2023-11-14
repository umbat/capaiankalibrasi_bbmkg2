<?php
$id = $_GET['id'];
$sql = "select * from data_arg where id_arg='$id'";
$query = mysqli_query($con, $sql);
$data = mysqli_fetch_array($query);
?>
<div class="right_col" role="main">
  <!-- top tiles -->
  <!-- <div class="row" style="display: inline-block;">
    <div class="tile_count">
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Total AWS</span>
        <div class="count">2500</div>
        <span class="count_bottom">Site</span>
      </div>
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Terkalibrasi </span>
        <div class="count green">123</div>
        <span class="count_bottom"> Site</span>

      </div>
      <div class="col-md-4.9 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Belum Terkalibrasi </span>
        <div class="count red">250</div>
        <span class="count_bottom"> Site</span>
      </div>
    </div>
  </div> -->
  <!-- /top tiles -->

  <br />
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 ">
      <div class="x_panel">
        <div class="x_title">
          <h2>Edit Data AWS</h2>

          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>

            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <form class="" action="?page=arg.update" method="post" onsubmit="return validasi(this)">
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama AWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="nama_arg" class="form-control" value="<?php echo $data['nama_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Provinsi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="provinsi" class="form-control" value="<?php echo $data['provinsi']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Latitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="lat_arg" class="form-control" value="<?php echo $data['lat_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Longitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="lon_arg" class="form-control" value="<?php echo $data['lon_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Penjaga arg<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="nama_penjaga_arg" class="form-control" value="<?php echo $data['nama_penjaga_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Kontak Penjaga<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="kontak_arg" class="form-control" value="<?php echo $data['kontak_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Terakhir Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="date" name="terakhir_kalibrasi_arg" class="form-control" value="<?php echo $data['terakhir_kalibrasi_arg']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_arg']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Petugas Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <select type="text" name="created_by" class="form-control">
                  <?php
                  $sql = "SELECT * FROM user";
                  $query = mysqli_query($con, $sql);
                  while ($data = mysqli_fetch_array($query)) {
                  ?>
                    <option value="<?php echo $data['nama']; ?>"><?php echo $data['nama']; ?> </option>
                  <?php
                  } // scrip php dan sql tidak bisa disatukan
                  ?>
                </select>
              </div>
            </div>
            
            <div class="ln_solid">
              <div class="form-group">
                <div class="col-md-6 offset-md-3">
                  <button type='submit' class="btn btn-primary"><i class="fa fa-download"></i> Submit</button>
                  <button type='reset' class="btn btn-success">Reset</button>
                </div>
              </div>
            </div>
          </form>
          </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>



