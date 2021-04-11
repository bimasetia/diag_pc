<?php
include 'header.php';
?>
<?php include 'koneksi.php';
?><br>
<div class="container">
<a href="add_kerusakan.php" class="btn btn-primary">Tambah Kerusakan</a>
  <table class="table striped">
    <thead>
      <tr>
        <th scope="col">Kode</th>
        <th scope="col">Kerusakan</th>
        <th scope="col">Informasi</th>
        <th scope="col">Solusi</th>
        <th scope="col">Aksi</th>
      </tr> 
    </thead>
    <?php
      $qry = "select * from tb_kerusakan ORDER BY id ASC";
      $data=mysqli_query($kon,$qry);
      while ($d=mysqli_fetch_array($data)) {
        echo "<tr>";
          echo "<td>".$d['id']."</td>";
          echo "<td>".$d['kerusakan']."</td>";
          echo "<td>".$d['info']."</td>";
          echo "<td>".$d['solusi']."</td>";
          echo "<td><a href='edit_kerusakan.php?id=$d[id]'><i class='material-icons'>edit</i></a>  <a href='delete_kerusakan.php?id=$d[id]'><i class='material-icons'>delete</i></a></td></td>";
        echo "</tr>";
      }
      ?>
  </table>
</div>