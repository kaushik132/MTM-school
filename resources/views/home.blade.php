@extends('dashboard.layout.main')
@section('main-containers')
        <!-- ================================ Banner =================================== -->
         <section>
            <div class="container-fluid">
                <div class="swiper banner-slider mt-4 mb-4">
                    <div class="swiper-wrapper">

                        @foreach ($banners as $banner)
                            
                    
                        <div class="swiper-slide main-user-slide">
                           <div class="banner-slider-container">
                              <div><img src="{{url('uploads/'.$banner->image)}}" alt="banner" class="img-fluid"></div>
                              <div class="banner-slider-content">
                                <span class="sub-title-show"><i class="fa-solid fa-graduation-cap"></i> Welcome to MTM School</span>
                             <h1>{!!$banner->title!!}</h1>
                                    <p>{{$banner->short_description}}</p>
                               <div class="banner-btns">
                                 <a href="{{$banner->about_more}}" class="text-decoration-none"><button class="about-more">About More</button></a>
                                 <a href="{{$banner->learn_more}}" class="text-decoration-none"><button class="learn-more">Learn More</button></a>
                               </div>
                                </div>
                           </div>
                        </div>
                        @endforeach
                    
                 
                    </div>
    
                    <!-- Navigation buttons -->
                    <div class="swiper-button-next banner-btn-bg"></div>
                    <div class="swiper-button-prev banner-btn-bg"></div>
                </div>
            </div>
         </section>
    <!-- ================================ Facility =================================== -->
    <section class="mt-5">
        <div class="container">
            <div class="main-heading-with-show">
                <h2>Facility</h2>
            </div>
            <div class="row mt-3">
            

                @foreach ($facilty as $fac)
                    
              
                <div class="col-md-3 mt-3">
                    <div class="facility-container">
                        <div class="faclty-contain-img"><img src="{{url('uploads/'.$fac->image)}}" alt="icon"
                                class="img-fluid"></div>
                        <h3>{{$fac->name}}</h3>
                        <p>{{$fac->content}}</p>
                    </div>
                </div>
                @endforeach
              
            
              
          
                
             
            </div>
        </div>
    </section>
        <!-- ================================ About US =================================== -->
        <section class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 mt-3">
                        <div class="row g-1">
                            <div class="col-md-6 col-6 mt-3">
                                <div class="home-abt-img1"><img src="https://www.kiddiematters.com/wp-content/uploads/2017/03/Depositphotos_61894645_original-1024x708.jpg" alt="image" class="img-fluid"></div>
                             </div>
                             <div class="col-md-6 col-6 mt-3">
                                <div class="home-abt-img2"><img src="https://media.istockphoto.com/id/1768516789/photo/child-thinking-and-homework-with-light-bulb-for-learning-math-numbers-and-creative-ideas-or.jpg?s=612x612&w=0&k=20&c=QeXVf-N3AgRCXHgOLAlZoWR9Se9p_c9po_wu_odWbMk=" alt="image" class="img-fluid"></div>
                             </div>
                             <div class="col-md-6 col-6 mt-3">
                                <div class="home-abt-img2"><img src="https://static.vecteezy.com/system/resources/thumbnails/050/901/978/small_2x/children-studying-together-at-home-with-a-laptop-and-books-photo.jpg" alt="image" class="img-fluid"></div>
                             </div>
                             <div class="col-md-6 col-6 mt-3">
                                <div class="home-abt-img3"><img src="https://static.vecteezy.com/system/resources/thumbnails/050/901/978/small_2x/children-studying-together-at-home-with-a-laptop-and-books-photo.jpg" alt="image" class="img-fluid"></div>
                             </div>
                        </div>
                    
                    </div>
                    <div class="col-md-5 mt-3">
                        <div class="main-heading-with-show text-start">
                            <span style="border-bottom: solid 2px yellow;"><i class="fa-solid fa-graduation-cap"></i> About Us</span>
                            <h2>Our Edukation System <span class="footer-icon-show">Inspires</span> You More.</h2>
                            <div style="text-align: justify;">
                                <p>There are many variations of passages available but the majority have suffered alteration in some
                                    form by injected humour randomised words which don't look even slightly believable. </p>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta blanditiis recusandae sunt quas dignissimos, facilis ut totam laboriosam alias velit? Asperiores repudiandae nemo facilis esse reprehenderit ratione ipsum deserunt saepe. </p>
                                    <p>There are many variations of passages available but the majority have suffered alteration in some
                                        form by injected humour randomised words which don't look even slightly believable. </p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta blanditiis recusandae sunt quas dignissimos, facilis ut totam laboriosam alias velit? Asperiores repudiandae nemo facilis esse reprehenderit ratione ipsum deserunt saepe. </p>
                            
                                    </div>
                                    <div><button class="discover-more-btn">Discover More &rarr;</button></div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
                <!-- ================================ Quick Facts =================================== -->
                 <section class="mt-5">
                    <div class="container">
                        <div class="main-heading-with-show">
                            <span><i class="fa-solid fa-graduation-cap"></i> Quick Facts</span>
                            <h2>Quick <span class="footer-icon-show"> Facts</span></h2>
                           
                        </div>
                        <div class="quick-facts-bg mt-4">
                          <div class="row">
                            <div class="col-md-3 mt-3 col-6">
                                <div class="facts-container">
                                    <div class="fact-contain-img"><img src="./assets/images/fact-icon1.png" alt="icon"
                                        class="img-fluid"></div>
                                        <h3>Student</h3>
                                        <h4 class="counter" data-target="1150">+0</h4>
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 col-6">
                                <div class="facts-container">
                                    <div class="fact-contain-img"><img src="./assets/images/fact-icon2.png" alt="icon"
                                        class="img-fluid"></div>
                                        <h3>Teachers</h3>
                                        <h4 class="counter" data-target="150">+0</h4>
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 col-6">
                                <div class="facts-container">
                                    <div class="fact-contain-img"><img src="./assets/images/fact-icon3.png" alt="icon"
                                        class="img-fluid"></div>
                                        <h3>Win Awards</h3>
                                        <h4 class="counter" data-target="60">+0</h4>
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 col-6">
                                <div class="facts-container">
                                    <div class="fact-contain-img"><img src="./assets/images/fact-icon4.png" alt="icon"
                                        class="img-fluid"></div>
                                        <h3>Classes</h3>
                                        <h4 class="counter" data-target="90">+0</h4>
                                </div>
                            </div>

                          </div>
                        </div>
                    </div>
                 </section>
    <!-- ================================ Latest Video =================================== -->
    <section class="mt-5">
        <div class="container">
            <div class="main-heading-with-show">
                <span><i class="fa-solid fa-graduation-cap"></i> Latest Video</span>
                <h2>Let's Check Our <span class="footer-icon-show">Latest Video</span></h2>
                <p>There are many variations of passages available but the majority have suffered alteration in some
                    form by injected humour randomised words which don't look even slightly believable. </p>
            </div>

            <div class="latest-video-container" id="videoContainer">
                <img src="https://www.perkypet.com/media/Articles/Perky-Pet/Connecting-Kids-with-Nature.jpg" alt="video-img" class="img-fluid" id="videoThumbnail">
                <div class="video-play-btn" id="playButton"><i class="bi bi-play-fill"></i></div>
                
                <!-- Video Element (Initially Hidden) -->
                <iframe id="videoFrame" class="video-frame" src="https://www.youtube.com/embed/-5krrl0eiKc?si=b77Txf3xioySoNLO" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>
    </section>
    <!-- ================================ Choose us =================================== -->
    <section class="mt-5">
        <div class="container">
            <div class="main-heading-with-show">
                <span><i class="fa-solid fa-graduation-cap"></i> Lorem, ipsum.</span>
                <h2>Why Choose <span class="footer-icon-show">Us</span></h2>
                <p>It is a long established fact that a reader will be distracted by the<br> readable content of a page
                    when looking at its layout.</p>
            </div>
            <div class="row mt-3">
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon1.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon2.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon3.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon4.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon5.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="choose-us-container">
                        <div><img src="./assets/images/choose-icon6.png" alt="icon" class="img-fluid"></div>
                        <h3>Quality Education</h3>
                        <p>CBSE/ICSE/State Board curriculum ke saath high-quality education aur modern teaching methods.
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- ================================ Gallery =================================== -->
    <section class="mt-5">
        <div class="container">
            <div class="main-heading-with-show">
                <span><i class="fa-solid fa-graduation-cap"></i> Gallery</span>
                <h2>Our Photo <span class="footer-icon-show">Gallery</span></h2>
                <p>It is a long established fact that a reader will be distracted by the<br> readable content of a page
                    when looking at its layout.</p>
            </div>
            <div class="row mt-4">
                <div class="col-md-5 mt-3 col-6">
                    <img src="https://www.ecolemondiale.org/public/img/banner1.jpg" alt="gallery-image"
                        class="gallery-img">
                </div>
                <div class="col-md-4 mt-3 col-6">
                    <img src="https://www.shutterstock.com/image-photo/portrait-two-diligent-girls-looking-600nw-130517294.jpg"
                        alt="gallery-image" class="gallery-img">
                </div>
                <div class="col-md-3 mt-3 col-6">
                    <img src="https://img.freepik.com/premium-photo/school-child-isolated-background-kids-education-learning-studying-knowledge-children_265223-171924.jpg"
                        alt="gallery-image" class="gallery-img">
                </div>
                <div class="col-md-5 mt-3 col-6">
                    <img src="https://st2.depositphotos.com/5653638/11536/i/450/depositphotos_115369356-stock-photo-indian-boy-and-girl-studying.jpg"
                        alt="gallery-image" class="gallery-img">
                </div>
                <div class="col-md-7 mt-3 col-6">
                    <img src="https://static.toiimg.com/thumb/msid-96781628,width-1280,height-720,imgsize-123068,resizemode-6,overlay-toi_sw,pt-32,y_pad-40/photo.jpg"
                        alt="gallery-image" class="gallery-img">
                </div>
            </div>
            <a href="#" class="text-decoration-none"><div class="text-center"><button class="gallery-explore-btn">Explore More <i class="bi bi-arrow-right"></i></button></div></a>
        </div>
    </section>
    <!-- ================================ Our Teachers =================================== -->
    <section class="mt-5 mb-5">
        <div class="container">
            <div class="main-heading-with-show">
                <span><i class="fa-solid fa-graduation-cap"></i> Our Teacher</span>
                <h2>Meet With Our <span class="footer-icon-show">Teachers</span></h2>
                <p>It is a long established fact that a reader will be distracted by the<br> readable content of a page
                    when looking at its layout.</p>
            </div>
            <div class="swiper our-team-slider mt-4 mb-4">
                <div class="swiper-wrapper">
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide main-user-slide">
                        <div class="team-slider-card">
                            <div><img
                                    src="https://public-media.interaction-design.org/images/courses/hds/course_50--square_thumbnail.jpg?tr=fo-auto"
                                    alt="icon" class="slider-user-image"></div>
                            <div class="slider-user-details">
                                <h3>Susan D. LunsFord</h3>
                                <p>Principal</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Navigation buttons -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>
  

@endsection