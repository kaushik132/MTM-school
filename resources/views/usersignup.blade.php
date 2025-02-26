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
    <title>User Login Page</title>
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
                <li class="nav-link-item"><a href="{{url('application-form')}}"><span class="nav-apply-btn">Apply Now</span></a></li>
            </ul>
        </div>
    </header>

        <!-- ================================ user login =================================== -->
         <section class="user-login-container">
            <div class="login-background-shadow">
                <div class="container">
                    <div class="user-container-loginbox">
                        <div class="row faq-contain-box">
                            <div class="col-md-6">
                                <div class="login-content-dtls">
                                    <h2>Create Your Account</h2>
                                    <p>Hello Friend! please sign up your account</p>
                                </div>
                                <form action="" class="p-3">
                                    <label for="" class="login-label">Username</label>
                                    <input type="text" class="login-input-show" placeholder="Username">
                                    <label for="" class="login-label">Email ID</label>
                                    <input type="email" class="login-input-show" placeholder="Username">
                                    <label for="" class="login-label">Password</label>
                                    <input type="password" class="login-input-show" placeholder="Password">
                                    <div class="d-flex justify-content-between align-items-center mt-2">
                                      <div class="d-flex align-items-center">
                                        <input type="checkbox" class="checkbox-input">
                                        <label for="" class="checkbox-label ms-1">Enter Username</label>
                                      </div>
                                  
                                    </div>
                                    <div><button class="main-login-btn-show">Sign up</button></div>
                                    <p class="text-center checkbox-label text-muted mt-4">Don’t have an account? <a href="{{url('user-login')}}" class="text-decoration-none checkbox-label">Login</a></p>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <div class="login-image-bg-box">
                                    <div class="user-image-loginbg">
                                      <div class="text-center"><img src="./assets/images/logo.png" alt="image" class="img-fluid"></div>
                                      <h2>Welcome Back!</h2>
                                      <p>To keep connected with us please login with your personal info</p>
                                      <a href="{{url('user-login')}}"><div class="text-center"><button class="login-signup-btns">Login</button></div></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </section>


    <script src="./assets/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <script src="./assets/js/script.js"></script>
</body>

</html>