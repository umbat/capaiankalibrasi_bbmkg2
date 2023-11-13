<?php
function kdauto($tabel, $inisial){
	$struktur	= mysqli_query("SELECT * FROM $tabel");
	$field		= mysqli_field_name($struktur,0);
	$panjang	= mysqli_field_len($struktur,0);

 	$qry	= mysqli_query("SELECT max(".$field.") FROM ".$tabel);
 	$row	= mysqli_fetch_array($qry); 
 	if ($row[0]=="") {
 		$angka=0;
	}
 	else {
 		$angka		= substr($row[0], strlen($inisial));
 	}
	
 	$angka++;
 	$angka	=strval($angka); 
 	$tmp	="";
 	for($i=1; $i<=($panjang-strlen($inisial)-strlen($angka)); $i++) {
		$tmp=$tmp."0";	
	}
 	return $inisial.$tmp.$angka;
}

function unik_id_lama($tab_unik,$att_unik,$stamp_unik, $jum_unik=''){

 $tabel_unik=$tab_unik;
 $attribut_unik=$att_unik;
 $stampel_unik=$stamp_unik;
 $jum_kode=strlen($stampel_unik);
 $jum_digit=$jum_unik+1;
 
 
// syntax format angka 2 adalah jum_unik sedangkan -1 adalah len($stamp_unik)  
$query = "SELECT MAX( CAST( SUBSTRING( $attribut_unik, $jum_kode, $jum_digit ) AS UNSIGNED ) ) AS maxID FROM $tab_unik WHERE $attribut_unik LIKE '$stampel_unik%'";
//die($query);
//$query = "SELECT max($attribut_unik) as maxID FROM $tabel_unik WHERE $attribut_unik LIKE '$stampel_unik%'";

//die($query);
$hasil = mysqli_query($query);
$data  = mysqli_fetch_array($hasil);
$idMax = $data['maxID'];
 
$noUrut = $idMax;
 
 
$noUrut++;
if($jum_unik!=''){
	$nol="%0".$jum_unik.'s';
	$newID = $stampel_unik .sprintf($nol, $noUrut);
}
else{
	//$nol="%03s";
	$newID = $stampel_unik . $noUrut;
}
 

 

return $newID;
}

function unik_id($con, $tab_unik,$att_unik,$stamp_unik, $jum_unik=''){

 $tabel_unik=$tab_unik;
 $attribut_unik=$att_unik;
 $stampel_unik=$stamp_unik;
 $jum_kode=strlen($stampel_unik);
 
 
// format V2012
 
$query = "SELECT max($attribut_unik) as maxID FROM $tabel_unik WHERE $attribut_unik LIKE '$stampel_unik%'";
// die($query);
 
$hasil = mysqli_query($con,$query);
$data  = mysqli_fetch_array($hasil);
$idMax = $data['maxID'];
 
 
//$noUrut = (int) substr($idMax, $jum_kode, strlen($idMax)-$jum_kode);
$noUrut = (int) substr($idMax, $jum_kode, $jum_unik);
//echo "$noUrut $jum_kode, $jum_unik";
//die($noUrut);
 
 
$noUrut++;
if($jum_unik!=''){
	$nol="%0".$jum_unik.'s';
	$newID = $stampel_unik .sprintf($nol, $noUrut);
}
else{
	//$nol="%03s";
	$newID = $stampel_unik . $noUrut;
}
 

 

return $newID;
}

?>