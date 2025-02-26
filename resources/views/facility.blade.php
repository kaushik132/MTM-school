@extends('dashboard.layout.main')
@section('main-containers')


       <!-- ================================ Banner =================================== -->
       <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h1>Facilities</h1>
                <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Admission</span> <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Facilities</span></h6>
            </div>
        </div>
    </section>
<!-- ================================ Facility =================================== -->
<section class="mt-5 mb-5">
<div class="container">
    <div class="main-heading-with-show">
        <span><i class="fa-solid fa-graduation-cap"></i> Our Facilities</span>
        <h2>Let's Check Our<span class="footer-icon-show">Facilities</span></h2>
        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
    </div>
    <div class="row mt-3">
    
  
        @foreach ($facal as $facs)
                    
              
        <div class="col-md-3 mt-3">
            <div class="facility-container">
                <div class="faclty-contain-img"><img src="{{url('uploads/'.$facs->image)}}" alt="icon"
                        class="img-fluid"></div>
                <h3>{{$facs->name}}</h3>
                <p>{{$facs->content}}</p>
            </div>
        </div>
        @endforeach
      
    
     
      
      
  
     
      
    
   
      
    
    </div>
</div>
</section>
    
@endsection