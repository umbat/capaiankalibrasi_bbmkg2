<?php
$id=$_POST['id'];
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
		$sql="update data_arg set nama_arg='$nama_arg',provinsi='$provinsi',lat_arg='$lat_arg',lon_arg='$lon_arg',nama_penjaga_arg='$nama_penjaga_arg',kontak_arg='$kontak_arg',terakhir_kalibrasi_arg='$terakhir_kalibrasi_arg',created_by='$created_by',created_at='',updated_by='$created_by',updated_at='',petugas_kalibrasi_arg='$created_by' where id_arg='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=arg.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=arg.edit';</script>";
}
?>
