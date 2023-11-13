<?php
$id=$_POST['id'];
$tgl_daftar=$_POST['tgl_daftar'];
$nama_anggota=$_POST['nama_anggota'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$pekerjaan=$_POST['pekerjaan'];
$email=$_POST['email'];
$status_anggota=$_POST['status_anggota'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($tgl_daftar!='' or $nama_anggota!='' or $jenis_kelamin!='' or $pekerjaan!='' or $email!='' or $status_anggota!='' ){
		$sql="update tb_anggota set tgl_daftar='$tgl_daftar',nama_anggota='$nama_anggota',jenis_kelamin='$jenis_kelamin',pekerjaan='$pekerjaan',email='$email',status_anggota='$status_anggota'  where id_anggota='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=anggota.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=anggota.tambah';</script>";
}
?>
