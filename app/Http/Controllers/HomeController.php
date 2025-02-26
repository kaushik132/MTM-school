<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HomeBanner;
use App\Models\Facility;
class HomeController extends Controller
{
    public function index(){
        $banners = HomeBanner::all();
        $facilty = Facility::limit(8)->get(); 
        return view('home', compact('banners','facilty'));
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

    public function userLogin(){
        return view('userlogin');
    }

    public function userRegister(){
        return view('usersignup');
    }
}
