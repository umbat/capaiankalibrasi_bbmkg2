<?php
$id=$_POST['id'];
$nama_aws=$_POST['nama_aws'];
$provinsi=$_POST['provinsi'];
$lat_aws=$_POST['lat_aws'];
$lon_aws=$_POST['lon_aws'];
$nama_penjaga_aws=$_POST['nama_penjaga_aws'];
$kontak_aws=$_POST['kontak_aws'];
$terakhir_kalibrasi_aws=$_POST['terakhir_kalibrasi_aws'];
$created_by=$_POST['created_by'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_aws!='' or $provinsi!='' or $lat_aws!='' or $lon_aws!='' or $nama_penjaga_aws!='' or $kontak_aws!='' or $terakhir_kalibrasi_aws!='' or $created_by!='' ){
		$sql="update data_aws set nama_aws='$nama_aws',provinsi='$provinsi',lat_aws='$lat_aws',lon_aws='$lon_aws',nama_penjaga_aws='$nama_penjaga_aws',kontak_aws='$kontak_aws',terakhir_kalibrasi_aws='$terakhir_kalibrasi_aws',created_by='$created_by',created_at='',updated_by='$created_by',updated_at='',petugas_kalibrasi_aws='$created_by' where id_aws='$id'";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		
	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=aws.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=aws.edit';</script>";
}
?>
