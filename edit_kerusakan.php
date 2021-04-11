<?php
// include database connection file
include_once("koneksi.php");
include 'header.php';
// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
	$id = $_POST['id'];
	$kerusakan = $_POST['kerusakan'];
	$info = $_POST['info'];
	$solusi = $_POST['solusi'];

	// update user data
	$data = mysqli_query($kon, "UPDATE tb_kerusakan SET kerusakan='$kerusakan',info='$info', solusi='$solusi' WHERE id=$id");

	// Redirect to homepage to display updated user in list
	header("Location: kerusakan.php");
}
?>
<?php
// Display selected user data based on id
// Getting id from url
$id = $_GET['id'];

// Fetech user data based on id
$data = mysqli_query($kon, "SELECT * FROM tb_kerusakan WHERE id=$id");

while ($d = mysqli_fetch_array($data)) {
	$kerusakan = $d['kerusakan'];
	$info = $d['info'];
	$solusi = $d['solusi'];
}
?>
<html>

<head>
	<title>Edit Kerusakan</title>
</head>

<body>
	<br /><br />
	<div class="row">
		<div class="container">
			<form name="update_kerusakan" method="post" action="edit_kerusakan.php">

				<div class="row">
					<div class="input-field col s12">
						<textarea name="kerusakan" id="kerusakan" class="materialize-textarea"><?php echo $kerusakan; ?></textarea>
						<label for="kerusakan">Kerusakan</label>
					</div>
					<div class="input-field col s12">
						<textarea name="info" id="info" class="materialize-textarea"><?php echo $info; ?></textarea>
						<label for="info">Informasi</label>
					</div>
					<div class="input-field col s12">
						<textarea name="solusi" id="solusi" class="materialize-textarea"><?php echo $solusi; ?></textarea>
						<label for="solusi">Solusi</label>
						<input type="hidden" name="id" value=<?php echo $_GET['id']; ?>>
						<input class="waves-effect waves-light btn" type="submit" name="update" value="Update">
					</div>
				</div>
				<!-- <table border="0">
			<tr> 
				<td>Kerusakan</td>
				<td><textarea name="kerusakan" id="kerusakan" cols="30" rows="10"><?php echo $kerusakan; ?></textarea></td>
			</tr>
			<tr> 
				<td>Informasi</td>
        <td>
      <textarea name="info" id="info" cols="30" rows="10"><?php echo $info; ?></textarea></td>
      </tr>
      <tr> 
				<td>Solusi</td>
        <td>
      <textarea name="solusi" id="solusi" cols="30" rows="10"><?php echo $solusi; ?></textarea></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value=<?php echo $_GET['id']; ?>></td>
				<td><input type="submit" name="update" value="Update"></td>
			</tr>
		</table> -->
			</form>
		</div>
	</div>
</body>

</html>