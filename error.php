<?php include 'header.php';  ?>
<br>
<script>
  function myFunction() {
    window.print();
  }
</script>
<h1>Hasil Diagnosa</h1><br>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>
<div class="container col-6">
  <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">
        <h5>KERUSAKAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5>
      </span>
    </div>
    <textarea class="form-control" style="color:red;" rows="2" readonly>Belum Diketahui</textarea>
  </div>

  <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">
        <h5>INFO KERUSAKAN&nbsp;&nbsp;&nbsp;</h5>
      </span>
    </div>
    <textarea class="form-control" style="color:red;" rows="6" readonly>
    Tidak ditemukan info terkait gejala-gejala yang anda masukkan, Karena keterbatasan data kami.
  </textarea>
  </div>

  <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">
        <h5>SOLUSI KERUSAKAN</h5>
      </span>
    </div>
    <textarea class="form-control" style="color:red;" rows="6" readonly>
    Harap lakukan pemerikasaan ke teknisi..!!
  </textarea>
  </div>
  <a type="button" class="btn btn-primary btn-lg btn-block" name="submit" href="index.php">DIAGNOSA ULANG</a>
</div>