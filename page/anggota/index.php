<div class="page-header">
  <div class="breadcrumb-line">
    Data Anggota
  </div>
</div>
<br>
<div class="content">
    <?php
      if ($_SESSION['hak_akses']==1) {
    ?>
      <a class="btn btn-primary btn-sm" href="?page=anggota.tambah"><i class="icon-file-plus"></i> Tambah Anggota</a>
     <br />
     <br>
    <?php
      }
    ?>
    
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h5 class="panel-title"><i class="icon-sphere"></i> Data Anggota</h5>
      </div>
      <div class="panel-body">
       <table class="table table-bordered datatable-columns">
          <thead>
              <tr> <!--width="10%" untuk membuat lebar colom -->
                  <th>Nomor</th>
                   <th>Tanggal Daftar</th>
                   <th>Nama Anggota</th>
                   <th>Jenis Kelamin</th>
                   <th>Pekerjaan</th>
                   <th>Email</th>
                   <th>Status </th>
                  <th><center>Opsi</center></th>
                  
              </tr>
          </thead>
          <tbody>
          <?php
             $query = mysqli_query($con,"select * from tb_anggota ");
             $no = 0;
			       while ($data = mysqli_fetch_array($query)) {
          			$no++;	
          			$url_edit='?page=anggota.edit&id='.$data['id_anggota'];
                $url_hapus='?page=anggota.hapus&id='.$data['id_anggota']; 
		      ?>
                <tr>
                    <td><?php echo $no; ?></td>
                    <td><?php echo $data['tgl_daftar']; ?></td>
                    <td><?php echo $data['nama_anggota']; ?></td>
                    <td><?php echo $data['jenis_kelamin']; ?></td>
                    <td><?php echo $data['pekerjaan']; ?></td>
                    <td><?php echo $data['email']; ?></td>
                    <td><?php echo $data['status_anggota']; ?></td>
                                       
                    <td>
                    <?php
                      if ($_SESSION['hak_akses']==1) {
                    ?>
                      <center>
                        <a href="<?php echo $url_edit;?>" class="btn btn-info btn-xs" data-popup="tooltip" data-original-title="Edit Data" data-placement="top"><i class="icon-pencil5"></i></a>
                        <a href="<?php echo $url_hapus;?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data Ini');" class="btn btn-danger btn-xs tooltips" data-popup="tooltip" data-original-title="Hapus Data" data-placement="top"><i class="icon-x"></i></a>
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
