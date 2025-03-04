@extends('dashboard.layout.main')
@section('main-containers')

<!-- ================================ Banner =================================== -->
<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>Blog</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Blog</span></h6>
        </div>
    </div>
</section>
<!-- ================================== Blog ======================================== -->
<section class="mt-5">
    <div class="container">
        <div class="main-heading-with-show">
            <span><i class="fa-solid fa-graduation-cap"></i> Blog</span>
            <h2>Latest <span class="footer-icon-show">Blog</span></h2>

        </div>

       
            <div class="row mb-4">
                <div class="col-md-6 mt-3">
                    <div class="main-blog-box-show">
                        <div><img src="https://media.tacdn.com/media/attractions-splice-spp-674x446/09/2f/aa/4c.jpg" alt="blog-image" class="main-blog-image"></div>
                        <div class="updation-title-show">Updated</div>
                         <h3>It is a long established fact that a reader</h3>
                         <p>The Mobility Arrangement for Talented Early-professionals Scheme (MATES) Visa offers young Indian professionals a unique chance to live and work in Australia for up to two years.</p>
                       <div class="d-flex justify-content-between align-items-center mt-2">
                         <a href="blog-details.html"><div style="color:var(--first-color)">Read More</div></a>
                         <div class="text-muted"><small><i class="bi bi-calendar-fill"></i> 16 January 2025</small></div>
                       </div>
                     </div>
                </div>
                <div class="col-md-6 mt-3">
                    <div class="main-blog-box-show">
                        <div><img src="https://media.tacdn.com/media/attractions-splice-spp-674x446/09/2f/aa/4c.jpg" alt="blog-image" class="main-blog-image"></div>
                        <div class="updation-title-show">Updated</div>
                         <h3>It is a long established fact that a reader</h3>
                         <p>The Mobility Arrangement for Talented Early-professionals Scheme (MATES) Visa offers young Indian professionals a unique chance to live and work in Australia for up to two years.</p>
                       <div class="d-flex justify-content-between align-items-center mt-2">
                         <a href="blog-details.html"><div style="color:var(--first-color)">Read More</div></a>
                         <div class="text-muted"><small><i class="bi bi-calendar-fill"></i> 16 January 2025</small></div>
                       </div>
                     </div>
                </div>
        </div>

        <div class="mt-5">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item active"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
        </div>
    </div>
</section>    

@endsection