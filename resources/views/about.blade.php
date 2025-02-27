@extends('dashboard.layout.main')
@section('main-containers')

  <!-- ================================ Banner =================================== -->
  <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>About Us</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">About Us</span></h6>
        </div>
    </div>
</section>
                   <!-- ================================ About Us =================================== -->
<section class="mt-5 mb-5">
<div class="container">
    <div class="main-heading-with-show">
        <span><i class="fa-solid fa-graduation-cap"></i> About Us</span>
        <h2>Our Edukation System <br><span class="footer-icon-show">Inspires</span> You More.</h2>
    </div>
    <div class="row">
        <div class="col-md-3 mt-3">
            <div class="home-abt-img1"><img src="https://media.istockphoto.com/id/578291882/photo/indian-kids-studying-on-study-table.jpg?s=612x612&w=0&k=20&c=XVwGhbMTIko1fht8W3maUIB6U8ztBMRPmZR27P2j1j8=" alt="image" class="img-fluid"></div>
            <div class="home-abt-img1 mt-2"><img src="https://img.freepik.com/premium-photo/kids-science-concept-cute-indian-little-kid-student-scientist-studying-science-experimenting-with-microscope-chemicals-with-diagrams-doodles-drawn-green-chalkboard_466689-17299.jpg?semt=ais_hybrid" alt="image" class="img-fluid"></div>
        </div>
        <div class="col-md-6 mt-1">
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
        <div class="col-md-3 mt-3">
            <div class="home-abt-img1"><img src="https://thumbs.dreamstime.com/b/happy-children-girls-girlfriend-schoolgirl-student-elementary-school-happy-children-girlfriend-schoolgirl-student-elementary-121447690.jpg" alt="image" class="img-fluid"></div>
            <div class="home-abt-img1 mt-2"><img src="https://previews.123rf.com/images/olegdudko/olegdudko1508/olegdudko150808304/43770575-school-children.jpg" alt="image" class="img-fluid"></div>
        </div>
        <div class="col-md-12 mt-4">
          <div class="about-us-content-show">
           <p>There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage..</p>
           <p>There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage. There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.</p>
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
                                <div class="fact-contain-img"><img src="./assets/images/fact-icon1.png" alt="icon" class="img-fluid"></div>
                                <h3>Students</h3>
                                <h4 class="counter" data-target="{{ $quickFacts->student }}">+0</h4>
                            </div>
                        </div>
                        <div class="col-md-3 mt-3 col-6">
                            <div class="facts-container">
                                <div class="fact-contain-img"><img src="./assets/images/fact-icon2.png" alt="icon" class="img-fluid"></div>
                                <h3>Teachers</h3>
                                <h4 class="counter" data-target="{{ $quickFacts->teacher }}">+0</h4>
                            </div>
                        </div>
                        <div class="col-md-3 mt-3 col-6">
                            <div class="facts-container">
                                <div class="fact-contain-img"><img src="./assets/images/fact-icon3.png" alt="icon" class="img-fluid"></div>
                                <h3>Win Awards</h3>
                                <h4 class="counter" data-target="{{ $quickFacts->win_awards }}">+0</h4>
                            </div>
                        </div>
                        <div class="col-md-3 mt-3 col-6">
                            <div class="facts-container">
                                <div class="fact-contain-img"><img src="./assets/images/fact-icon4.png" alt="icon" class="img-fluid"></div>
                                <h3>Classes</h3>
                                <h4 class="counter" data-target="{{ $quickFacts->classes }}">+0</h4>
                            </div>
                        </div>
                    </div>
                    
                </div>
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
     
        
            @foreach ($teachers as  $teacher)
                   
               <div class="swiper-slide main-user-slide">
                   <div class="team-slider-card">
                       <div><img
                        src="{{url('uploads/'.$teacher->image)}}" alt="icon" class="slider-user-image"></div>
                    
                        <div class="slider-user-details">
                            <h3>{{$teacher->name}}</h3>
                            <p>{{$teacher->profession}}</p>
                        </div>
                    </div>
                </div>
                @endforeach
                
          
        
        </div>

        <!-- Navigation buttons -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
</div>
</section>


@endsection