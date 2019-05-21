<?php

include 'db.php';

$stmt = $pdo->prepare("
    SELECT
        `id`,
        `name`,
        `worktime` AS `wt`
    FROM
        `restaurants`
    WHERE
        `price_max` < :max AND `price_min` > :min
");

$stmt->execute([
    ':max' => 5000,
    ':min' => 500,
]);

$result = $stmt->fetchAll();

print_r($result);