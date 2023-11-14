<?php
$id=$_POST['id'];
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
		$sql="update data_awos set nama_awos='$nama_awos',provinsi='$provinsi',lat_awos='$lat_awos',lon_awos='$lon_awos',nama_penjaga_awos='$nama_penjaga_awos',kontak_awos='$kontak_awos',terakhir_kalibrasi_awos='$terakhir_kalibrasi_awos',created_by='$created_by',created_at='',updated_by='$created_by',updated_at='',petugas_kalibrasi_awos='$created_by' where id_awos='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=awos.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=awos.edit';</script>";
}
?>
