@extends('layouts.app')
@section('content')
<div class="_ad-body">
    <!-- Admin Body Header-->
    <div class="_ad-top-hdr">
        <p class="_page-title">Refer & Earn</p>
    </div>
    <div class="_ad-body-main">
      <h2 style="text-align:center"><strong>Refer & Earn</strong> </h2>
    </div>
<form action="{{route('refer-earn.update')}}" method="POST">
    @csrf
        <div >
            <div class="col-md-10" style="margin:auto">
                <div class="form-roup">
                 <label for="">Title</label>
                <input type="text" name="title" value="{{$referEarn->title}}" placeholder="Enter the Title">
                 <span class="text-danger">@error('title'){{ $errors->first('title') }} @enderror</span>
                <div>
                  <div class="form-group">
                  <label for="">Subtitle</label>
                  <input type="text" name="subtitle" value="{{$referEarn->subtitle}}" placeholder="Enter The Subtitle">
                  <span class="text-danger">@error('subtitle'){{$errors->first('subtitle')}} @enderror</span>
                </div>
                <div class="form-group">
                <label >Signup Bonus Description</label>
                <textarea id="desc1" name="signup_bonus">{{$referEarn->signup_bonus}}</textarea>
                <span class="text-danger">@error('signup_bonus') {{ $errors->first('signup_bonus')}} @enderror</span>
                </div>
                <div class="form-group">
                    <label >Purchas Bonus Description</label>
                <textarea id="desc2" name="purchase_bonus">{{$referEarn->purchase_bonus}}</textarea>
                     <span class="text-danger">@error('purchase_bonus') {{ $errors->first('purchase_bonus') }} @enderror</span>
                </div>
                <div class="form-group">
                    <label >Winning Bonus Description</label>
                    <textarea id="desc3" name="winning_bonus">{{$referEarn->winning_bonus}}</textarea>
                    <span class="text-danger"> @error('winning_bonus') {{ $errors->first('winning_bonus') }} @enderror</span>
                </div>
                <div class="form-group">
                    <label >Invite Friend Description</label>
                    <textarea id="desc4" name="invite_friend">{{$referEarn->invite_friend}}</textarea>
                    <span class="text-danger">@error('invite_friend'){{ $errors->first('invite_friend') }} @enderror </span>
                </div>
                <div class="form-group">
                    <label >Free Join  Description</label>
                    <textarea id="desc5" name="free_join">{{$referEarn->free_join}}</textarea>
                    <span class="text-danger"> @error('free_join'){{ $errors->first('free_join') }} @enderror</span>
                </div>
                <div class="form-group">
                    <label >Coin Purchase Description</label>
                    <textarea id="desc6" name="purchase_coin">{{$referEarn->purchase_coin}}</textarea>
                    <span class="text-danger"> @error('purchase_coin'){{ $errors->first('purchase_coin') }} @enderror </span>
                </div>
                <div class="form-group">
                    <label >Winning Description </label>
                    <textarea id="desc7" name="win_auction">{{$referEarn->win_auction}}</textarea>
                    <span class="text-danger">@error('win_auction'){{ $errors->first('win_auction') }} @enderror</span>
                </div>
                <div class="form-group">
                    <label >Terms & Condition </label>
                    <textarea id="desc8" name="terms_condition">{{$referEarn->terms_condition}}</textarea>
                    <span class="text-danger">@error('terms_condition'){{ $errors->first('terms_condition') }} @enderror </span>
                </div>


               

                
                

                <button type="submit" class="btn btn-success"> Create</button>

           </div>

        </div>

    </form>

</div>
@push('script')
<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
@for($i=1;$i<9;$i++)
<script>  CKEDITOR.replace( "desc{{ $i }}" );</script>
@endfor
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
@if (Session::has('success'))
     Swal.fire({
          position: 'top-end',
          icon: 'success',
          title: '{{ Session::get('success') }}',
          showConfirmButton: false,
          timer: 1500
          })
@endif 
</script>

@endpush
    
@endsection