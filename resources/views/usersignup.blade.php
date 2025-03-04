@extends('dashboard.layout.main')
@section('main-containers')

        <!-- ================================ user login =================================== -->
         <section class="user-login-container">
            <div class="login-background-shadow">
                <div class="container">
                    <div class="user-container-loginbox">
                        <div class="row faq-contain-box">
                            <div class="col-md-6">
                                <div class="login-content-dtls">
                                    <h2>Create Your Account</h2>
                                    <p>Hello Friend! please sign up your account</p>
                                    @if(Session::has('success'))
                                    <div class="alert alert-success" role="alert">
                                        {{ Session::get('success') }}
                                    </div>
                                @endif
                                </div>
                                <form action="{{ route('register') }}" method="post" class="p-3">
                                    @csrf
                                    <label for="" class="login-label">Username   <span>
                                        @error('name')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </span></label>
                                    <input type="text" name="name" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="login-input-show" placeholder="Username">
                                  
                                    <label for="" class="login-label">Email ID   <span>
                                        @error('email')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </span></label>
                                    <input type="email" name="email" class="login-input-show" placeholder="Username">
                                   
                                    <label for="" class="login-label">Password    <span>
                                        @error('password')
                                            <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </span></label>
                                    <input type="password" name="password" class="login-input-show" placeholder="Password">
                                 
                                    <div class="d-flex justify-content-between align-items-center mt-2">
                                  
                                  
                                    </div>
                                    <div><button class="main-login-btn-show">Sign up</button></div>
                                    <p class="text-center checkbox-label text-muted mt-4">Don’t have an account? <a href="{{url('user-login')}}" class="text-decoration-none checkbox-label">Login</a></p>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <div class="login-image-bg-box">
                                    <div class="user-image-loginbg">
                                      <div class="text-center"><img src="./assets/images/logo.png" alt="image" class="img-fluid"></div>
                                      <h2>Welcome Back!</h2>
                                      <p>To keep connected with us please login with your personal info</p>
                                      <a href="{{url('user-login')}}"><div class="text-center"><button class="login-signup-btns">Login</button></div></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </section>

@endsection 