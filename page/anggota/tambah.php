<div class="page-header">
  <div class="breadcrumb-line">
    <ul class="breadcrumb">
      <li><a href="?page=anggota.index">Data Anggota</a></li>
      <li class="active">Tambah Anggota</li>
    </ul>
  </div>
</div> 
<br>
<div class="content">

  

  <div class="panel panel-primary">
    <div class="panel-heading">
      <h5 class="panel-title"><i class="icon-sphere"></i> Form</h5>
    </div>
    <div class="panel-body">
      <form class="form-horizontal" id="validation-form" name="formulir" action="?page=anggota.simpan" method="post" onsubmit="return validasi(this)" enctype="multipart/form-data"y>
        <div class="form-group">
          <label class='col-md-3'>Tanggal Daftar</label>
          <div class='col-md-9'><input type="date" name="tgl_daftar" placeholder="Masukkan tanggal daftar" class="form-control" ></div>
        </div>
        <div class="form-group">
          <label class='col-md-3'>Nama Anggota</label>
          <div class='col-md-9'><input type="text" name="nama_anggota" placeholder="Masukkan nama anggota" class="form-control" ></div>
        </div>
        <div class="form-group">
          <label class='col-md-3'>Jenis Kelamin</label>
          <div class='col-md-9'><select type="text" name="jenis_kelamin" class="form-control" >
              <option value="status"> Pilih jenis kelamin</option>
              <option value="Pria"> Pria</option>
              <option value="Wanita"> Wanita</option></select>
          </div></div>
        
        <div class="form-group">
          <label class='col-md-3'>Pekerjaan</label>
          <div class='col-md-9'><input type="text" name="pekerjaan" placeholder="Masukkan Pekerjaan" class="form-control" ></div>
        </div>
        <div class="form-group">
          <label class='col-md-3'>Email</label>
          <div class='col-md-9'><input type="email" name="email" placeholder="Masukkan Email" class="form-control" ></div>
        </div>
        
        <div class="form-group">
          <label class='col-md-3'>Status Anggota</label>
          <div class='col-md-9'><select type="text" name="status_anggota" class="form-control" >
              <option value="status"> Pilih status anggota</option>
              <option value="Aktif"> Aktif</option>
              <option value="Nonaktif"> Nonaktif</option></select>
          </div></div>
         
        <div class="form-group">
          <label class='col-md-3'></label>
          <div class='col-md-9'>
            <button type="reset" class="btn btn-default">Reset</button>
            <button type="submit" name="submit" class="btn btn-primary"><i class="icon-checkmark-circle2"></i> Simpan</button>
          </div>
        </div>
      </form>
    </div>
    
  </div>

</div>


<script language="javascript">
  function validasi(){
    if(document.formulir.tgl_daftar.value==null | document.formulir.tgl_daftar.value==""){
      alert("Isikan Anggota terlebih dahulu..!!");
      document.formulir.tgl_daftar.focus();
      return false;
    }else if(document.formulir.nama_anggota.value==null | document.formulir.nama_anggota.value==""){
      alert("Isikan status Anggota terlebih dahulu..!!");
      document.formulir.nama_anggota.focus();
      return false;
    }else if(document.formulir.jenis_kelamin.value==null | document.formulir.jenis_kelamin.value==""){
      alert("Isikan status Anggota terlebih dahulu..!!");
      document.formulir.jenis_kelamin.focus();
      return false;
    }else if(document.formulir.pekerjaan.value==null | document.formulir.pekerjaan.value==""){
      alert("Isikan status Anggota terlebih dahulu..!!");
      document.formulir.pekerjaan.focus();
      return false;
    }else if(document.formulir.email.value==null | document.formulir.email.value==""){
      alert("Isikan status Anggota terlebih dahulu..!!");
      document.formulir.email.focus();
      return false;
    }else if(document.formulir.status_anggota.value==null | document.formulir.status_anggota.value==""){
      alert("Isikan status Anggota terlebih dahulu..!!");
      document.formulir.status_anggota.focus();
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