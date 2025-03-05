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
              @foreach ($blogList as $blog)
                  
        
                <div class="col-md-6 mt-3">
                    <div class="main-blog-box-show">
                        <div><img src="{{url('uploads/'.$blog->image)}}" alt="{{$blog->alt}}" class="main-blog-image"></div>
                        <div class="updation-title-show">Updated</div>
                         <h3>{{$blog->title}}</h3>
                         <p>{{$blog->short_content}}</p>
                       <div class="d-flex justify-content-between align-items-center mt-2">
                         <a href="{{url('blog/'.$blog->slug)}}"><div style="color:var(--first-color)">Read More</div></a>
                         <div class="text-muted"><small><i class="bi bi-calendar-fill"></i> 16 January 2025</small></div>
                       </div>
                     </div>
                </div>
                @endforeach
        </div>

{{$blogList->links()}}

        {{-- <div class="mt-5">
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
        </div> --}}
    </div>
</section>    

@endsection