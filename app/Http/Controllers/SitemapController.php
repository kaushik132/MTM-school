<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\BeyondAcademic;
use App\Models\BlogCategory;
use App\Models\ClassModel;
use App\Models\Elibrary;
use App\Models\Service;

class SitemapController extends Controller
{
    public function index(){
        $blogs = Blog::all();
       $blogcategories = BlogCategory::all();
        $be = BeyondAcademic::all();
        $class = ClassModel::all();
        // $services = Service::all();
        
        return response()->view('sitemap',['blogs'=> $blogs,'be'=> $be,'blogcategories'=> $blogcategories,'class'=>$class])->header('Content-Type','text/xml');
            }
}
