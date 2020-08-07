@extends("layouts.login-app")
@section('content')
    <!-- Begin: Main -->
    <main class="_backUser-page">
       <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 mx-auto">
                   
                    <form method="POST" action="{{ route('password.update') }}" class="_popModal-form ">
                        @csrf
                        <input type="hidden" name="token" value="{{ $token }}">
                        <figure class="text-center">
                            <img src="images/logo-icon.png" alt="">
                        </figure>
                        <div class="form-group">
                           
                             <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        <div class="form-group">
                           <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                          
                        </div>
                        <div class="form-group">
                           
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirm Password">
                            
                          
                        </div>
                        <div class="form-group">
                            <button class="btn _btn _submit-btn" type="submit">  {{ __('Reset Password') }}</button>
                        </div>                
                        <!-- <button class="_login-btn _mob-login" id="mobLogin">Login With Mobile number</button> -->
                    </form>
                </div>
            </div>           
       </div>
    </main>
    <!-- End: Main -->
@endsection
