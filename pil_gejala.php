<?php include 'koneksi.php';?>
<center>
	<form class="col-10" method="POST" action="proses.php">
		<div style="overflow: scroll; height: 467px;">
			<h5>Pilih beberapa gejala dari kerusakan komputer anda</h5> <br>
			<?php
	$qry="select * from tb_gejala";
	$data=mysqli_query($kon,$qry);
	while ($d=mysqli_fetch_array($data)) {
	?>
	
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<div class="input-group-text">
						<input type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>"
							name="<?=$d['id']?>">
					</div>
				</div>
				<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>"
					disabled>
			</div>
			<?php
	}
	?>
		</div>
		<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="DIAGNOSA">
	</form>
</center>