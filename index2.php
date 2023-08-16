<?php
include("config.php");
?>
<html>
<head>
<title>How Genrate PDF From MYSQL Usig PHP</title>
</head>
<body>

<script>
if(confirm("Are you sure want to conert pdf to all user order data.")) document.location = 'genratepdf.php';
else {
    document.location = 'all_orders.php';
}
</script>
</body>
</html>