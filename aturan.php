<?php
include 'header.php';
?>
<?php include 'koneksi.php';
?><br>
<div class="container">
  <a href="add_aturan.php" class="btn btn-primary">Tambah Aturan</a>
  <table class="table striped">
    <thead>
      <tr>
        <th scope="col">Jumlah</th>
        <th scope="col">Aksi</th>
      </tr> 
    </thead>
    <?php
      $qry = "select * from tb_rule ORDER BY id ASC";
      $data=mysqli_query($kon,$qry);
      while ($d=mysqli_fetch_array($data)) {
        echo "<tr>";
          echo "<td>".$d['id']."</td>";
          echo "<td><a href='edit_gejala.php?id=$d[id]'><i class='material-icons'>edit</i></a>  <a href='delete_gejala.php?id=$d[id]'><i class='material-icons'>delete</i></a></td></td>";
        echo "</tr>";
      }
      ?>
  </table>
</div>