@extends('dashboard.layout.main')
@section('main-containers')

    <!-- ================================ Banner =================================== -->
    <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h1>Admission Procedure</h1>
                <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Admission Procedure</span></h6>
            </div>
        </div>
    </section>

                            <!-- ================================ Admission Procedure =================================== -->
<section class="mt-5 mb-5">
    <div class="container">
        <div class="main-heading-with-show">
            <span><i class="fa-solid fa-graduation-cap"></i> Admission Procedure</span>
            <h2>Step-by-Step Guide for a <br><span class="footer-icon-show">Smooth Enrollment </span></h2>
        </div>
        @if ($admition->isNotEmpty())
            @php
            $ad = $admition->first();
            @endphp
            <div class="row">
            <div class="col-md-12 mt-4">
                <div><img src="{{url('uploads/'.$ad->image)}}" alt="{{$ad->alt}}" class="admission-procedure"></div>
                <div class="about-us-content-show">
                <p>{!!$ad->content!!}</p>
                </div>
            </div>
            </div>
        @endif
        </div>
        </section>

@endsection
