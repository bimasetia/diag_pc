<?php include 'header.php'; ?>
<html>

<body>
	<br /><br />
	<div class="row">
		<div class="container">
			<form action="add_gejala.php" method="post" name="form1" class="col s12">
				<div class="row">
					<div class="input-field col s6">
						<input id="kode" type="text" name="kode">
						<label for="kode">Kode</label>
					</div>
					<div class="input-field col s12">
						<textarea name="gejala" id="gejala" class="materialize-textarea"></textarea>
						<label for="gejala">Gejala</label>

						<input class="waves-effect waves-light btn" type="submit" name="Submit" value="Add">
					</div>
				</div>
			</form>
		</div>
	</div>
	<?php

	// Check If form submitted, insert form data into users table.
	if (isset($_POST['Submit'])) {
		$kode = $_POST['kode'];
		$gejala = $_POST['gejala'];

		// include database connection file
		include_once("koneksi.php");

		// Insert user data into table
		$result = mysqli_query($kon, "INSERT INTO tb_gejala(kode,gejala) VALUES('$kode','$gejala')");

		// Show message when user added
		echo "Gejala berhasil ditambahkan!. <a href='gejala.php'>Lihat Gejala</a>";
	}
	?>
</body>

</html>