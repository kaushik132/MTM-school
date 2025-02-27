@extends('dashboard.layout.main')
@section('main-containers')

      <!-- ================================ Banner =================================== -->
      <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h1>Activities</h1>
                <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Admission</span> <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Activities</span></h6>
            </div>
        </div>
    </section>
<!-- ================================ Activities =================================== -->
<section class="mt-5 mb-5">
<div class="container">
    <div class="main-heading-with-show mb-5">
        <span><i class="fa-solid fa-graduation-cap"></i> Our Activities</span>
        <h2>Details About Recent <br>Student <span class="footer-icon-show">Activity.</span></h2>
        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
    </div>

    @foreach($activities as $activity)
    <div class="activities-box-show mb-4 p-4 rounded shadow bg-white">
        <div class="row align-items-center">
            @if($loop->index % 2 == 0)
                <div class="col-md-5 text-center">
                    <img src="{{ url('uploads/'.$activity->image) }}" alt="{{ $activity->alt }}" class="img-fluid rounded-circle" style="width: 200px; height: 200px; object-fit: cover;">
                </div>
                <div class="col-md-7">
                    <h3 class="fw-bold">{{ $activity->name }}</h3>
                    <p>{{ $activity->content }}</p>
                </div>
            @else
                <div class="col-md-7">
                    <h3 class="fw-bold">{{ $activity->name }}</h3>
                    <p>{{ $activity->content }}</p>
                </div>
                <div class="col-md-5 text-center">
                    <img src="{{ url('uploads/'.$activity->image) }}" alt="{{ $activity->alt }}" class="img-fluid rounded-circle" style="width: 200px; height: 200px; object-fit: cover;">
                </div>
            @endif
        </div>
    </div>
@endforeach



</div>
</section>

@endsection