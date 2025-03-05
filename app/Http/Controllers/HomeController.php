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
use App\Models\ApplicationForm;
use App\Models\Seo;
use App\Models\ClassModel;
use App\Models\Elibrary;
use App\Models\AdmissionProcedure;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\Storage;


class HomeController extends Controller
{
    public function index(){
        $banners = HomeBanner::all();
        $facilty = Facility::limit(8)->get();
        $teachers = Teachers::limit(8)->get();
        $galleryImages = GalleryImage::limit(7)->get();
        $quickFacts = QuickFacts::first();
        $galleryVideos = GalleryVideo::orderBy('created_at', 'desc')->limit(1)->get();
        $wcus = WhyChooseUs::limit(6)->get();

        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_home_title;
        $seo_data['seo_description'] = $homepage->seo_home_des;
        $seo_data['keywords'] = $homepage->seo_home_key;

        return view('home', compact('banners','facilty','teachers','galleryImages','quickFacts','galleryVideos','wcus','seo_data'));
    }

    public function about(){
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_about_title;
        $seo_data['seo_description'] = $homepage->seo_about_des;
        $seo_data['keywords'] = $homepage->seo_about_key;

        $teachers = Teachers::limit(8)->get();
        $quickFacts = QuickFacts::first();
        return view('about',compact('teachers','quickFacts','seo_data'));
    }

    public function contact(){
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_contact_title;
        $seo_data['seo_description'] = $homepage->seo_contact_des;
        $seo_data['keywords'] = $homepage->seo_contact_key;

        return view('contact',compact('seo_data'));
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
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_activities_title;
        $seo_data['seo_description'] = $homepage->seo_activities_des;
        $seo_data['keywords'] = $homepage->seo_activities_key;

        $activities = Activities::orderBy('id', 'desc')->get();
        return view('activities', compact('activities','seo_data'));
    }

    public function addmission(){
$homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_addmission_title;
        $seo_data['seo_description'] = $homepage->seo_addmission_des;
        $seo_data['keywords'] = $homepage->seo_addmission_key;

      $faqs = Faq::orderBy('id', 'desc')->get();
        return view('addmission',compact('faqs','seo_data'));
    }

    public function admissionProcedure(){
$admition = AdmissionProcedure::orderBy('id', 'desc')->get();
$homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_admission_procedure_title;
        $seo_data['seo_description'] = $homepage->seo_admission_procedure_des;
        $seo_data['keywords'] = $homepage->seo_admission_procedure_key;

        return view('admissionProcedure',compact('admition','seo_data'));
    }


    public function beyondAcademic(){

        return view('beyondAcademic');
    }

public function eLibrary($slug=null){
    $homepage = Seo::select('seo_e_labrary_title','seo_e_labrary_des','seo_e_labraby_key')->first();
    if($slug!=null){
        $class = ClassModel::where('slug',$slug)->first();
        $elist = Elibrary::latest()->with('class')->where('category_id',$class->id)->paginate(4);

        $seo_data['seo_title'] ="E-Library Title ";
        $seo_data['seo_description'] ="E-Library Description";
       $seo_data['keywords'] =" E-Library Keywords";


    }else{
        $elist = Elibrary::latest()->with('class')->paginate(4);
        $seo_data['seo_title'] =$homepage->seo_e_labrary_title;
        $seo_data['seo_description'] =$homepage->seo_e_labrary_des;
        $seo_data['keywords'] =$homepage->seo_e_labraby_key;

     }

        return view('elibrary',compact('elist','seo_data'));
    }






    public function blogs(){
        // $homepage = Seo::first();
        // $seo_data['seo_title'] = $homepage->seo_blogs_title;
        // $seo_data['seo_description'] = $homepage->seo_blogs_des;
        // $seo_data['keywords'] = $homepage->seo_blogs_key;

        return view('blog');
    }


    public function blogDetail(){
        // $homepage = Seo::first();
        // $seo_data['seo_title'] = $homepage->seo_blog_detail_title;
        // $seo_data['seo_description'] = $homepage->seo_blog_detail_des;
        // $seo_data['keywords'] = $homepage->seo_blog_detail_key;

        return view('blogDetails');
    }



    public function applicationForm(){
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_application_title;
        $seo_data['seo_description'] = $homepage->seo_application_des;
        $seo_data['keywords'] = $homepage->seo_application_key;

        return view('applicationform',compact('seo_data'));
    }



    public function applicationFormPost(Request $request) {

        $request->validate([
            'fname' => 'required',
            'lname' => 'required',
            'father_name' => 'required',
            'mother_name' => 'required',
            'contact_no' => 'required|numeric',
            'email' => 'required|email',
            'present_address' => 'required',
            'dob' => 'required|date',
            'gender' => 'required',
            'desire_class' => 'required',
            'present_school' => 'required',
            'student_photo' => 'image|mimes:jpeg,png,jpg|max:2048',
            'birth_document' => 'mimes:pdf,doc,docx|max:2048',
        ],[
            'fname.required' => 'First Name is required',
            'lname.required' => 'Last Name is required',
            'father_name.required' => 'Father Name is required',
            'mother_name.required' => 'Mother Name is required',
            'contact_no.required' => 'Contact Number is required',
            'contact_no.numeric' => 'Contact Number must be numeric',
            'email.required' => 'Email is required',
            'email.email' => 'Email is not valid',
            'present_address.required' => 'Present Address is required',
            'dob.required' => 'Date of Birth is required',
            'dob.date' => 'Date of Birth is not valid',
        ]);


        $application = new ApplicationForm();
        $application->fname = $request->fname;
        $application->lname = $request->lname;
        $application->father_name = $request->father_name;
        $application->mother_name = $request->mother_name;
        $application->contact_no = $request->contact_no;
        $application->email = $request->email;
        $application->present_address = $request->present_address;
        $application->dob = $request->dob;
        $application->gender = $request->gender;
        $application->desire_class = $request->desire_class;
        $application->present_school = $request->present_school;

        if ($request->hasFile('student_photo')) {
            $file = $request->file('student_photo'); // File ko retrieve karna
            $extension = $file->getClientOriginalExtension(); // File extension lena
            $filename = time() . '_student.' . $extension; // Unique filename generate karna
            $file->move('uploads/student_photos/', $filename); // File ko manually move karna
            $application->student_photo = 'uploads/student_photos/' . $filename; // Database me save karna
        }

        if ($request->hasFile('birth_document')) {
            $file = $request->file('birth_document'); // File ko retrieve karna
            $extension = $file->getClientOriginalExtension(); // File extension lena
            $filename = time() . '_birth_doc.' . $extension; // Unique filename generate karna
            $file->move('uploads/birth_documents/', $filename); // File ko manually move karna
            $application->birth_document = 'uploads/birth_documents/' . $filename; // Database me save karna
        }


        $application->save();


        return redirect()->back()->with('success', 'Application submitted successfully!');
    }



    public function facility(){
$homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_facility_title;
        $seo_data['seo_description'] = $homepage->seo_facility_des;
        $seo_data['keywords'] = $homepage->seo_facility_key;




        $facal = Facility::orderBy('id', 'desc')->get();
        return view('facility', compact('facal','seo_data'));
    }


    public function feesStructure(){
$homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_fees_title;
        $seo_data['seo_description'] = $homepage->seo_fees_des;
        $seo_data['keywords'] = $homepage->seo_fees_key;


        return view('feesStructure',compact('seo_data'));
    }

    public function gallery(){
$homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_gallery_title;
        $seo_data['seo_description'] = $homepage->seo_gallery_des;
        $seo_data['keywords'] = $homepage->seo_gallery_key;

        $galleryImages = GalleryImage::orderBy('id', 'desc')->get();
        $galleryVideos = GalleryVideo::orderBy('id', 'desc')->get();
        return view('gallery', compact('galleryImages','galleryVideos','seo_data'));
    }

    public function userLogin(){
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_user_login_title;
        $seo_data['seo_description'] = $homepage->seo_user_login_des;
        $seo_data['keywords'] = $homepage->seo_user_login_key;

        return view('userlogin',compact('seo_data'));
    }

    public function userRegister(){
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_user_signup_title;
        $seo_data['seo_description'] = $homepage->seo_user_signup_des;
        $seo_data['keywords'] = $homepage->seo_user_signup_key;
        return view('usersignup' ,compact('seo_data'));
    }



}
