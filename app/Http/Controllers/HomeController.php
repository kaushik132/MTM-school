<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HomeBanner;
use App\Models\Facility;
use App\Models\GalleryImage;
use App\Models\GalleryVideo;
use App\Models\Activities;
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
        $activities = Activities::orderBy('id', 'desc')->get();
        return view('activities', compact('activities'));
    }

    public function addmission(){
        return view('addmission');
    }

    public function applicationForm(){
        return view('applicationform');
    }


    public function facility(){
        $facal = Facility::orderBy('id', 'desc')->get();
        return view('facility', compact('facal'));
    }


    public function feesStructure(){
        return view('feesStructure');
    }

    public function gallery(){
        $galleryImages = GalleryImage::orderBy('id', 'desc')->get();
        $galleryVideos = GalleryVideo::orderBy('id', 'desc')->get();
        return view('gallery', compact('galleryImages','galleryVideos'));
    }

    public function userLogin(){
        return view('userlogin');
    }

    public function userRegister(){
        return view('usersignup');
    }
}
