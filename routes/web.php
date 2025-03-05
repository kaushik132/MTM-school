<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SitemapController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[HomeController::class,'index']);
Route::get('about-us',[HomeController::class,'about']);
Route::get('contact-us',[HomeController::class,'contact']);
Route::get('activities',[HomeController::class,'activities']);
Route::get('addmission',[HomeController::class,'addmission']);
Route::get('application-form',[HomeController::class,'applicationForm']);
Route::get('facility',[HomeController::class,'facility']);
Route::get('fees-structure',[HomeController::class,'feesStructure']);
Route::get('gallery',[HomeController::class,'gallery']);
Route::get('admission-procedure',[HomeController::class,'admissionProcedure']);
Route::get('beyond-academic/{slug?}',[HomeController::class,'beyondAcademic']);
Route::get('blogs/{slug?}',[HomeController::class,'blogs']);
Route::get('blog/{slug?}',[HomeController::class,'blogDetail']);
Route::get('e-library/{slug?}',[HomeController::class,'eLibrary']);




Route::post('contact-us-post',[HomeController::class,'contactPost'])->name('contact.post');
Route::post('application-form-post',[HomeController::class,'applicationFormPost'])->name('application-form.post');



Route::group(['middleware' => 'guest'], function () {
    Route::get('/user-signup', [AuthController::class, 'register'])->name('register');
    Route::post('/register', [AuthController::class, 'registerPost'])->name('register');
    Route::get('/user-login', [AuthController::class, 'login'])->name('user-login');
    Route::post('/login', [AuthController::class, 'loginPost'])->name('login');
});


Route::group(['middleware' => 'auth'], function () {
    Route::get('/home', [HomeController::class, 'index']);
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
});



Route::get('sitemap.xml',[SitemapController::class, 'index']);