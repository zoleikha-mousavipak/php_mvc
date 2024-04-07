<?php

use App\core\Controller;


class UserController extends Controller
{
    protected $user;

    public function __construct()
    {
        $this->user = $this->model('User');        
    }

    public function login()
    {
        echo $this->getTwig()->render('user/login.html.twig');
    }

    public function loginAction()
    {
        session_start();
        if (!empty($_POST)) {
            $email = $_POST['email'];
            $password = $_POST['password'];

            $myuser = User::where(['email' => $email, 'password' => $password])->first();
            if (!$myuser) {
                echo "<script> alert('Username and Password do not matched!')</script>";
                echo $this->getTwig()->render('user/login.html.twig', compact('email'));
            } else {
                $_SESSION['email'] = $email;
                header('Location: /mvcBlog/public/index.html.twig');
            }
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        $msg = "Logout successfuly!";
        echo $this->getTwig()->render('/home/index.html.twig', compact('msg'));
    }

    public function create($username = '', $email = '')
    {
        // $this->user->create([
        User::create([
            'username' => $username,
            'email' => $email
        ]);
    }
}
