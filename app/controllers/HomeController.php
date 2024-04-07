<?php

use App\core\Controller;

class HomeController extends Controller
{
    public function index()
    {
        $msg = "Welcome to my Blog index!";
        echo $this->getTwig()->render('home/index.html.twig', compact('msg'));
    }
}
