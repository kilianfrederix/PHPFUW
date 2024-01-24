<?php 

$ingelogd = false;
$user = "kilian";
$categories = ["HTML","CSS","PHP","Javascript"];
$max_score = 5;
$articles = [
    [
        'title' => 'eerste article',
        'date' => '21-11-2022',
        'content' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum unde necessitatibus adipisci similique, nemo, tempora numquam doloribus atque magni error a rem molestiae excepturi, quasi recusandae aperiam saepe culpa odio.</p>',
    ],
    [
        'title' => 'tweede article',
        'date' => '20-11-2022',
        'content' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum unde necessitatibus adipisci similique, nemo, tempora numquam doloribus atque magni error a rem molestiae excepturi, quasi recusandae aperiam saepe culpa odio.</p>',
    ],
    [
        'title' => 'derde article',
        'date' => '18-11-2022',
        'content' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum unde necessitatibus adipisci similique, nemo, tempora numquam doloribus atque magni error a rem molestiae excepturi, quasi recusandae aperiam saepe culpa odio.</p>',
    ],
    [
        'title' => 'vierde article',
        'date' => '16-11-2022',
        'content' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum unde necessitatibus adipisci similique, nemo, tempora numquam doloribus atque magni error a rem molestiae excepturi, quasi recusandae aperiam saepe culpa odio.</p>',
    ],

];

if ($ingelogd == true ) {
    $naam = "Hallo, $user";
} else if ($ingelogd == false) {
    $naam = "Hallo, gast";
}



?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="">
    <nav class="bg-black p-4 text-white mb-8">
        <div class="max-w-4xl mx-auto flex gap-4 items-center">
            <a class="hover:underline" href="#">Home</a>
            <a class="hover:underline" href="#">Over ons</a>
            <a class="hover:underline" href="#">Contact</a>
            <span class="ml-auto px-4 py-2 bg-gray-800"><?php echo $naam?></span>
            <?php if ($ingelogd == false) :?>
                <a class="hover:underline" href="#">Aanmelden</a>
            <?php endif ?>
            <?php if ($ingelogd == true) :?>
            <a class="hover:underline" href="#">Afmelden</a>
            <?php endif ?>
        </div>
    </nav>

    <div class="max-w-4xl mx-auto grid grid-cols-3 gap-8">
        <section class="col-span-2">
            <header class="mb-4">
                <div class="flex gap-2 items-center mb-4">
                    <h1 class="font-semibold text-2xl">
                        Artikels
                    </h1>
                    <?php if ($ingelogd == true) :?>
                        <a href="add.php" class="bg-green-500 text-green-100 px-2 rounded inline-block">+ add</a>
                    <?php endif ?>
                </div>
                <div class="flex gap-2">
                    <b>Categoriëen: </b>
                    <?php foreach ($categories as $key => $category):?>
                    <a class="text-blue-500 underline" href="category.php?id=<?=$key?>"><?= $category?></a>
                    <?php endforeach?>
                </div>
            </header>

            <div class="grid gap-4">
            <?php foreach ($articles as $key => $article):?>
                <article class="bg-gray-100 p-4">
                    <header class="mb-2">
                        <h1 class="font-semibold text-lg"><a class="text-blue-500 underline" href="article.php?id=<?=$key?>"><?=$article['title']?></a></h1>
                        <p class="opacity-75">Gepubliceerd op <time class="font-semibold"><?=$article['date']?></time></p>
                        <div class="flex gap-2 my-2">
                            <?php if ($ingelogd == true) :?>
                                <a class="bg-orange-500 text-orange-100 px-2 rounded inline-block" href="edit.php?id=1">edit</a>
                            <?php endif ?>
                            <?php if ($ingelogd == true) :?>
                                <a class="bg-red-500 text-red-100 px-2 rounded inline-block" href="delete.php?id=1">delete</a>
                            <?php endif ?>
                        </div>
                    </header>
                    <?=$article['content']?>
                    </article>
                <?php endforeach?>
                <footer>
                    <a class="inline-block bg-blue-500 hover:bg-blue-600 text-blue-100 px-4 py-2 rounded" href="#">Meer artikels</a>
                </footer>
            </div>
        </section>
        <aside class="bg-gray-100 p-4">
            <h1 class="text-xl font-semibold">
                Contacteer ons
            </h1>
            <form action="" class="grid gap-2">
                <div>
                    <label for="naam" class="block font-semibold">Naam</label>
                    <input class="bg-gray-300 px-4 py-2 w-full block" type="text" name="naam" id="naam">
                </div>
                <div>
                    <label for="email" class="block font-semibold">E-mailadres</label>
                    <input class="bg-gray-300 px-4 py-2 w-full block" type="email" name="email" id="email">
                </div>
                <div>
                    <p class="block font-semibold">Welke score geef je ons?</p>
                    <div class="flex gap-4">
                    <?php for ($i = 1; $i <= $max_score; $i++): ?>
                        <label for="score_<?= $i?>" class="block">
                            <input type="radio" name="score" id="score_<?= $i?>"> <?= $i?>
                        </label>
                    <?php endfor ?>
                    </div>
                </div>
                <div>
                    <input type="submit" value="Verzenden" class="bg-green-500 hover:bg-green-600 text-green-100 px-4 py-2 rounded inline-block">
                </div>
            </form>
        </aside>
    </div>

    <footer class="text-center text-sm my-12">
        Copyright <?php echo date('Y')?> CVO De verdieping
    </footer>

</body>

</html>