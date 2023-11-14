<?php
$id=$_POST['id'];
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
		$sql="update data_inatews set nama_inatews='$nama_inatews',provinsi='$provinsi',lat_inatews='$lat_inatews',lon_inatews='$lon_inatews',nama_penjaga_inatews='$nama_penjaga_inatews',kontak_inatews='$kontak_inatews',terakhir_kalibrasi_inatews='$terakhir_kalibrasi_inatews',created_by='$created_by',created_at='',updated_by='$created_by',updated_at='',petugas_kalibrasi_inatews='$created_by' where id_inatews='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=inatews.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=inatews.edit';</script>";
}
?>
