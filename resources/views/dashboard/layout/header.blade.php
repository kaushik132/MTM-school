<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    @if(isset($seo_data['seo_title']))
    <title>{{ $seo_data['seo_title'] }}</title>
    @endif
  
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    @if(isset($seo_data['seo_description']))
      <meta name="description" content="{{$seo_data['seo_description']}}" />
      @endif

      @if(isset($seo_data['keywords']))
      <meta name="keywords"  content="{{$seo_data['keywords']}}" />
      @endif  

      <link href="{{url('assets/images/logo.png')}}" rel="shortcut icon" type="image/x-icon">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/contact-us.css">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Home Page</title>
</head>

<body>
    <!-- =================================== Header ======================================== -->
     <!-- --------------Social Header--------------- -->
       <div class="social-header-box">
           <div class="social-main-icons">
             <div class=" text-white"><b>Follow Us :</b></div>
             <div class="ms-2"><a href="#"><i class="bi bi-facebook text-white ms-2"></i></a> <a href="#"><i class="bi bi-youtube text-white ms-2"></i></a> <a href="#"><i class="bi bi-instagram text-white ms-2"></i></a> </div>
           </div>
           <div class="header-contact-info">
             <div class="ms-2 contact-header-dtls"><i class="bi bi-telephone-fill footer-icon-show"></i> 8824439101, 9024243670</div>
             <div class="header-line-show ms-2"></div>
             <div class="ms-2 contact-header-dtls"><i class="bi bi-envelope-fill footer-icon-show"></i> mtmpublicsecondaryschool@gmail.com</div>
             <div class="header-line-show ms-2"></div>
             <div class="ms-2 contact-header-dtls"><i class="bi bi-geo-alt-fill footer-icon-show"></i> 110 A, Hazrat Ali Colony, Ramgarh Mode, Jaipur</div>
           </div>
       </div>
      <!-- --------------- Navbar-------------------------- -->
    <header class="nav-container">
        <div class="nav-logo">
            <a href="{{url('/')}}"><img src="./assets/images/logo.png" alt="logo"></a>
        </div>
        <i class="fa-solid fa-bars open-menu"></i>
        <div class="background"></div>

        <div class="nav-link-container">
            <i class="fa-solid fa-xmark close-menu"></i>
            <ul class="nav-links">
                <li class="nav-link-item"><a href="{{url('/')}}">Home</a></li>
              
                <li class="nav-link-item dropdown-menu-branch">
                    <a href="#" data-toggle="dropdown-menu">Admission <i class="fa-solid fa-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        <li class="dropdown-menu-item"><a href="{{url('addmission')}}">How to apply</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('application-form')}}">Appliction Form</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('fees-structure')}}">Fees Structure</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('facility')}}">Facilities</a></li> 
                    </ul>
                </li>
                <li class="nav-link-item"><a href="{{url('gallery')}}">Gallery</a></li>
                <li class="nav-link-item"><a href="{{url('activities')}}">Activities</a></li>
                <li class="nav-link-item"><a href="{{url('about-us')}}">About Us</a></li>
                <li class="nav-link-item"><a href="{{url('contact-us')}}">Contact us</a></li>

                @if (Auth::check())
                <li class="nav-link-item">
                    <form   action="{{ route('logout') }}" method="POST"  role="search">
                        @csrf
                       <span class="nav-apply-btn"> <button   type="submit">{{ Auth::user()->name ?? ""}}</button></span>
                     </form>
                    
                    </li>
               
                @else
                <li class="nav-link-item"><a href="{{url('/user-login')}}"><span class="nav-apply-btn">Login</span></a></li>
                @endif
               
            </ul>
        </div>
    </header>
