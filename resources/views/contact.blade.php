@extends('dashboard.layout.main')
@section('main-containers')


        <!-- ================================ Banner =================================== -->
        <section>
            <div class="about-banner-box">
                <div class="about-banner-content">
                    <h1>Contact Us</h1>
                    <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Contact Us</span></h6>
                </div>
            </div>
        </section>
        <!-- ================================ Contact us Card================================ -->
         <section class="mt-4">
            <div class="container">
          <div class="row">
            <div class="col-md-3 mt-3">
                <div class="contact-us-card text-center">
                    <div><img src="./assets/images/contact-icon1.png" alt="icon" class="img-fluid"></div>
                    <h3>Location</h3>
                    <p>110 A, Hazrat Ali Colony, Ramgarh Mode, Jaipur</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="contact-us-card text-center">
                    <div><img src="./assets/images/contact-icon2.png" alt="icon" class="img-fluid"></div>
                    <h3>Call Us</h3>
                    <p>8824439101, 9024243670</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="contact-us-card text-center">
                    <div><img src="./assets/images/contact-icon3.png" alt="icon" class="img-fluid"></div>
                    <h3>Email Us</h3>
                    <p>mtmpublicsecondaryschool@gmail.com</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="contact-us-card text-center">
                    <div><img src="./assets/images/contact-icon4.png" alt="icon" class="img-fluid"></div>
                    <h3>Open Time</h3>
                    <p>Mon-sat(10:00am-5:30)</p>
                </div>
            </div>
          </div>
        </div>
         </section>
        <!-- ================================= Get in Touch========================================= -->
         <section class="mt-5">
            <div class="container">
                <div class="get-in-touch-box">
                    <div class="row">
                        <div class="col-md-6">
                           <div class="contact-image"><img src="https://img.freepik.com/premium-photo/teenager-student-girl-yellow-pointing-finger-side_1368-40175.jpg" alt="image" class="img-fluid"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="p-3">
                                <h3 class="mt-3"><b>Get In Touch</b></h3>
                                <p class="mt-2">It is a long established fact that a reader will be distracted by the readable content of a page randomised words which don't look even slightly when looking at its layout.</p>
                                @if (session()->has('message'))
                                <div class="alert alert-success">
                                 
                                   
                                   {{session()->get('message')}}
                                </div>
                                    
                                @endif
                                <form action="{{route('contact.post')}}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6 mt-3">
                                         <input type="text" name="name" placeholder="Your Name" class="input-box-show">
                                         <span>
                                            @error('name')
                                            <strong class="text-danger">{{$message}}</strong>
                                            @enderror
                                         </span>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <input type="email"  name="email" placeholder="Your Email ID" class="input-box-show">
                                            <span>
                                                @error('email')
                                                <strong class="text-danger">{{$message}}</strong>
                                                @enderror
                                             </span>
                                            </span>
                                           </div>
                                           <div class="col-md-12 mt-3">
                                            <input type="text" name="subject" placeholder="Your Subject" class="input-box-show">
                                            <span>
                                                @error('subject')
                                                <strong class="text-danger">{{$message}}</strong>
                                                @enderror
                                             </span>      
                                           </div>
                                           <div class="col-md-12 mt-3">
                                            <textarea name="message" id="" rows="4" cols="10" placeholder="Write your Message" class="input-box-show"></textarea>
                                            <span>
                                                @error('message')
                                                <strong class="text-danger">{{$message}}</strong>
                                                @enderror
                                             </span>
                                           </div>
                                           <div class="col-md-12 mt-4">
                                            <div><button class="discover-more-btn">Send Message</button></div>
                                           </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
         </section>
         <!-- ================================ Map =================================== -->
          <section class="mt-5">
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d28455.41097053146!2d75.81641777077732!3d26.93754856408036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x396db14a97a649cb%3A0x2eadbd24babbd234!2sBadi%20Chaupar%2C%20Jaipur%2C%20Rajasthan!3m2!1d26.923893699999997!2d75.8316064!4m5!1s0x396db1182c52c96b%3A0xebc34703cc089151!2s110%20-A%2C%20Hazrat%20Ali%20Nagar%2C%20Ramgarh%20Mode%2C%20Jaipur%2C%20Rajasthan%20302002!3m2!1d26.9492452!2d75.8423918!5e0!3m2!1sen!2sin!4v1739857162411!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
          </section>

@endsection