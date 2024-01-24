<?php

$foutmeldingen = [];

if ($_POST) {
    
    if (!$_POST['naam']) {
        $foutmeldingen['naam'] = "Naam is verplicht.";
    }

    if (!$_POST['email']) {
        $foutmeldingen['email'] = "Email is verplicht.";
    } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $foutmeldingen['email'] = "vul een geldig e-mailadress in.";
    } 

    if (!isset($_POST['onderwerp'])) {
        $foutmeldingen['onderwerp'] = "Je moet een onderwerp ingeven.";
    }

    if (strlen($_POST['bericht']) < 10) {
        $foutmeldingen['bericht'] = "Je moet een langere boodschap typen.";
    }

    if (!$_POST['voorwaarden']) {
        $foutmeldingen['voorwaarden'] = "Je moet accepteren.";
    }
    if (!$_POST['nieuwsbrief']) {
        $foutmeldingen['nieuwsbrief'] = "Je moet een keuze maken.";
    }
}



?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/formulier validatie/css/style.css">
    <title>Document</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
    <title>document</title>
</head>
<body>


<style>
    .error {
        color: red;
    }
</style>
<!-- <pre><?php var_dump($_POST)?></pre>
<pre><?php var_dump($foutmeldingen)?></pre> -->

<h1>Contact</h1>

<?php if ($_POST && !$foutmeldingen):?>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos dicta quo eum quod <br>
        cupiditate ullam odio molestiae molestias ab consequatur.</p>
    <p>het formulier is verzonden!</p>
<?php else: ?>
<form method="post" novalidate>


    <label for="naam">Naam:</label><br>
    <input type="text" id="naam" name="naam" value="<?= $_POST['naam'] ?? '' ?>"><br>
    <?php if (isset($foutmeldingen['naam'])): ?>
        <span class="error"><?php echo $foutmeldingen['naam'] ?></span><br>
    <?php endif ?>


    <label for="email">E-mail:</label><br>
    <input type="email" id="email" name="email" value="<?= $_POST['email'] ?? '' ?>"><br>
    <?php if (isset($foutmeldingen['email'])): ?>
        <span class="error"><?php echo $foutmeldingen['email'] ?></span><br>
    <?php endif ?>
    

    <label for="onderwerp">Onderwerp:</label><br>
        <select id="onderwerp" name="onderwerp">
            <option <?php if(!isset($_POST['onderwerp'])) {echo 'selected';}?> disabled selected>--maak een keuze--</option>
            <option <?php if(isset($_POST['onderwerp']) && $_POST['onderwerp'] == 'contact') {echo 'selected';}  ?> value="contact">Contact</option>
            <option <?php if(isset($_POST['onderwerp']) && $_POST['onderwerp'] == 'klacht') {echo 'selected';}  ?> value="klacht">Klacht</option>
            <option <?php if(isset($_POST['onderwerp']) && $_POST['onderwerp'] == 'sollicitatie') {echo 'selected';}  ?> value="sollicitatie">Sollicitatie</option>
        </select><br>
        <?php if (isset($foutmeldingen['onderwerp'])): ?>
        <span class="error"><?php echo $foutmeldingen['onderwerp'] ?></span><br>
    <?php endif ?>
    


    <label for="bericht">Bericht:</label><br>
    <textarea id="bericht" name="bericht" ><?= $_POST['bericht'] ?? '' ?></textarea><br>
    <?php if (isset($foutmeldingen['bericht'])): ?>
        <span class="error"><?php echo $foutmeldingen['bericht'] ?></span><br>
    <?php endif ?>



    <input type="checkbox" id="accept" name="voorwaarden" value="accept" <?php if(isset($_POST['voorwaarden'])){echo 'checked';} ?>>
    <label for="accept">Ik accepteer de voorwaarden</label><br>
    <?php if (isset($foutmeldingen['voorwaarden'])): ?>
        <span class="error"><?php echo $foutmeldingen['voorwaarden'] ?></span><br>
    <?php endif ?>
    


        <label>Ik wil me inschrijven voor de Nieuwsbrief</label><br>
        <input type="radio" id="nieuwsbrief-ja" name="nieuwsbrief" value="ja" <?php if(isset($_POST['nieuwsbrief']) && $_POST['nieuwsbrief'] == 'ja') {echo 'checked';} ?>>
        <label for="nieuwsbrief-ja">Ja</label>

        <input type="radio" id="nieuwsbrief-nee" name="nieuwsbrief" value="nee" <?php if(isset($_POST['nieuwsbrief']) && $_POST['nieuwsbrief'] == 'nee') {echo 'checked';} ?>>
        <label for="nieuwsbrief-nee">Nee</label><br><br>
        <?php if (isset($foutmeldingen['nieuwsbrief'])): ?>
        <span class="error"><?php echo $foutmeldingen['nieuwsbrief'] ?></span><br>
        <?php endif ?>
    


    <input type="submit" value="Verzenden">
</form>
<?php endif;?>

</body>
</html>

</body>
</html>