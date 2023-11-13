<?php
$id=$_GET['id'];
$sql="select * from tb_anggota where id_anggota='$id'";
$query=mysqli_query($con,$sql);
$data = mysqli_fetch_array($query);
?>
<div class="page-header">
  <div class="breadcrumb-line">
    <ul class="breadcrumb">
      <li><a href="?page=anggota.index">Anggota</a></li>
      <li class="active">Edit</li>
    </ul>
  </div>
</div> 
<br>
<div class="content">

  

  <div class="panel panel-primary">
    <div class="panel-heading">
      <h5 class="panel-title"><i class="icon-sphere"></i> Form Edit</h5>
    </div>
    <div class="panel-body">
      <form class="form-horizontal" id="validation-form" name="formulir" action="?page=anggota.update" method="post" onsubmit="return validasi(this)">
        <div class="form-group">
          <label class='col-md-3'>Tanggal Pendaftaran</label>
          <div class='col-md-9'><input type="date" name="tgl_daftar" placeholder="Masukkan tanggal daftar" class="form-control" value="<?php echo $data['tgl_daftar']; ?>">
          <input type="hidden" name="id" class="form-control" value="<?php echo $data['id_anggota']; ?>">
          </div>
        </div>
         <div class="form-group">
          <label class='col-md-3'>Nama Anggota</label>
          <div class='col-md-9'><textarea class="form-control" name="nama_anggota"><?php echo $data['nama_anggota']; ?></textarea></div>
        </div>
         
        <div class="form-group">
          <label class='col-md-3'>Jenis Kelamin</label>
          <div class='col-md-9'><select type="text" name="jenis_kelamin" placeholder="Masukkan jenis kelamin" class="form-control" >
            <value="<?php echo $data['jenis_kelamin']; ?>">
            <option value="">Pilih jenis kelamin</option>
            <option value="Pria" <?php if($data['jenis_kelamin'] == 'Pria'){ echo 'selected'; } ?>>Pria</option>
            <option value="Wanita" <?php if($data['jenis_kelamin'] == 'Wanita'){ echo 'selected'; } ?>>Wanita</option>
          </select></div>
        </div>
        <div class="form-group">
          <label class='col-md-3'>Pekerjaan</label>
          <div class='col-md-9'><input type="text" name="pekerjaan" placeholder="Masukkan pekerjaan" class="form-control" value="<?php echo $data['pekerjaan']; ?>" ></div>
        </div>  
        <div class="form-group">
          <label class='col-md-3'>Email</label>
          <div class='col-md-9'><input type="text" name="email" placeholder="Masukkan email" class="form-control" value="<?php echo $data['email']; ?>" ></div>
        </div> 
        <div class="form-group">
          <label class='col-md-3'>Status Anggota</label>
          <div class='col-md-9'><select type="text" name="status_anggota" class="form-control" >
              <option value="status"> Pilih status anggota</option>
              <option value="Aktif" <?php if($data['status_anggota'] == 'Aktif'){ echo 'selected'; } ?>> Aktif</option>
              <option value="Nonaktif" <?php if($data['status_anggota'] == 'Nonaktif'){ echo 'selected'; } ?>> Nonaktif</option></select>
          </div></div>

          <label class='col-md-3'></label>
          <div class='col-md-9'>
            <button type="reset" class="btn btn-default">Reset</button>
            <button type="submit" name="submit" class="btn btn-primary"><i class="icon-checkmark-circle2"></i> Ubah</button>
          </div>
        </div>
      </form>
    </div>
    
  </div>

</div>

<script language="javascript">
  function validasi(){
    if(document.formulir.tgl_daftar.value==null | document.formulir.tgl_daftar.value==""){
      alert("Isikan tgl_daftar terlebih dahulu..!!");
      document.formulir.tgl_daftar.focus();
      return false;
    }else if(document.formulir.nama_anggota.value==null | document.formulir.nama_anggota.value==""){
      alert("Isikan nama anggota terlebih dahulu..!!");
      document.formulir.nama_anggota.focus();
      return false;
    }else if(document.formulir.jenis_kelamin.value==null | document.formulir.jenis_kelamin.value==""){
      alert("Isikan jenis kelamin terlebih dahulu..!!");
      document.formulir.jenis_kelamin.focus();
      return false;
    }else if(document.formulir.pekerjaan.value==null | document.formulir.pekerjaan.value==""){
      alert("Isikan pekerjaan terlebih dahulu..!!");
      document.formulir.pekerjaan.focus();
      return false;
    }else if(document.formulir.email.value==null | document.formulir.email.value==""){
      alert("Isikan email terlebih dahulu..!!");
      document.formulir.email.focus();
      return false;
    }else if(document.formulir.status_anggota.value==null | document.formulir.status_anggota.value==""){
        alert("Isikan status anggota Anda!!");
        document.formulir.status_anggota.focus();
        return false;
    }else if(validateEmail(document.formulir.email.value)==false){
        alert("Tolong masukkan format email yang benar !!");
        document.formulir.email.focus();
        return false;
    }


    
    
  }

  function hanyaAngka(e, decimal){
    var key;
    var keychar;
    if(window.event){
      key = window.event.keyCode;
    }else
    if(e){
      key=e.which;
    }else 
      return true;
    keychar = String.fromCharCode(key);
    if((key==null)||(key==0)|(key==8)|(key==9)|(key==13)|(key==27)){
      return true;
    }else
    if(("0123456789").indexOf(keychar)>-1){
      return true;
    }else
    if(decimal&& (keychar==".")){
      return true;
    }else return false;
  }

  function validateEmail(emailField){
    var reEmail = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;

    if(!emailField.match(reEmail)) {
      //alert("Invalid email address");
      return false;
    }

    return true;

  }
</script>
