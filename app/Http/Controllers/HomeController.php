<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('home');
    }

    public function about(){
        return view('about');
    }

    public function contact(){
        return view('contact');
    }

    public function activities(){
        return view('activities');
    }

    public function addmission(){
        return view('addmission');
    }

    public function applicationForm(){
        return view('applicationform');
    }


    public function facility(){
        return view('facility');
    }


    public function feesStructure(){
        return view('feesStructure');
    }

    public function gallery(){
        return view('gallery');
    }
}
