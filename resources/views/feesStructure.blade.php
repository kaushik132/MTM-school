@extends('dashboard.layout.main')
@section('main-containers')

<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>Fees Structure</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Admission</span> <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Fees Structure</span></h6>
        </div>
    </div>
</section>
<!-- ================================ How to Apply =================================== -->
<section class="mt-5">
<div class="container">
    @foreach ($fees as $fee)
    
    <p>{!!$fee->fees_structure_content!!}</p> 
    @endforeach
    
</div>
    
@endsection