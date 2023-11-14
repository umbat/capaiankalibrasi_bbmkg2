<?php
$id=$_GET['id'];

//jika kondisi salam tanda kurung benar, maka jalankan perinta/ sekrip di dalam kuruang kurawal
if($id!=''){
$sql="delete from data_arg where id_arg='$id'";
$query=mysqli_query($con,$sql);
	echo "<script type='text/javascript'>
		alert('Data berhasil dihapus'); 
		document.location='?page=arg.index';</script>";
}else{
	echo $nama_balai;
	echo $nama_balai." masih kosong";	
}
?>
