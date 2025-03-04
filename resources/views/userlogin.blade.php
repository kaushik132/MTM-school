@extends('dashboard.layout.main')
@section('main-containers')
    <!-- =================================== Header ======================================== -->
 
        <!-- ================================ user login =================================== -->
         <section class="user-login-container">
            <div class="login-background-shadow">
                <div class="container">
                    <div class="user-container-loginbox">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="login-image-bg-box">
                                    <div class="user-image-loginbg">
                                      <div class="text-center"><img src="./assets/images/logo.png" alt="image" class="img-fluid"></div>
                                      <h2>Welcome Back!</h2>
                                      <p>To keep connected with us please login with your personal info</p>
                                      <a href="{{url('user-signup')}}"><div class="text-center"><button class="login-signup-btns">Sign up</button></div></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="login-content-dtls">
                                    <h2>Login</h2>
                                    <p>welcome Back! please login in your account</p>
                                    @if(Session::has('error'))
                                    <div class="alert alert-danger" role="alert">
                                        {{ Session::get('error') }}
                                    </div>
                                @endif
                                </div>
                                <form action="{{ route('login') }}" method="post" class="p-3">
                                    @csrf
                                    <label for="" class="login-label">Enter Email</label>
                                    <input type="email" name="email" class="login-input-show" placeholder="Email">
                                    <label for="" class="login-label">Enter Password</label>
                                    <input type="text" name="password" class="login-input-show" placeholder="Password">
                                    <div class="d-flex justify-content-between align-items-center mt-2">
                                     
                                     
                                    </div>
                                    <div><button class="main-login-btn-show">Login</button></div>
                                    <p class="text-center checkbox-label text-muted mt-4">Don’t have an account? <a href="{{url('user-signup')}}" class="text-decoration-none checkbox-label">Sign up</a></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </section>


@endsection