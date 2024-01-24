<?php
$leerlingen = ['Jan', 'Karen', 'Jos', 'Maggy'];
$score = [4, 8, 6, 10];
$films = [
    [
        'naam' => "Godfather 1",
        'score' => 8
    ],
    [
        'naam' => "Godfather 2",
        'score' => 7
    ],
    [
        'naam' => "Godfather 3",
        'score' => 5
    ],

];
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>leerlingen</h1>
    <ul>
        <?php foreach($leerlingen as $key => $leerling): ?>
            <li><?php echo $leerling?>: <?php echo $score[$key]?>/10</li>
        <?php endforeach ?>
    </ul>
    <h1>films</h1>
    <ul>
        <?php foreach($films as $film): ?>
            <li><?php echo $film[$naam]?>: <?php echo $score[$score]?>/10</li>
        <?php endforeach ?>
    </ul>
</body>
</html>