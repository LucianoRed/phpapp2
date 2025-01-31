<?php
// Obtém o nome do host do servidor
$host = gethostname();
// Comentario X
// Obtém o IP do servidor
$ip = gethostbyname($host);
echo $ip."\n";
?>
