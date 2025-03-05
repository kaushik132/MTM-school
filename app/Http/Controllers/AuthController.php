<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Seo;

class AuthController extends Controller
{
    public function register()
    {
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_user_signup_title;
        $seo_data['seo_description'] = $homepage->seo_user_signup_des;
        $seo_data['keywords'] = $homepage->seo_user_signup_key;
        return view('usersignup',compact('seo_data'));
    }
 
    public function registerPost(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ], [
            'name.required' => 'Please enter your name',
            'email.required' => 'Please enter your email',
            'email.email' => 'Please enter a valid email',
            'email.unique' => 'Email already exists',
            'password.required' => 'Please enter your password',
        ]);
        $user = new User();
 
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
 
        $user->save();
 
        return back()->with('success', 'Register successfully');
    }
    public function login()
    {
        $homepage = Seo::first();
        $seo_data['seo_title'] = $homepage->seo_user_login_title;
        $seo_data['seo_description'] = $homepage->seo_user_login_des;
        $seo_data['keywords'] = $homepage->seo_user_login_key;
        return view('userlogin',compact('seo_data'));
    }
 
    public function loginPost(Request $request)
    {
        $credetials = [
            'email' => $request->email,
            'password' => $request->password,
        ];
 
        if (Auth::attempt($credetials)) {
            return redirect('/')->with('success', 'Login Success');
        }
 
        return back()->with('error', 'Error Email or Password');
    }

    public function logout()
    {
        Auth::logout();
 
        return redirect()->route('user-login');
    }
}
