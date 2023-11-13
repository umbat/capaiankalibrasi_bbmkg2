<?php
$id = $_GET['id'];
$sql = "select * from data_aaws where id_aaws='$id'";
$query = mysqli_query($con, $sql);
$data = mysqli_fetch_array($query);
?>
<div class="right_col" role="main">
  <!-- top tiles -->
  <div class="row" style="display: inline-block;">
    <div class="tile_count">
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Total AaWS</span>
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
  </div>
  <!-- /top tiles -->

  <br />
  <div class="clearfix"></div>
  <div class="row">
    <div class="col-md-12 col-sm-12 ">
      <div class="x_panel">
        <div class="x_title">
          <h2>Edit Data AaWS</h2>

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
          <form class="" action="?page=aaws.update" method="post" onsubmit="return validasi(this)">
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="nama_aaws" class="form-control" value="<?php echo $data['nama_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Alamat AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="alamat_aaws" class="form-control" value="<?php echo $data['alamat_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Latitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="lat_aaws" class="form-control" value="<?php echo $data['lat_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Longitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="lon_aaws" class="form-control" value="<?php echo $data['lon_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Elevasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="elevasi_aaws" class="form-control" value="<?php echo $data['elevasi_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Tanggal Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="tgl_kalibrasi_aaws" class="form-control" value="<?php echo $data['tgl_kalibrasi_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Status Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <select type="text" name="status_aaws" class="form-control">
                  <option value="">Pilih Status </option>
                  <option value="Terkalibrasi" <?php if ($data['status_aaws'] == 'Terkalibrasi') {
                                                  echo 'selected';
                                                } ?>>Terkalibrasi </option>
                  <option value="Belum Terkalibrasi" <?php if ($data['status_aaws'] == 'Belum Terkalibrasi') {
                                                        echo 'selected';
                                                      } ?>>Belum Terkalibrasi </option>
                </select>
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Petugas Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="petugas_kalibrasi_aaws" class="form-control" value="<?php echo $data['petugas_kalibrasi_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Penjaga AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="nama_penjaga_aaws" class="form-control" value="<?php echo $data['nama_penjaga_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">No. HP Penjaga AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input type="text" name="kontak_penjaga_aaws" class="form-control" value="<?php echo $data['kontak_penjaga_aaws']; ?>">
                <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_aaws']; ?>">
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





<script language="javascript">
  function validasi() {
    if (document.formulir.nama_balai.value == null | document.formulir.nama_balai.value == "") {
      alert("Isikan nama_balai terlebih dahulu..!!");
      document.formulir.nama_balai.focus();
      return false;
    } else if (document.formulir.alamat_balai.value == null | document.formulir.alamat_balai.value == "") {
      alert("Isikan alamat terlebih dahulu..!!");
      document.formulir.alamat_balai.focus();
      return false;
    } else if (document.formulir.status_balai.value == null | document.formulir.status_balai.value == "") {
      alert("Isikan status terlebih dahulu..!!");
      document.formulir.status_balai.focus();
      return false;
    }


  }

  function hanyaAngka(e, decimal) {
    var key;
    var keychar;
    if (window.event) {
      key = window.event.keyCode;
    } else
    if (e) {
      key = e.which;
    } else
      return true;
    keychar = String.fromCharCode(key);
    if ((key == null) || (key == 0) | (key == 8) | (key == 9) | (key == 13) | (key == 27)) {
      return true;
    } else
    if (("0123456789").indexOf(keychar) > -1) {
      return true;
    } else
    if (decimal && (keychar == ".")) {
      return true;
    } else return false;
  }

  function validateEmail(emailField) {
    var reEmail = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;

    if (!emailField.match(reEmail)) {
      //alert("Invalid email address");
      return false;
    }

    return true;

  }
</script>