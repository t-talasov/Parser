<?php

include 'functions.php';
include 'db.php';

$stmt = $pdo->prepare("TRUNCATE `restaurants`");
$stmt->execute();

$stmt = $pdo->prepare("TRUNCATE `cuisines`");
$stmt->execute();

$globalRests = [];
for ($i=1, $pages=getMaxPage(1); $i<=$pages; $i++) {
    $globalRests = array_merge($globalRests, getRestsFromPage($i));
}

$cuisines = [];
foreach ($globalRests as $rest) {
    $cuisines = array_merge($cuisines, $rest['cuisine']);
}
$cuisines = array_unique($cuisines);
print_r($cuisines);

#print_r($globalRests);

$stmt = $pdo->prepare("
    INSERT INTO
        `cuisines` (
            `name`
        ) VALUES (
            :name
        )
");

foreach ($cuisines as $cuisine) {
    $stmt->execute([
        ':name' => $cuisine
    ]);
}

$stmt = $pdo->prepare("
    INSERT INTO
        `restaurants` (
            `name`,
            `link`,
            `price_min`,
            `price_max`,
            `worktime`,
            `address`
        ) VALUES (
            :name,
            :link,
            :price_min,
            :price_max,
            :worktime,
            :address
        )    
");


foreach ($globalRests as $rest) {
    $stmt->execute([
        ':name' => $rest['name'],
        ':link' => $rest['link'],
        ':price_min' => $rest['price']['price_min'],
        ':price_max' => $rest['price']['price_max'],
        ':worktime' => $rest['worktime'],
        ':address' => $rest['address']
    ]);
}
