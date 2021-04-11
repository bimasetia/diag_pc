<?php
// include database connection file
include_once("koneksi.php");
include 'header.php';
// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
	$id = $_POST['id'];

	$kode = $_POST['kode'];
	$gejala = $_POST['gejala'];

	// update user data
	$data = mysqli_query($kon, "UPDATE tb_gejala SET kode='$kode',gejala='$gejala' WHERE id=$id");

	// Redirect to homepage to display updated user in list
	header("Location: gejala.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$data = mysqli_query($kon, "SELECT * FROM tb_gejala WHERE id=$id");

while ($d = mysqli_fetch_array($data)) {
	$kode = $d['kode'];
	$gejala = $d['gejala'];
}
?>
<html>

<head>
	<title>Edit Gejala</title>
</head>

<body>
	<br /><br />
	<div class="row">
		<div class="container">
			<form name="update_user" method="post" action="edit_gejala.php">

				<div class="row">
					<div class="input-field col s6">
						<input id="kode" type="text" name="kode" value="<?php echo $kode; ?>">
						<label for="kode">Kode</label>
					</div>
					<div class="input-field col s12">
						<textarea name="gejala" id="gejala" class="materialize-textarea"><?php echo $gejala; ?></textarea>
						<label for="gejala">Gejala</label>
						<input type="hidden" name="id" value=<?php echo $_GET['id']; ?>>
						<input class="waves-effect waves-light btn" type="submit" name="update" value="Update">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>

</html>