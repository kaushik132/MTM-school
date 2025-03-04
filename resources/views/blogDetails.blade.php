@extends('dashboard.layout.main')
@section('main-containers')


<!-- ================================ Banner =================================== -->
<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>Blog Details</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Blog Details</span></h6>
        </div>
    </div>
</section>
<!-- ================================== Blog ======================================== -->
<section class="mt-4">
    <div class="container">
       <div class="row mb-4">
        <div class="col-md-8 mt-3">
            <div class="about-us-content-show">
                <div class="mb-3"><img src="https://www.rasmussen.edu/images/rasmussenlibraries/blogs/education-10-proven-classroom-management-blog-s.jpg" alt="blog-image" class="img-fluid rounded"></div>
                <h2>Lorem ipsum dolor sit amet consectetur adipisicing.</h2>
                <p>There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage..</p>
                <ul>
                 <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos sit repellendus, nulla amet sapiente numquam delectus tempore molestiae aspernatur velit.</li>
                  <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. In tenetur dicta obcaecati culpa ea ipsum repudiandae recusandae quia accusantium esse.</li>
             </ul>
             <ol>
                 <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos sit repellendus, nulla amet sapiente numquam delectus tempore molestiae aspernatur velit.</li>
                  <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. In tenetur dicta obcaecati culpa ea ipsum repudiandae recusandae quia accusantium esse.</li>
             </ol>
                <p>There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage. There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.</p>
               </div>
        </div>
        <div class="col-md-4 mt-3">
            <div class="related-blog-box-show">
                <h5>Search</h5>
                <div class="underline-show"></div>
            
                    <form action="" style="position: relative;">
                       <input type="text" class="main-blog-input">
                       <div class="blog-search-box"><i class="bi bi-search"></i></div>
                    </form>
               
                </div>
            <div class="related-blog-box-show mt-3">
                <h5>Related <span>Blog</span></h5>
                <div class="underline-show"></div>
                <a href="#" class="text-decoration-none">
                    <div class="d-flex align-items-center mt-3">
                        <div><img src="https://www.rasmussen.edu/images/rasmussenlibraries/blogs/education-10-proven-classroom-management-blog-s.jpg" alt="image" class="related-main-image"></div>
                        <div class="related-blog-link ms-2">
                            <div>Lorem ipsum dolor, sit amet consectetur adipisicing.</div>
                            <small><i class="bi bi-calendar-fill"></i> 28 Feb, 2025</small>
                          </div>
                    </div>
                   
                </a>
                <a href="#" class="text-decoration-none">
                    <div class="d-flex align-items-center mt-3">
                        <div><img src="https://www.rasmussen.edu/images/rasmussenlibraries/blogs/education-10-proven-classroom-management-blog-s.jpg" alt="image" class="related-main-image"></div>
                        <div class="related-blog-link ms-2">
                            <div>Lorem ipsum dolor, sit amet consectetur adipisicing.</div>
                            <small><i class="bi bi-calendar-fill"></i> 28 Feb, 2025</small>
                          </div>
                    </div>
                   
                </a>
                <a href="#" class="text-decoration-none">
                    <div class="d-flex align-items-center mt-3">
                        <div><img src="https://www.rasmussen.edu/images/rasmussenlibraries/blogs/education-10-proven-classroom-management-blog-s.jpg" alt="image" class="related-main-image"></div>
                        <div class="related-blog-link ms-2">
                            <div>Lorem ipsum dolor, sit amet consectetur adipisicing.</div>
                            <small><i class="bi bi-calendar-fill"></i> 28 Feb, 2025</small>
                          </div>
                    </div>
                   
                </a>
                
             </div>

             <div class="related-blog-box-show mt-3">
                <h5>Popular <span>Tags</span></h5>
                <div class="underline-show"></div>
                 <div class="d-flex align-items-center flex-wrap mt-4">
                  <a href="#" class="text-decoration-none"><div class="popular-tag-show">Courses</div></a>
                  <a href="#" class="text-decoration-none"><div class="popular-tag-show">Courses</div></a>
                  <a href="#" class="text-decoration-none"><div class="popular-tag-show">Courses</div></a>
                  <a href="#" class="text-decoration-none"><div class="popular-tag-show">Courses</div></a>
                  <a href="#" class="text-decoration-none"><div class="popular-tag-show">Courses</div></a>
                 </div>
                </div>

        </div>
       </div> 
    </div>
</section>



@endsection