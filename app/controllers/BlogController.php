<?php

use App\core\Controller;

class BlogController extends Controller
{
    protected $blog;
    
    public function __construct()
    {
        $this->blog = $this->model('Blog');     
    }

    
    public function index()
    {
        // $blogs = $this->blog->all();
        $blogs = Blog::orderBy('created_at', 'desc')->get();

        //$this->getTwig()->render('blog/index', compact('blogs'));
        echo $this->getTwig()->render('blog/index.html.twig', [
            'blogs' => $blogs
        ]);
    }


    public function create()
    {
        echo $this->getTwig()->render('blog/create.html.twig');
    }


    public function store()
    {
        $title = $_POST['title'];
        $comment = $_POST['comment'];

        // $this->user->create([
        Blog::create([
            'title' => $title,
            'comment' => $comment
        ]);
        header("Location: /mvcBlog/public/BlogController/index");
    }

    public function show($id)
    {
        $blog = Blog::where('id', $id)->first();

        echo $this->getTwig()->render('blog/show.html.twig', compact('blog'));
    }
}
