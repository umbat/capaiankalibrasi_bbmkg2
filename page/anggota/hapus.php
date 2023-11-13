<?php
$id=$_GET['id'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($id!=''){
$sql="delete from tb_anggota where id_anggota='$id'";
$query=mysqli_query($con,$sql);
	echo "<script type='text/javascript'>
		alert('Data berhasil dihapus'); 
		document.location='?page=anggota.index';</script>";
}else{
	echo $nama_anggota;
	echo $nama_anggota." masih kosong";	
}
?>
