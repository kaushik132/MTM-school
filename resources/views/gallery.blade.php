@extends('dashboard.layout.main')
@section('main-containers')
    
<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>Gallery</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Gallery</span></h6>
        </div>
    </div>
</section>
<!-- ================================ Gallery =================================== -->
<section class="mt-5 mb-5">
    <div class="container-fluid">
        <div class="main-heading-with-show">
            <span><i class="fa-solid fa-graduation-cap"></i> Gallery</span>
            <h2>Our Photo <span class="footer-icon-show">Gallery</span></h2>
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout.</p>
        </div>

        <div class="gallery-tabs-box mt-4">
            <div class="gallery-tab active" onclick="openGallery(event, 'photo')">Photo</div>
            <div class="gallery-tab" onclick="openGallery(event, 'media')">Media</div>
           
        </div>
    
        <div class="gallery-tab-content active" id="photo">
            <div class="gallery">
            

                @foreach ($galleryImages as $galleryImage)
                <div class="gallery-item">
                    <img src="{{ asset('uploads/'.$galleryImage->image) }}" alt="{{$galleryImage->alt}}">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                    
                @endforeach
              
            

        
         
               
            </div>
        
           
        </div>
        <div class="gallery-tab-content" id="media">
            <div class="gallery">
           
@foreach ($galleryVideos as $galleryVideo)
                <div class="gallery-item">
                    <img src="{{ asset('uploads/'.$galleryVideo->image) }}" alt="{{$galleryVideo->alt}}">
                    <button class="play-btn" onclick="openVideo('{{ $galleryVideo->video_link}}')"></button>    
                </div>
                @endforeach

            

            </div>
        </div>
       
    </div>
</section>

<!-- ====================== Gallery Image Show ================================= -->
<div class="popup-box" id="popup">
    <div class="popup-content">
        <button class="close-btn-show" onclick="closePopup()">X</button>
        <img id="popup-img" src="" alt="Full Image">
    </div>
</div>

    <!-- ====================== Gallery Media Show ================================= -->
    <div class="popup-box" id="popup-video">
        <div class="popup-content">
            <button class="close-btn-show" onclick="closeVideo()">X</button>
            <iframe id="video-frame" src="" allowfullscreen referrerpolicy="strict-origin-when-cross-origin" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"></iframe>
        </div>
    </div>


@endsection