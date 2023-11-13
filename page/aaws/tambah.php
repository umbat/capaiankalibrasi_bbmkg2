<div class="right_col" role="main">
  <!-- top tiles -->
  <div class="row" style="display: inline-block;">
    <div class="tile_count">
      <div class="col-md-3.5 col-sm-4  tile_stats_count">
        <span class="count_top"><i class="fa fa-sitemap"></i> Total AAWS</span>
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
          <h2>Tambah Data AAWS</h2>

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
          <form class="" action="?page=aaws.simpan" method="post" onsubmit="return validasi(this)">
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama AAWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" name="nama_aaws" placeholder="ex. AAWS Tebo" required="required" />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Alamat Aaws<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" class='optional' name="alamat_aaws" type="text" />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Latitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" name="lat_aaws"  required="required" type="text" />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Longitude<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="text" name="lon_aaws" required='required' />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Elevasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="text" name="elevasi_aaws" required='required' />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Tanggal Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="date" name="tgl_kalibrasi_aaws" required='required' />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Status Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
              <select type="text" name="status_aaws" class="form-control" >
              <option value="">Status Kalibrasi</option>
              <option value="Terkalibrasi"> Terkalibrasi</option>
              <option value="Belum Terkalibrasi"> Belum Terkalibrasi</option></select>
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Petugas Kalibrasi<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="text" name="petugas_kalibrasi_aaws" required='required' />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Penjaga AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="text" name="nama_penjaga_aaws" required='required' />
              </div>
            </div>
            <div class="field item form-group">
              <label class="col-form-label col-md-3 col-sm-3  label-align">No. HP Penjaga AaWS<span class="required">*</span></label>
              <div class="col-md-6 col-sm-6">
                <input class="form-control" type="text" name="kontak_penjaga_aaws" required='required' />
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



