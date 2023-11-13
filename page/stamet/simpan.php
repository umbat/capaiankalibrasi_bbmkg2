<?php
$nama_aaws=$_POST['nama_aaws'];
$alamat_aaws=$_POST['alamat_aaws'];
$lat_aaws=$_POST['lat_aaws'];
$lon_aaws=$_POST['lon_aaws'];
$elevasi_aaws=$_POST['elevasi_aaws'];
$tgl_kalibrasi_aaws=$_POST['tgl_kalibrasi_aaws'];
$status_aaws=$_POST['status_aaws'];
$petugas_kalibrasi_aaws=$_POST['petugas_kalibrasi_aaws'];
$nama_penjaga_aaws=$_POST['nama_penjaga_aaws'];
$kontak_penjaga_aaws=$_POST['kontak_penjaga_aaws'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_aaws!='' or $alamat_aaws!='' or $lat_aaws!='' or $lon_aaws!='' or $elevasi_aaws!='' or $tgl_kalibrasi_aaws!='' or $status_aaws!='' or $petugas_kalibrasi_aaws!='' or $nama_penjaga_aaws!='' or $kontak_penjaga_aaws!=''){
		$sql="INSERT INTO data_aaws(id_aaws, nama_aaws, alamat_aaws, lat_aaws, lon_aaws, elevasi_aaws, tgl_kalibrasi_aaws, status_aaws, petugas_kalibrasi_aaws, nama_penjaga_aaws, kontak_penjaga_aaws) values('','$nama_aaws','$alamat_aaws','$lat_aaws','$lon_aaws','$elevasi_aaws','$tgl_kalibrasi_aaws','$status_aaws','$petugas_kalibrasi_aaws','$nama_penjaga_aaws','$kontak_penjaga_aaws')";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		$query_id = mysqli_query($con,"select * from data_aaws ORDER BY id_aaws DESC LIMIT 1");
		$data_id = mysqli_fetch_array($query_id);
		$id_aaws = $data_id['id_aaws'];

	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=aaws.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=aaws.tambah';</script>";


	}
