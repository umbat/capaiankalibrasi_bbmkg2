<?php
$tgl_daftar=$_POST['tgl_daftar'];
$nama_anggota=$_POST['nama_anggota'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$pekerjaan=$_POST['pekerjaan'];
$email=$_POST['email'];
$status_anggota=$_POST['status_anggota'];


//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($tgl_daftar!='' or $nama_anggota!='' or $jenis_kelamin!='' or $pekerjaan!='' or $email!='' or $status_anggota!='' ){
    $sql="INSERT INTO tb_anggota(id_anggota, tgl_daftar, nama_anggota, jenis_kelamin, pekerjaan, email, status_anggota) VALUES('','$tgl_daftar','$nama_anggota','$jenis_kelamin','$pekerjaan','$email','$status_anggota')";
    //die($sql);
    $query=mysqli_query($con,$sql) or die(mysqli_error());
    
  echo "<script type='text/javascript'>
    alert('Data Berhasil Disimpan'); 
    document.location='?page=anggota.index';</script>";
}else{
  echo "<script type='text/javascript'>
    alert('data ada yang masih kosong'); 
    document.location='?page=anggota.tambah';</script>";
//echo "$nama_customer,$alamat,$domisili,$telepon,$email,$pimpinan,$jabatan,$masa_pks,$tgl_pks,$masa_berlaku_pks,$status";  
//echo "data masih kosong";
}
?>