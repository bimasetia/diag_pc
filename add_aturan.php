<?php include 'header.php'; ?>
<?php include 'koneksi.php';
?>
<html>

<body>
	<br /><br />

	<form action="add_aturan.php" method="post" name="form1">
		<table width="25%" border="0">


			<tr>
				<td>Kerusakan</td>
				<td>
					<select name="kerusakan" id="kerusakan">
						<option disabled selected>Pilih</option>
						<?php
						$qry = "select * from tb_kerusakan";
						$data=mysqli_query($kon,$qry);
						while ($d=mysqli_fetch_array($data)) {
						?>
						<option value="<?php echo $d['kerusakan']?>"><?php echo $d['kerusakan']?></option>
						<?php
						}
						?>
					</select>
				</td>
			</tr>
			<tr>
				<td>Gejala</td>
				<td>
				<?php
	$qry="select * from tb_gejala";
	$data=mysqli_query($kon,$qry);
	while ($d=mysqli_fetch_array($data)) {
	?>
	
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<div class="input-group-text">
						<input type="checkbox" aria-label="Checkbox for following text input" value="1"
							name="<?=$d['id']?>">
					</div>
				</div>
				<input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>"
					disabled>
			</div>
			<?php
	}
	?>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="Submit" value="Add"></td>
			</tr>


		</table>
	</form>

	<?php

	// Check If form submitted, insert form data into users table.
	if (isset($_POST['Submit'])) {
		$id = $_POST['id'];
		$kerusakan = $_POST['kerusakan'];
		$kode = $_POST['kode'];

		//validasi form
		if (trim($kerusakan)=="") {	echo "Kode Kerusakan masih kosong, ulangi kembali";	}
		elseif (trim($gejala)=="") { echo "Kode Gejala masih kosong, ulangi kembali";	}

		// include database connection file
		include_once("koneksi.php");

		// Insert user data into table
		$result = mysqli_query($kon, "UPDATE `tb_rule` SET `id`='[value-1]',`G001`='[value-2]',`G002`='[value-3]',`G003`='[value-4]',`G004`='[value-5]',`G005`='[value-6]',`G006`='[value-7]',`G007`='[value-8]',`G008`='[value-9]',`G009`='[value-10]',`G010`='[value-11]',`G011`='[value-12]',`G012`='[value-13]',`G013`='[value-14]',`G014`='[value-15]',`G015`='[value-16]',`G016`='[value-17]',`G017`='[value-18]',`G018`='[value-19]',`G019`='[value-20]',`G020`='[value-21]',`G021`='[value-22]',`G022`='[value-23]',`G023`='[value-24]',`G024`='[value-25]',`G025`='[value-26]',`G026`='[value-27]',`G027`='[value-28]',`G028`='[value-29]',`G029`='[value-30]',`G030`='[value-31]',`G031`='[value-32]',`G032`='[value-33]',`G033`='[value-34]',`G034`='[value-35]',`G035`='[value-36]',`G036`='[value-37]',`G037`='[value-38]',`G038`='[value-39]',`G039`='[value-40]',`G040`='[value-41]',`G041`='[value-42]',`G042`='[value-43]',`G043`='[value-44]',`G044`='[value-45]' WHERE id=$id");




		// Show message when user added
		//echo "Aturan berhasil ditambahkan!. <a href='aturan.php'>Lihat Aturan</a>";
	}
	?>
</body>
</html>