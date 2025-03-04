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
            <span><i class="fa-solid fa-graduation-cap"></i> Art & craft</span>
            <h2>Inspire Your Crafting <br><span class="footer-icon-show">Journey</span></h2>
        </div>
        <div class="row">
            <div class="col-md-12 mt-4">
                <div class="row mb-4 g-1">
                    <div class="col-md-6 mt-3">
                        <div>
                            <img src="https://growingkids.com/wp-content/uploads/elementor/thumbs/M3791-The-Benefits-of-Preschool-Featured-Image-qmwkvv7svsw6proauxbob0a3nvs1v1q0y3w6gbqb2g.jpg"
                                alt="image" class="admission-procedure" style="position: relative;">
                        </div>

                    </div>
                    <div class="col-md-6 mt-3">
                        <div class="gallery-item academic-video-play-show">
                            <img src="https://media.istockphoto.com/id/950887376/photo/elementary-classmates-work-on-project-together.jpg?s=612x612&w=0&k=20&c=Gtjgs9TDnwYoq8GgMpG-NiSVx0WkPOlo4buEW_R5ig8="
                                alt="Mountain Image">
                            <button class="play-btn"
                                onclick="openVideo('https://www.youtube.com/embed/-5krrl0eiKc?si=OU2BP1t1d86ksS74')"></button>
                        </div>
                    </div>

                </div>
                <div class="about-us-content-show">
                    <p>There are many variations of passages available but the majority have suffered alteration in
                        some form by injected humour randomised words which don't look even slightly believable. If
                        you are going to use passage There are many variations of passages available but the
                        majority have suffered alteration in some form by injected humour randomised words which
                        don't look even slightly believable. If you are going to use passage.There are many
                        variations of passages available but the majority have suffered alteration in some form by
                        injected humour randomised words which don't look even slightly believable. If you are going
                        to use passage..</p>
                    <ul>
                        <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos sit repellendus, nulla
                            amet sapiente numquam delectus tempore molestiae aspernatur velit.</li>
                        <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. In tenetur dicta obcaecati
                            culpa ea ipsum repudiandae recusandae quia accusantium esse.</li>
                    </ul>
                    <ol>
                        <li>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos sit repellendus, nulla
                            amet sapiente numquam delectus tempore molestiae aspernatur velit.</li>
                        <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. In tenetur dicta obcaecati
                            culpa ea ipsum repudiandae recusandae quia accusantium esse.</li>
                    </ol>
                    <p>There are many variations of passages available but the majority have suffered alteration in
                        some form by injected humour randomised words which don't look even slightly believable. If
                        you are going to use passage.There are many variations of passages available but the
                        majority have suffered alteration in some form by injected humour randomised words which
                        don't look even slightly believable. If you are going to use passage. There are many
                        variations of passages available but the majority have suffered alteration in some form by
                        injected humour randomised words which don't look even slightly believable. If you are going
                        to use passage.</p>
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