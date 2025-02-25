@extends('dashboard.layout.main')
@section('main-containers')


       <!-- ================================ Banner =================================== -->
       <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h1>How to apply</h1>
                <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Admission</span> <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">How to apply</span></h6>
            </div>
        </div>
    </section>
<!-- ================================ How to Apply =================================== -->
<section class="mt-5">
<div class="container">
    <div class="row">
        <div class="col-md-7 mt-3">
            <div class="main-heading-with-show text-start">
                <span><i class="fa-solid fa-graduation-cap"></i> How to apply</span>
                <h2>Details About <span class="footer-icon-show">How To Apply</span></h2>
                
            </div>
            <p class="admission-dtls-para">There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.</p>
            <p class="admission-dtls-para">There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.</p>
        
            <div class="row mt-4">
                <div class="col-md-6">
                 <ul class="admission-check-list">
                    <li><i class="bi bi-check-circle-fill text-success"></i> Start Online Submission</li>
                    <li><i class="bi bi-check-circle-fill text-success"></i> Submit The Form</li>
                    <li><i class="bi bi-check-circle-fill text-success"></i> Review The Submission</li>
                 </ul>
                </div>
                <div class="col-md-6">
                    <ul class="admission-check-list">
                       <li><i class="bi bi-check-circle-fill text-success"></i> Gather Necessary Documents</li>
                       <li><i class="bi bi-check-circle-fill text-success"></i> Interviewing Process</li>
                       <li><i class="bi bi-check-circle-fill text-success"></i> Last Decision</li>
                    </ul>
                   </div>
            </div>
        
        </div>
        <div class="col-md-5 mt-3 text-center">
          <div class="admission-container-box">
            <img src="https://media.istockphoto.com/id/675073328/vector/admission-concept-on-keyboard-button-3d-rendering.jpg?s=612x612&w=0&k=20&c=rsDToN9NseYiS5WEw48w6J_Ll4eWafgbeBwgml5Q254=" alt="image" class="admission-show-image">
          </div>
        </div>

        <div class="col-md-12 mt-4">
            <ul class="admission-check-list">
                <li><i class="bi bi-check-circle-fill text-success"></i> Sed ut perspiciatis unde omnis iste natus error sit doloremque laudantium.</li>
                <li><i class="bi bi-check-circle-fill text-success"></i> Totam rem aperiam eaque ipsa quae ab illo inventore veritatis.</li>
                <li><i class="bi bi-check-circle-fill text-success"></i> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit.</li>
                <li><i class="bi bi-check-circle-fill text-success"></i> Dolores eos qui ratione voluptatem sequi nesciunte porro quisquam est.</li>
                <li><i class="bi bi-check-circle-fill text-success"></i> Adipisci velit sed quia non numquam eius modi tempora incidunt.</li>
            </ul>
        </div>
    </div>
   
    <div class="row faq-contain-box mb-5">
        <div class="col-md-6 mt-4">
            <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item mt-3">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        How can do i apply?
                    </button>
                  </h2>
                  <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                  </div>
                </div>
                <div class="accordion-item mt-3">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        How can do i apply?
                    </button>
                  </h2>
                  <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                  </div>
                </div>
                <div class="accordion-item mt-3">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        How can do i apply?
                    </button>
                  </h2>
                  <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                  </div>
                </div>
              </div>
        </div>
        <div class="col-md-6 mt-4">
            <div class="main-heading-with-show text-start">
                <span><i class="fa-solid fa-graduation-cap"></i> FAQ</span>
                <h2>General <span class="footer-icon-show">frequently </span> asked questions </h2>
                
            </div>
            <p class="admission-dtls-para">There are many variations of passages available but the majority have suffered alteration in some form by injected humour randomised words which don't look even slightly believable. If you are going to use passage.</p>
            
        
        </div>
    </div>

</div>
</section>
    
@endsection