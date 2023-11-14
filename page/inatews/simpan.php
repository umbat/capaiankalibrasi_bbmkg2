<?php
$nama_inatews=$_POST['nama_inatews'];
$provinsi=$_POST['provinsi'];
$lat_inatews=$_POST['lat_inatews'];
$lon_inatews=$_POST['lon_inatews'];
$nama_penjaga_inatews=$_POST['nama_penjaga_inatews'];
$kontak_inatews=$_POST['kontak_inatews'];
$terakhir_kalibrasi_inatews=$_POST['terakhir_kalibrasi_inatews'];
$created_by=$_POST['created_by'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_inatews!='' or $provinsi!='' or $lat_inatews!='' or $lon_inatews!='' or $nama_penjaga_inatews!='' or $kontak_inatews!='' or $terakhir_kalibrasi_inatews!='' or $created_by!='' ){
		$sql="INSERT INTO data_inatews(id_inatews, nama_inatews, provinsi, lat_inatews, lon_inatews, nama_penjaga_inatews, kontak_inatews, terakhir_kalibrasi_inatews, created_by, created_at, updated_by, updated_at, petugas_kalibrasi_inatews) values('','$nama_inatews','$provinsi','$lat_inatews','$lon_inatews','$nama_penjaga_inatews','$kontak_inatews','$terakhir_kalibrasi_inatews','$created_by','','$created_by','','$created_by')";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		$query_id = mysqli_query($con,"select * from data_inatews ORDER BY id_inatews DESC LIMIT 1");
		$data_id = mysqli_fetch_array($query_id);
		$id_inatews = $data_id['id_inatews'];

	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=inatews.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=inatews.tambah';</script>";


	}
