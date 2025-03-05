@extends('dashboard.layout.main')
@section('main-containers')


<!-- ================================ Banner =================================== -->
<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>{{$blogData->blogCategory->name}}</h1>
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
                <div class="mb-3"><img src="{{url('uploads/',$blogData->image)}}" alt="{{$blogData->alt}}" class="img-fluid rounded"></div>
                <h2>{{$blogData->title}}</h2>
                <p>{!!$blogData->description!!}</p>
               </div>
        </div>
        <div class="col-md-4 mt-3">
            {{-- <div class="related-blog-box-show">
                <h5>Search</h5>
                <div class="underline-show"></div>
{{--             
                    <form action="" style="position: relative;">
                       <input type="text" class="main-blog-input">
                       <div class="blog-search-box"><i class="bi bi-search"></i></div>
                    </form> 
               
                </div> --}}
            <div class="related-blog-box-show mt-1">
                <h5>Related <span>Blog</span></h5>
                <div class="underline-show"></div>

                @foreach ($blog as $recentBlog)
                    
                <a href="{{url('blog/'.$recentBlog->slug)}}" class="text-decoration-none">
                    <div class="d-flex align-items-center mt-3">
                        <div><img src="{{url('uploads/'.$recentBlog->image)}}" alt="{{$recentBlog->alt}}" class="related-main-image"></div>
                        <div class="related-blog-link ms-2">
                            <div>{{$recentBlog->title}}</div>
                            <small><i class="bi bi-calendar-fill"></i> {{ \Carbon\Carbon::parse($recentBlog->created_at)->format('d M, Y') }}
                            </small>
                        </div>
                    </div>
                    
                </a>
                @endforeach
           
            
                
             </div>

             <div class="related-blog-box-show mt-3">
                <h5>Popular <span>Tags</span></h5>
                <div class="underline-show"></div>
                 <div class="d-flex align-items-center flex-wrap mt-4">
                    @foreach ($blogCategory as $category)
                        
                    <a href="{{url('blogs',$category->slug)}}" class="text-decoration-none"><div class="popular-tag-show">{{$category->name}}</div></a>
                    @endforeach
                  
                 </div>
                </div>

        </div>
       </div> 
    </div>
</section>



@endsection