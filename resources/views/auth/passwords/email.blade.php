@extends("layouts.login-app")
@section('content')
    <!-- Begin: Main -->
    <main class="_backUser-page">
       <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 mx-auto">
                   
                    <form method="POST" action="{{ route('password.email') }}" class="_popModal-form ">
                        @csrf
                        <figure class="text-center">
                            @if (session('status'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('status') }}
                                </div>
                            @endif
                            <img src="images/logo-icon.png" alt="">
                        </figure>
                        <div class="form-group">
                           
                             <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>
                        
                        <div class="form-group">
                            <button class="btn _btn _submit-btn" type="submit">{{ __('Send Password Reset Link') }}</button>
                        </div>                
                        <!-- <button class="_login-btn _mob-login" id="mobLogin">Login With Mobile number</button> -->
                    </form>
                </div>
            </div>           
       </div>
    </main>
    <!-- End: Main -->
@endsection
