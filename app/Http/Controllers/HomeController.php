<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\HomeBanner;
use App\Models\Facility;
use App\Models\GalleryImage;
use App\Models\GalleryVideo;
use App\Models\Activities;
use App\Models\Teachers;
use App\Models\QuickFacts;
use App\Models\WhyChooseUs;
use App\Models\Faq;
use App\Models\Contact;
class HomeController extends Controller
{
    public function index(){
        $banners = HomeBanner::all();
        $facilty = Facility::limit(8)->get(); 
        $teachers = Teachers::limit(8)->get();
        $galleryImages = GalleryImage::limit(5)->get();
        $quickFacts = QuickFacts::first(); 
        $galleryVideos = GalleryVideo::orderBy('created_at', 'desc')->limit(1)->get();
        $wcus = WhyChooseUs::limit(6)->get();
        return view('home', compact('banners','facilty','teachers','galleryImages','quickFacts','galleryVideos','wcus'));
    }

    public function about(){
        $teachers = Teachers::limit(8)->get();
        $quickFacts = QuickFacts::first(); 
        return view('about',compact('teachers','quickFacts'));
    }

    public function contact(){
        return view('contact');
    }

    public function contactPost(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'message' => 'required',
        ],[
            'name.required' => 'Full Name is required',
            'email.required' => 'Email is required',
            'email.email' => 'Email is not valid',
            'subject.required' => 'Subject is required',
            'message.required' => 'Message is required',
        ]);

        $data = $request->all();
        $contact = new Contact();
        $contact->name = $data['name'];
        $contact->email = $data['email'];
        $contact->subject = $data['subject'];
        $contact->message = $data['message'];
        $contact->save();
        return redirect()->back()->with('message', 'Your message has been sent successfully.');

    }

    public function activities(){
        $activities = Activities::orderBy('id', 'desc')->get();
        return view('activities', compact('activities'));
    }

    public function addmission(){
      $faqs = Faq::orderBy('id', 'desc')->get();
        return view('addmission',compact('faqs'));
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
