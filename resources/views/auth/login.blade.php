@extends("layouts.login-app")
@section('content')
    <!-- Begin: Main -->
    <main class="_backUser-page">
       <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 mx-auto">
                   
                    <form method="POST" action="{{ route('login') }}" class="_popModal-form ">
                        @csrf
                        <figure class="text-center">
                            <img src="images/logo-icon.png" alt="">
                        </figure>
                        <div class="form-group">
                           
                             <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email Id">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group">
                           <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                      <span class="_input-msg" id="forgotPassword-btn">Forgot?</span>
                                    </a>
                                @endif
                          
                        </div>
                        <div class="form-group">
                            <button class="btn _btn _submit-btn" type="submit">Login</button>
                        </div>                
                        <!-- <button class="_login-btn _mob-login" id="mobLogin">Login With Mobile number</button> -->
                    </form>
                </div>
            </div>           
       </div>
    </main>
    <!-- End: Main -->
@endsection
