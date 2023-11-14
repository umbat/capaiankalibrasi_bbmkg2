<?php
$nama_awos=$_POST['nama_awos'];
$provinsi=$_POST['provinsi'];
$lat_awos=$_POST['lat_awos'];
$lon_awos=$_POST['lon_awos'];
$nama_penjaga_awos=$_POST['nama_penjaga_awos'];
$kontak_awos=$_POST['kontak_awos'];
$terakhir_kalibrasi_awos=$_POST['terakhir_kalibrasi_awos'];
$created_by=$_POST['created_by'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_awos!='' or $provinsi!='' or $lat_awos!='' or $lon_awos!='' or $nama_penjaga_awos!='' or $kontak_awos!='' or $terakhir_kalibrasi_awos!='' or $created_by!='' ){
		$sql="INSERT INTO data_awos(id_awos, nama_awos, provinsi, lat_awos, lon_awos, nama_penjaga_awos, kontak_awos, terakhir_kalibrasi_awos, created_by, created_at, updated_by, updated_at, petugas_kalibrasi_awos) values('','$nama_awos','$provinsi','$lat_awos','$lon_awos','$nama_penjaga_awos','$kontak_awos','$terakhir_kalibrasi_awos','$created_by','','$created_by','','$created_by')";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		$query_id = mysqli_query($con,"select * from data_awos ORDER BY id_awos DESC LIMIT 1");
		$data_id = mysqli_fetch_array($query_id);
		$id_awos = $data_id['id_awos'];

	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=awos.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=awos.tambah';</script>";


	}
