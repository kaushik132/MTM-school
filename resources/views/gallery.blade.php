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
                <div class="gallery-item">
                    <img src="https://gradepowerlearning.com/wp-content/uploads/2024/05/Students-not-paying-attention-in-class.jpg" alt="Nature Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/1144235214/photo/children-reading.jpg?s=612x612&w=0&k=20&c=ZT2gaasdr5EypvaSmq8si_guyIRZ1Gml0bjHWF4hMt0=" alt="Mountain Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://img.freepik.com/free-photo/schoolchildren-reading-library_1098-4048.jpg?semt=ais_hybrid" alt="Forest Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>

                <div class="gallery-item">
                    <img src="https://thumbs.dreamstime.com/b/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972.jpg" alt="Nature Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/950887376/photo/elementary-classmates-work-on-project-together.jpg?s=612x612&w=0&k=20&c=Gtjgs9TDnwYoq8GgMpG-NiSVx0WkPOlo4buEW_R5ig8=" alt="Mountain Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://t3.ftcdn.net/jpg/00/53/04/84/240_F_53048436_7uKgLgRO5kcfcZc6glMF37YB0JrJCrRA.jpg" alt="Forest Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://thumbs.dreamstime.com/b/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972.jpg" alt="Nature Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/950887376/photo/elementary-classmates-work-on-project-together.jpg?s=612x612&w=0&k=20&c=Gtjgs9TDnwYoq8GgMpG-NiSVx0WkPOlo4buEW_R5ig8=" alt="Mountain Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
                <div class="gallery-item">
                    <img src="https://t3.ftcdn.net/jpg/00/53/04/84/240_F_53048436_7uKgLgRO5kcfcZc6glMF37YB0JrJCrRA.jpg" alt="Forest Image">
                    <button class="fullview-btn" onclick="openPopup(this)">Full View</button>
                </div>
            </div>
        
           
        </div>
        <div class="gallery-tab-content" id="media">
            <div class="gallery">
                <div class="gallery-item">
                    <img src="https://gradepowerlearning.com/wp-content/uploads/2024/05/Students-not-paying-attention-in-class.jpg" alt="Nature Image">
                  <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/1144235214/photo/children-reading.jpg?s=612x612&w=0&k=20&c=ZT2gaasdr5EypvaSmq8si_guyIRZ1Gml0bjHWF4hMt0=" alt="Mountain Image">
                  <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://img.freepik.com/free-photo/schoolchildren-reading-library_1098-4048.jpg?semt=ais_hybrid" alt="Forest Image">
                  <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>

                <div class="gallery-item">
                    <img src="https://thumbs.dreamstime.com/b/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972.jpg" alt="Nature Image">
                  <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/950887376/photo/elementary-classmates-work-on-project-together.jpg?s=612x612&w=0&k=20&c=Gtjgs9TDnwYoq8GgMpG-NiSVx0WkPOlo4buEW_R5ig8=" alt="Mountain Image">
                  <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://t3.ftcdn.net/jpg/00/53/04/84/240_F_53048436_7uKgLgRO5kcfcZc6glMF37YB0JrJCrRA.jpg" alt="Forest Image">
                 <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://thumbs.dreamstime.com/b/smart-kids-pupils-writing-down-data-notebook-communicating-classmates-lesson-school-daytime-diligent-249028972.jpg" alt="Nature Image">
                 <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://media.istockphoto.com/id/950887376/photo/elementary-classmates-work-on-project-together.jpg?s=612x612&w=0&k=20&c=Gtjgs9TDnwYoq8GgMpG-NiSVx0WkPOlo4buEW_R5ig8=" alt="Mountain Image">
                 <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
                <div class="gallery-item">
                    <img src="https://t3.ftcdn.net/jpg/00/53/04/84/240_F_53048436_7uKgLgRO5kcfcZc6glMF37YB0JrJCrRA.jpg" alt="Forest Image">
                 <button class="play-btn" onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                </div>
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