<?php
$backend = getenv("BACKEND_URL");
echo file_get_contents($backend);
?>
