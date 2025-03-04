@extends('dashboard.layout.main')
@section('main-containers')

   <!-- ================================ Banner =================================== -->
   <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h1>E-library</h1>
            <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">E-library</span></h6>
        </div>
    </div>
</section>
<!-- ================================== E-Library ======================================== -->
<section class="mt-5">
    <div class="container">
        <div class="main-heading-with-show">
            <span><i class="fa-solid fa-graduation-cap"></i> Class</span>
            <h2>Explore E-Books by <span class="footer-icon-show"> Class</span></h2>

        </div>

        {{-- <div class="gallery-tabs-box mt-4">
            <div class="gallery-tab active" onclick="openGallery(event, 'paper')">Last Year Paper</div>
            <div class="gallery-tab" onclick="openGallery(event, 'notes')">Notes</div>

        </div> --}}

            
    

        <div class="gallery-tab-content active" id="paper">
            
            <div class="row">
                @foreach ($elist as $elists)
                <div class="col-md-4 mt-3">
                    <div class="e-books-show-box">
                        <div><img
                                src="{{ asset('uploads/'.$elists->image) }}"
                                alt="{{$elists->alt}}" class="img-fluid"></div>
                        <h5 class="text-center mt-4">{{$elists->title}}</h5>

                        @if ($elists->pdf != null) 
                            
                        <a href="{{ url('uploads/'.$elists->pdf) }}" class="text-decoration-none" download>
                            <div class="text-center mt-4 mb-2">
                                <span class="nav-apply-btn">Download</span>
                            </div>
                        </a>
                        @endif
                        
                    </div>
                </div>
                @endforeach
            </div>
        </div>

    

        {{-- <div class="gallery-tab-content" id="notes">
            <div class="row">
                <div class="col-md-4 mt-3">
                    <div class="e-books-show-box">
                        <div><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBrKo6ww7oRZN02rtIfmlC7hymRT4PxqWIIw&s"
                                alt="image" class="img-fluid"></div>
                        <h5 class="text-center mt-4">English-PDF</h5>
                        <a href="#" class="text-decoration-none">
                            <div class="text-center mt-4 mb-2"><span class="nav-apply-btn">Download</span></div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 mt-3">
                    <div class="e-books-show-box">
                        <div><img
                                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBrKo6ww7oRZN02rtIfmlC7hymRT4PxqWIIw&s"
                                alt="image" class="img-fluid"></div>
                        <h5 class="text-center mt-4">English-PDF</h5>
                        <a href="#" class="text-decoration-none">
                            <div class="text-center mt-4 mb-2"><span class="nav-apply-btn">Download</span></div>
                        </a>
                    </div>
                </div>
            </div>
        </div> --}}

    </div>
</section>

@endsection