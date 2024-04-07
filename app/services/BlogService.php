<?php

namespace App\service;


class BlogService {

    protected $blog;

    public function __construct()
    {
        $this->blog = $this->model('Blog');
    }

    public function blogList(): ?array
    {
        return Blog::orderBy('created_at', 'desc')->get();
    }
}