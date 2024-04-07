<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Blog extends Eloquent
{
    public $name;
    protected $fillable = ['title', 'comment'];
}
