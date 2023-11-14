<?php
$id=$_POST['id'];
$nama_aaws=$_POST['nama_aaws'];
$provinsi=$_POST['provinsi'];
$lat_aaws=$_POST['lat_aaws'];
$lon_aaws=$_POST['lon_aaws'];
$nama_penjaga_aaws=$_POST['nama_penjaga_aaws'];
$kontak_aaws=$_POST['kontak_aaws'];
$terakhir_kalibrasi_aaws=$_POST['terakhir_kalibrasi_aaws'];
$created_by=$_POST['created_by'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_aaws!='' or $provinsi!='' or $lat_aaws!='' or $lon_aaws!='' or $nama_penjaga_aaws!='' or $kontak_aaws!='' or $terakhir_kalibrasi_aaws!='' or $created_by!='' ){
		$sql="update data_aaws set nama_aaws='$nama_aaws',provinsi='$provinsi',lat_aaws='$lat_aaws',lon_aaws='$lon_aaws',nama_penjaga_aaws='$nama_penjaga_aaws',kontak_aaws='$kontak_aaws',terakhir_kalibrasi_aaws='$terakhir_kalibrasi_aaws',created_by='$created_by',created_at='',updated_by='$created_by',updated_at='',petugas_kalibrasi_aaws='$created_by' where id_aaws='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=aaws.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=aaws.edit';</script>";
}
?>
