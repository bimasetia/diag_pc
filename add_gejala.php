<?php include 'header.php';?>
<html>
<body>
	<br/><br/>
 
	<form action="add_gejala.php" method="post" name="form1">
		<table width="25%" border="0">
			<tr> 
				<td>Kode</td>
				<td><input type="text" name="kode"></td>
			</tr>
			<tr> 
				<td>Gejala</td>
				<td><textarea name="gejala" id="gejala" cols="30" rows="10"></textarea></td>
			</tr>
			<tr> 
				<td></td>
				<td><input type="submit" name="Submit" value="Add"></td>
			</tr>
		</table>
	</form>
	
	<?php
 
	// Check If form submitted, insert form data into users table.
	if(isset($_POST['Submit'])) {
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