<?php
include("koneksi.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PRA UKK</title>
</head>
<body>
    <table border="10">
        <button>
            <a href="tambah.php">Tambah</a>
        </button>
    <tr>
        <td>No</td>
        <td>Nama Penyewa</td>
        <td>Alamat</td>
        <td>Genre Film</td>
        <td>Judul Film</td>
        <td>Tahun Film</td>
        <td>Tanggal Sewa</td>
        <td>Tanggal Kembali</td>
        <td>Harga</td>
        <td>Aksi</td>
    </tr>
    <?php
    include("koneksi.php");
    $query=mysqli_query($db,"SELECT * FROM tb_penyewa INNER JOIN tb__dvd ON tb_penyewa.id_dvd=tb__dvd.id_dvd");

    while($sewa=mysqli_fetch_array($query)){
        echo"<tr>";
             echo"<td>".$sewa['id_penyewa']."</td>";
             echo"<td>".$sewa['nama_penyewa']."</td>";
             echo"<td>".$sewa['alamat']."</td>";
             echo"<td>".$sewa['genre_film']."</td>";
             echo"<td>".$sewa['judul_film']."</td>";
             echo"<td>".$sewa['tahun_film']."</td>";
             echo"<td>".$sewa['tanggal_sewa']."</td>";
             echo"<td>".$sewa['tanggal_kembali']."</td>";
             echo"<td>".$sewa['harga']."</td>";
             echo"<td>";
             echo "<button><a href='edit.php?id=".$sewa['id_dvd']."'>Edit</a></button> |";
             echo "<button><a href='hapus.php?id=".$sewa['id_dvd']."'>hapus</a></button>";
            echo "</td>";
             echo"</tr>"; 
                   
    }
    ?>
    </tr>
</table>
</body>
</html>