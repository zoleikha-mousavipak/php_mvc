<?php

namespace App\services;

use Twig\Environment;
use Twig\Loader\FilesystemLoader;

class TwigAdapter {

    public function render($view, $param=[]) 
    {
        // Initialize Twig
        $loader = new FilesystemLoader('../app/views');
        $twig  = new Environment($loader);
        
        session_start();
        
        $param=array_merge($param, [
            'session' => $_SESSION
        ]);

        return $twig->render($view, $param);
    }
}