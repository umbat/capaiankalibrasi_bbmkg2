<?php
$nama_arg=$_POST['nama_arg'];
$provinsi=$_POST['provinsi'];
$lat_arg=$_POST['lat_arg'];
$lon_arg=$_POST['lon_arg'];
$nama_penjaga_arg=$_POST['nama_penjaga_arg'];
$kontak_arg=$_POST['kontak_arg'];
$terakhir_kalibrasi_arg=$_POST['terakhir_kalibrasi_arg'];
$created_by=$_POST['created_by'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_arg!='' or $provinsi!='' or $lat_arg!='' or $lon_arg!='' or $nama_penjaga_arg!='' or $kontak_arg!='' or $terakhir_kalibrasi_arg!='' or $created_by!='' ){
		$sql="INSERT INTO data_arg(id_arg, nama_arg, provinsi, lat_arg, lon_arg, nama_penjaga_arg, kontak_arg, terakhir_kalibrasi_arg, created_by, created_at, updated_by, updated_at, petugas_kalibrasi_arg) values('','$nama_arg','$provinsi','$lat_arg','$lon_arg','$nama_penjaga_arg','$kontak_arg','$terakhir_kalibrasi_arg','$created_by','','$created_by','','$created_by')";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		$query_id = mysqli_query($con,"select * from data_arg ORDER BY id_arg DESC LIMIT 1");
		$data_id = mysqli_fetch_array($query_id);
		$id_arg = $data_id['id_arg'];

	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=arg.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=arg.tambah';</script>";


	}
