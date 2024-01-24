<?php

$toppings = [
    'kaas' => [
        'naam' => 'kaas',
        'prijs' => 2,
    ],
    'ham' => [
        'naam' => 'ham',
        'prijs' => 2,
    ],
    'kip' => [
        'naam' => 'kip',
        'prijs' => 3,
    ],
    'kebap' => [
        'naam' => 'kebap',
        'prijs' => 3,
    ],
    'ananas' => [
        'naam' => 'ananas',
        'prijs' => 3,
    ],
];

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizza</title>
</head>

<body>

    <?php if ($_POST && isset($_POST['toppings'])) : ?>
        <p>Je hebt gekozen voor:</p>
        <ul>
            <li>Kaas (<?= $toppings['prijs']?>)</li>
            <li>Ham (2 EUR)</li>
        </ul>
        <p>Jouw prijs is: 4 EUR.</p>
    <?php else : ?>
        <form method="post">
            <p>Pizza toppings</p>
            <ul>
                <li>
                    <label>
                        <input type="checkbox" name="toppings[]" id="toppings" value="0"> Kaas
                    </label>
                </li>
                <li>
                    <label>
                        <input type="checkbox" name="toppings[]" id="toppings" value="1"> Ham
                    </label>
                </li>
                <li>
                    <label>
                        <input type="checkbox" name="toppings[]" id="toppings" value="2"> Kip
                    </label>
                </li>
            </ul>
            <p><input type="submit" value="Verzenden"></p>
        </form>
    <?php endif ?>


</body>

</html>