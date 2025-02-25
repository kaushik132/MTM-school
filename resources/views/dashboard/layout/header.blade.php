<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
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
            <a href="index.html"><img src="./assets/images/logo.png" alt="logo"></a>
        </div>
        <i class="fa-solid fa-bars open-menu"></i>
        <div class="background"></div>

        <div class="nav-link-container">
            <i class="fa-solid fa-xmark close-menu"></i>
            <ul class="nav-links">
                <li class="nav-link-item"><a href="index.html">Home</a></li>
              
                <li class="nav-link-item dropdown-menu-branch">
                    <a href="#" data-toggle="dropdown-menu">Admission <i class="fa-solid fa-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        <li class="dropdown-menu-item"><a href="#">Option 1</a></li>
                        <li class="dropdown-menu-item"><a href="#">Option 2</a></li>
                        <li class="dropdown-menu-item"><a href="#">Option 3</a></li>
                    </ul>
                </li>
                <li class="nav-link-item"><a href="gallery.html">Gallery</a></li>
                <li class="nav-link-item"><a href="activities.html">Activities</a></li>
                <li class="nav-link-item"><a href="{{url('about-us')}}">About Us</a></li>
                <li class="nav-link-item"><a href="contact-us.html">Contact us</a></li>
                <li class="nav-link-item"><a href="#"><span class="nav-apply-btn">Apply Now</span></a></li>
            </ul>
        </div>
    </header>
