@extends('dashboard.layout.main')
@section('main-containers')

  <!-- ================================ Banner =================================== -->
  <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>Art & craft</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Art & craft</span></h6>
        </div>
    </div>
</section>
<!-- ================================ Beyond Academic =================================== -->
<section class="mt-5 mb-5">
    <div class="container">
        <div class="main-heading-with-show">
            <span><i class="fa-solid fa-graduation-cap"></i> {{$beyodData->heading_title}}</span>
            <h2>Inspire Your Crafting <br><span class="footer-icon-show">Journey</span></h2>
        </div>
        <div class="row">
            <div class="col-md-12 mt-4">
                <div class="row mb-4 g-1">
                    <div class="col-md-6 mt-3">
                        <div>
                            <img src="{{url('uploads/'.$beyodData->image)}}"
                                alt="{{$beyodData->alt}}" class="admission-procedure" style="position: relative;">
                        </div>

                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="gallery-item academic-video-play-show">
                            <img src="{{url('uploads/'.$beyodData->video_image)}}"
                                alt="Mountain Image">
                            <button class="play-btn"
                                onclick="openVideo('{{$beyodData->vidoe_link}}')"></button>
                        </div>
                    </div>

                </div>
                <div class="about-us-content-show">
                    <p>{!!$beyodData->contant!!}</p>
                 
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ====================== Gallery Media Show ================================= -->
<div class="popup-box" id="popup-video">
    <div class="popup-content">
        <button class="close-btn-show" onclick="closeVideo()">X</button>
        <iframe id="video-frame" src="" allowfullscreen referrerpolicy="strict-origin-when-cross-origin"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
    </div>
</div>
    
@endsection