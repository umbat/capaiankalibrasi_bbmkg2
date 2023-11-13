<?php
	session_start();
 	include "../pengaturan/koneksi.php";

	$username=$_POST['username'];
	$password=md5($_POST['password']);
	
	//query untuk join antara user dengan hak akses
	$query=mysqli_query($con,"select * from user inner join hak_akses on hak_akses.id_akses=user.id_akses where username='$username' and password='$password'")or die(mysqli_error());
	$count=mysqli_num_rows($query);
			
	if ($count > 0){
		$data=mysqli_fetch_array($query);
		$_SESSION['id_user'] = $data['id_user'];
		$_SESSION['username'] = $data['username'];
		$_SESSION['hak_akses'] = $data['id_akses']; //ambil data dari field/atribut kd_akses di tabel login
		$_SESSION['nama_akses'] = $data['nama_akses']; //ambil data dari field/atribut nama_akses di tabel akses
		// $_SESSION['id_stasiun'] = $data['id_stasiun']; //ambil data dari field/atribut kd_peternak di tabel akses
		// $_SESSION['id_balai'] = $data['id_balai']; //ambil data dari field/atribut kd_peternak di tabel akses
	     
	    echo "<script type='text/javascript'>
				  document.location='index.php';</script>";
	}else {
		echo "<script type='text/javascript'>
				  alert('Username atau password Anda salah!');
				  document.location='login.php';</script>";

		

	}
				
?>