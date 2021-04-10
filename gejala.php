<?php
include 'header.php';
?>
<?php include 'koneksi.php';
?><br>
<div class="container">
  <a href="add_gejala.php" class="btn btn-primary">Tambah Gejala</a>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Kode</th>
        <th scope="col">Gejala</th>
        <th scope="col">Aksi</th>
      </tr> 
    </thead>
    <?php
      $qry = "select * from tb_gejala ORDER BY id ASC";
      $data=mysqli_query($kon,$qry);
      while ($d=mysqli_fetch_array($data)) {
        echo "<tr>";
          echo "<td>".$d['kode']."</td>";
          echo "<td>".$d['gejala']."</td>";
          echo "<td><a href='edit_gejala.php?id=$d[id]'>Edit</a> | <a href='delete_gejala.php?id=$d[id]'>Delete</a></td></td>";
        echo "</tr>";
      }
      ?>
  </table>
</div>