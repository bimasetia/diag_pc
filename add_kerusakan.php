<?php include 'header.php'; ?>
<html>

<body>
	<br /><br />
	<div class="row">
		<div class="container">
			<form action="add_kerusakan.php" method="post" name="form1" class="col s12">
				<div class="row">
					<div class="input-field col s12">
						<textarea name="kerusakan" id="kerusakan" class="materialize-textarea"></textarea>
						<label for="kerusakan">Kerusakan</label>
					</div>
					<div class="input-field col s12">
						<textarea name="info" id="info" class="materialize-textarea"></textarea>
						<label for="info">Informasi</label>
					</div>
					<div class="input-field col s12">
						<textarea name="solusi" id="solusi" class="materialize-textarea"></textarea>
						<label for="solusi">Solusi</label>

						<input class="waves-effect waves-light btn" type="submit" name="Submit" value="Add">
					</div>
				</div>
			</form>
		</div>
	</div>
	<?php

	// Check If form submitted, insert form data into users table.
	if (isset($_POST['Submit'])) {
		$kerusakan = $_POST['kerusakan'];
		$info = $_POST['info'];
		$solusi = $_POST['solusi'];

		// include database connection file
		include_once("koneksi.php");

		// Insert user data into table
		$result = mysqli_query($kon, "INSERT INTO tb_kerusakan(kerusakan,info,solusi) VALUES('$kerusakan','$info', '$solusi')");

		// Show message when user added
		echo "Kerusakan berhasil ditambahkan!. <a href='kerusakan.php'>Lihat Kerusakan</a>";
	}
	?>
</body>

</html>