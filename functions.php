<?php

function getRestsFromPage($page)
{
    $pattern = '/<div class="place-story" data-site-id="[0-9]+">/u';
    $subject = file_get_contents('https://restoran.kz/restaurant?page=' . $page);
    $subjects = preg_split($pattern, $subject);
    unset($subjects[0]);

    $rests = [];
    foreach ($subjects as $subject) {

        $pattern = '/<a class="place-story__title__link" href="(\/restaurant\/[a-z0-9\-]{1,})">(.{1,}?)<\/a>/u';
        $result = [];
        preg_match_all($pattern, $subject, $result);

        $rest = [
            'link' => $result[1][0],
            'name' => $result[2][0],
        ];

        $paramsMap = [
            'Кухня' => 'cuisine',
            'Средний счёт' => 'price',
            'Время работы' => 'worktime',
            'Адрес' => 'address',
        ];

        $pattern = '/<dl class="row place-story__param"><dt class="col-xs-5 col-sm-3 place-story__param__title">(.+?)<\/dt><dd class="col-xs-7 col-sm-9 place-story__param__content">(.+?)<\/dd><\/dl>/u';
        $result = [];
        preg_match_all($pattern, $subject, $result);
        #print_r($result);

        foreach ($paramsMap as $k => $v) {
            $index = array_search($k, $result[1]);
            if ($index !== false) {
                $rest[$v] = $result[2][$index];
            }
        }

        $pattern = '/[0-9]+/u';
        $result = [];
        preg_match_all($pattern, $rest['price'], $result);
        
        $rest['price'] = [
            'price_min' => $result[0][0],
            'price_max' => isset($result[0][1]) ? $result[0][1] : $result[0][0], 
        ];
        //  isset($rest['cuisine']) ? $rest['cuisine'] : '' 
        $rest['cuisine'] = preg_split('/[, ]+/u', $rest['cuisine'] ?? '');

        $rests[] = $rest;
    }

    return $rests;
}

function getMaxPage($page)
{
    return 2;
    $subject = file_get_contents('https://restoran.kz/restaurant?page=' . $page);
    $pattern = '/\/restaurant\?page=([0-9]+)/u';
    $result = [];
    preg_match_all($pattern, $subject, $result);

    $max = $result[1][0];
    foreach ($result[1] as $digit) {
        if ($max < $digit) {
            $max = $digit;
        }
    }
    
    if ($max == $page) {
        return $page;
    } else {
        return getMaxPage($max);
    }
}