<?php

include("koneksi.php");

$id = $_GET['id'];

$sql= "DELETE FROM tb_penyewa where id_dvd=$id";
$query = mysqli_query($db, $sql);

$sql= "DELETE FROM tb__dvd where id_dvd=$id";
$query = mysqli_query($db, $sql);

if($query){
    header("Location:tampil.php?status=sukses");
}else{
    die("akses dilarang");  
}
?>