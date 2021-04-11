<?php include 'header.php';  ?>
<br>
<script>
  function myFunction() {
    window.print();
  }
</script>

<div class="container">
  <h4>Hasil Diagnosa</h4>
</div>
<div class="container col-6">
<button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
  <div class="row">
    <div class="col s12 ">
      <div class="card blue ">
        <div class="card-content white-text">
          <span class="card-title"><b> KERUSAKAN</b></span>
          <p><?php echo "$kerusakan"; ?></p>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col s12 ">
      <div class="card blue-grey ">
        <div class="card-content white-text">
          <span class="card-title"><b>INFO KERUSAKAN</b></span>
          <p><?php echo "$info"; ?></p>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col s12 ">
      <div class="card green ">
        <div class="card-content white-text">
          <span class="card-title"><b>SOLUSI</b></span>
          <p><?php echo "$solusi"; ?></p>
        </div>
      </div>
    </div>
  </div>

  <a type="button" class="btn btn-primary btn-lg btn-block" name="submit" href="index.php">DIAGNOSA ULANG</a>

</div>