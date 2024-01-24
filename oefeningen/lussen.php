<?php
$leerlingen = ["jan","karen", "jos","maggy"];
$teller = 10

?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>leerlingen</h1>
    <ul>
        <?php foreach($leerlingen as $leerling): ?>
            <li><?php echo$leerling ?></li>
        <?php endforeach ?>
    </ul>
    <h1>teller</h1>

    <ul>
        <?php for ($i = 1; $i <= $teller; $i++) {
            echo "<li>{$i}</li>";
            }?>
    </ul>
    </body>
</html>