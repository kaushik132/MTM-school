@extends('dashboard.layout.main')
@section('main-containers')

       <!-- ================================ Banner =================================== -->
       <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h1>Application Form</h1>
                <h6>Home <i class="bi bi-chevron-right"></i> <span class="footer-icon-show">Application Form</span></h6>
            </div>
        </div>
    </section>
<!-- ================================ Application Form =================================== -->
<section class="mt-5 mb-5">
<div class="container">
   <form action="" class="application-form-box">
        <h1>Application Form</h1>
        <hr>
        <div class="row">
            <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">First Name</label>
                <input type="text" placeholder="First Name" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Last Name</label>
                <input type="text" placeholder="Last Name" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Father's Name</label>
                <input type="text" placeholder="Your Father Name" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Mother's Name</label>
                <input type="text" placeholder="Your Mother Name" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Contact Number</label>
                <input type="text" placeholder="Your Contact Number" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Email ID</label>
                <input type="email" placeholder="Your Email Address" class="input-box-show">
               </div>
               <div class="col-md-12 mt-3">
                <label for="" class="form-label-show">Present Address</label>
                <input type="text" placeholder="Your Address" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Dath of Birth</label>
                <input type="date" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Gender</label>
                <select name="" id="" class="input-box-show">
                    <option value="">Choose Gender</option>
                    <option value="">Male</option>
                </select>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Desire Class for Admission</label>
                <select name="" id="" class="input-box-show">
                    <option value="">select</option>
                    <option value="">Option 1</option>
                </select>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Present School and Class</label>
                <input type="text" placeholder="School and Class" class="input-box-show">
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Student Photo</label>
                <input type="file" class="input-box-show">
                <small>You have must be in passport size. Max upload size 1MB.</small>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Birth Document</label>
                <input type="file" class="input-box-show">
                <small>Upload file size must be in 1MB</small>
               </div>
               <div class="col-md-12 mt-5 mb-3">
                <button class="discover-more-btn">Submit Application &rarr;</button>
            </div>
        </div>
   </form>
</div>
</section>

@endsection