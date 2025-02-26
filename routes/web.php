<?php

use App\Http\Controllers\HomeController;
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
Route::get('user-login',[HomeController::class,'userLogin']);
Route::get('user-signup',[HomeController::class,'userRegister']);




