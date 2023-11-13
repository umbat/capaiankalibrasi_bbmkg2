<?php
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
		$sql="INSERT INTO data_aws(id_aws, nama_aws, alamat_aws, lat_aws, lon_aws, elevasi_aws, tgl_kalibrasi_aws, status_aws, petugas_kalibrasi_aws, nama_penjaga_aws, kontak_penjaga_aws) values('','$nama_aws','$alamat_aws','$lat_aws','$lon_aws','$elevasi_aws','$tgl_kalibrasi_aws','$status_aws','$petugas_kalibrasi_aws','$nama_penjaga_aws','$kontak_penjaga_aws')";
		//die($sql);
		$query=mysqli_query($con,$sql) or die(mysqli_error());
		$query_id = mysqli_query($con,"select * from data_aws ORDER BY id_aws DESC LIMIT 1");
		$data_id = mysqli_fetch_array($query_id);
		$id_aws = $data_id['id_aws'];

	echo "<script type='text/javascript'>
		alert('Data Berhasil Disimpan'); 
		document.location='?page=aws.index';</script>";
}else{
	echo "<script type='text/javascript'>
		alert('data ada yang masih kosong'); 
		document.location='?page=aws.tambah';</script>";


	}
