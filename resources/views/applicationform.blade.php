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
   <form action="{{route('application-form.post')}}" method="POST" enctype="multipart/form-data" class="application-form-box">
    @csrf
        <h1>Application Form</h1>
        @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
        <hr>
        <div class="row">
            <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">First Name</label>
                <input type="text" name="fname" placeholder="First Name" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="input-box-show">
                <span>
                    @error('fname')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Last Name</label>
                <input type="text" name="lname" placeholder="Last Name" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="input-box-show">
                <span>
                    @error('lname')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Father's Name</label>
                <input type="text" name="father_name" placeholder="Your Father Name" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="input-box-show">
                <span>
                    @error('father_name')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Mother's Name</label>
                <input type="text" name="mother_name" placeholder="Your Mother Name" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="input-box-show">
                <span>
                    @error('mother_name')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Contact Number</label>
                <input type="text" name="contact_no" placeholder="Your Contact Number" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="input-box-show">
                <span>
                    @error('contact_no')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror   
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Email ID</label>
                <input type="email" name="email" placeholder="Your Email Address" class="input-box-show">
                <span>
                    @error('email')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-12 mt-3">
                <label for="" class="form-label-show">Present Address</label>
                <input type="text" name="present_address" placeholder="Your Address" class="input-box-show">
                <span>
                    @error('present_address')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Dath of Birth</label>
                <input type="date" name="dob" class="input-box-show">
                    <span>
                        @error('dob')
                        <strong class="text-danger">{{ $message }}</strong>
                        @enderror
                    </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Gender</label>
                <select name="gender" id="" class="input-box-show">
                    
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Desire Class for Admission</label>
                <select name="desire_class" id="" class="input-box-show">
                    {{-- <option value="">select</option> --}}
                    <option value="Option 1">Option 1</option>
                </select>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Present School and Class</label>
                <input type="text" name="present_school" placeholder="School and Class" class="input-box-show">
                <span>
                    @error('present_school')
                    <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                </span>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Student Photo</label>
                <input type="file" name="student_photo" class="input-box-show">
                <small>You have must be in passport size. Max upload size 1MB.</small>
               </div>
               <div class="col-md-6 mt-3">
                <label for="" class="form-label-show">Birth Document</label>
                <input type="file" name="birth_document" class="input-box-show">
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