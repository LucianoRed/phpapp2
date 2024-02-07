<?php
$host = getenv("HOST");
$user = getenv("USER");
$pass = getenv("PASS");
$db = getenv("DB");

if($user == "") {
    $user = "mysql";   
}
if($pass == "") {
    $pass = "mysql";   
}
if($db == "") {
    $db = "mysql";   
}

$id = mysqli_connect("$host", "$user", $pass);
mysqli_select_db($id, "$db");
$qr = "select * from veiculo";
$rs = mysqli_query($id, $qr);
echo "Veiculos encontrados no banco: <br>\n";
while($x=mysqli_fetch_array($rs)) {
    $id_veiculo = $x['id_veiculo'];
    $veiculo = $x['veiculo'];
    $cor = $x['cor'];
    echo "Encontrado veiculo $lixo de cor $cor <br>\n";
}
?>
