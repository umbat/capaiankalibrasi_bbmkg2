<?php
$id=$_POST['id'];
$nama_aws=$_POST['nama_aws'];
$alamat_aws=$_POST['alamat_aws'];
$lat_aws=$_POST['lat_aws'];
$lon_aws=$_POST['lon_aws'];
$elevasi_aws=$_POST['elevasi_aws'];
$tgl_kalibrasi_aws=$_POST['tgl_kalibrasi_aws'];
$status_aws=$_POST['status_aws'];
$petugas_kalibrasi_aws=$_POST['petugas_kalibrasi_aws'];
$nama_penjaga_aws=$_POST['nama_penjaga_aws'];
$kontak_penjaga_aws=$_POST['kontak_penjaga_aws'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($nama_aws!='' or $alamat_aws!='' or $lat_aws!='' or $lon_aws!='' or $elevasi_aws!='' or $tgl_kalibrasi_aws!='' or $status_aws!='' or $petugas_kalibrasi_aws!='' or $nama_penjaga_aws!='' or $kontak_penjaga_aws!=''){
		$sql="update data_aws set nama_aws='$nama_aws',alamat_aws='$alamat_aws',lat_aws='$lat_aws',lon_aws='$lon_aws',elevasi_aws='$elevasi_aws',tgl_kalibrasi_aws='$tgl_kalibrasi_aws',status_aws='$status_aws',petugas_kalibrasi_aws='$petugas_kalibrasi_aws',nama_penjaga_aws='$nama_penjaga_aws',kontak_penjaga_aws='$kontak_penjaga_aws' where id_aws='$id'";
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
