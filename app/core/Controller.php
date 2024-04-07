<?php

namespace App\core;

use App\services\TwigAdapter;

class Controller
{
    public ?TwigAdapter $twigAdapter = null;

    public function getTwig()
    {
        return new TwigAdapter();
    }

    public function model($model)
    {
        require_once '../app/models/' . $model . '.php';
        return new $model;
    }

}

