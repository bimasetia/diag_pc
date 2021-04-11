<?php include 'koneksi.php'; ?>

	<div class="container">
		<form class="col-10" method="POST" action="proses.php">
			<div style="overflow: scroll; height: 467px;">
				<h5>Pilih beberapa gejala dari kerusakan komputer anda</h5> <br>
				<?php
				$qry = "select * from tb_gejala";
				$data = mysqli_query($kon, $qry);
				while ($d = mysqli_fetch_array($data)) {
				?>
					<p>
						<label>
							<input type="checkbox" value="<?= $d['kode'] ?>" name="<?= $d['id'] ?>" />
							<span><?= $d['gejala'] ?></span>
						</label>
					</p>
				<?php
				}
				?>
			</div>
			<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="DIAGNOSA">
		</form>
	</div>
