<?php
// include database connection file
include_once("koneksi.php");
include 'header.php';
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{	
	$id = $_POST['id'];
	
	$kode=$_POST['kode'];
	$gejala=$_POST['gejala'];
		
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
 
while($d = mysqli_fetch_array($data))
{
	$kode = $d['kode'];
	$gejala = $d['gejala'];
}
?>
<html>
<head>	
	<title>Edit Gejala</title>
</head>
 
<body>
	<br/><br/>
	
	<form name="update_user" method="post" action="edit_gejala.php">
		<table border="0">
			<tr> 
				<td>Kode</td>
				<td><input type="text" name="kode" value=<?php echo $kode;?>></td>
			</tr>
			<tr> 
				<td>Gejala</td>
        <td>
      <textarea name="gejala" id="gejala" cols="30" rows="10"><?php echo $gejala;?></textarea></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
				<td><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>