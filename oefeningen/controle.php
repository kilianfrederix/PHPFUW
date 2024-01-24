<?php $ingelogd = true;
    if ($ingelogd) { 
    $text = "Proficiat! je bent ingelogd!";
} else {
    $text = "Hallo! Je moet nog inloggen of registreren!";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<p><?php echo $text ?></p>

<?php if ($ingelogd) : ?>
    <p>Proficiat! je bent ingelogd!</p>
<?php else : ?>
    <p>Hallo! Je moet nog inloggen of registreren!</p>
<?php endif ?>
</body>
</html>