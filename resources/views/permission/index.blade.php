@extends('layouts.app')
@section('content')
            <!-- Admin Body  -->
            <div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Permission</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                <form class="row _al-row" method="GET" action="{{route('permission.store.success')}}">
                <input type="hidden" name="user_id" value="{{ $user_id }}">
                        <div class="col-lg-3 col-md-4 _al-col-left">
                            <div class="_tabBtn-cont">
                                <ul class="nav nav-pills">
                                    <li class="active">
                                        <a data-toggle="pill" href="#demo-{{ $coinGiftPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $coinGiftPermissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $coinDeductPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $coinDeductPermissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $subAdminPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $subAdminPermissionFirst->identify }}
                                        </a>
                                    </li>
                                    
                                    {{-- <li >
                                        <a data-toggle="pill" href="#demo-{{ $allMemberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $allMemberPermissionFirst->identify }}
                                        </a>
                                    </li> --}}
                                 {{--    <li >
                                        <a data-toggle="pill" href="#demo-{{ $basicMemberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $basicMemberPermissionFirst->identify }}
                                        </a>
                                    </li>     --}}  
                                   {{--  <li >
                                        <a data-toggle="pill" href="#demo-{{ $advanceMemberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $advanceMemberPermissionFirst->identify }}
                                        </a>
                                    </li> --}}
                                  {{--   <li >
                                        <a data-toggle="pill" href="#demo-{{ $suspendedMemberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $suspendedMemberPermissionFirst->identify }}
                                        </a>
                                    </li> --}}
                                   {{--  <li >
                                        <a data-toggle="pill" href="#demo-{{ $deletedMemberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $deletedMemberPermissionFirst->identify }}
                                        </a>
                                    </li> --}}
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $memberPermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $memberPermissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $membershipPackagePermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $membershipPackagePermissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $coinPackagePermissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $coinPackagePermissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $auctionClaimPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $auctionClaimPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $auctionClaimPendingPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $auctionClaimPendingPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $auctionClaimSettledPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $auctionClaimSettledPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $defaultNotificationPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $defaultNotificationPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $segmentedNotificationPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $segmentedNotificationPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $segmentedNotificationPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $segmentedNotificationPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    <li >
                                        <a data-toggle="pill" href="#demo-{{ $advertisementPemissionFirst->id }}">
                                        <span class="_tabIcon"><img src="{{ asset('storage/images/list-tab-icon-1-blue.png') }}" alt=""></span> {{ $advertisementPemissionFirst->identify }}
                                        </a>
                                    </li>
                                    {{-- advertisementPemissionFirst --}}
                               
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-7 _al-col-right">
                            <div class="_tabDesc-cont">
                                <div class="tab-content">                                         
                                    <div id="demo-{{ $coinGiftPermissionFirst->id }}"  class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($coinGiftPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
            <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $coinDeductPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($coinDeductPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $subAdminPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($subAdminPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                {{--     <div id="demo-{{ $allMemberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($allMemberPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div> --}}
                                   {{--  <div id="demo-{{ $basicMemberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($basicMemberPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div> --}}
                                    {{-- <div id="demo-{{ $advanceMemberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($advanceMemberPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div> --}}
                                 {{--    <div id="demo-{{ $suspendedMemberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($suspendedMemberPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div> --}}
                                   {{--  <div id="demo-{{ $deletedMemberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($deletedMemberPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div> --}}
                                    <div id="demo-{{ $memberPermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($memberPermissiion as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $membershipPackagePermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($membershipPackagePermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $coinPackagePermissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($coinPackagePermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $auctionClaimPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($auctionClaimPermission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $auctionClaimPendingPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($auctionClaimPendingPemission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $auctionClaimSettledPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($auctionClaimSettledPemission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $defaultNotificationPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($defaultNotificationPemission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $segmentedNotificationPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($segmentedNotificationPemission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>
                                    <div id="demo-{{ $advertisementPemissionFirst->id }}" class="tab-pane fade">
                                        <div class="_checkDIv-outter">
                                            @foreach ($advertisementPemission as $permission)
                                                
                                            <div class="_checkDiv">
                                                <label class="_cus-checkbox">
                                                    <input type="checkbox" name="slug[]" value="{{ $permission->id }}" {{ checkexist($permission->id,request()->id)?'checked':'' }}> 
            {{ $permission->title   }}
                                                    <span></span>
                                                </label>
                                            </div>
                                            @endforeach    

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 _mT-30">
                            <button class="btn _btn2 _btn-small _bg-green" type="submit">Submit</button>
                        </div>
                    </form>
                    <!-- Div : Begin  -->                  
                </div>
            </div>
    <!-- End: Main -->

@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
    @if (Session::has('success'))
Swal.fire({
  icon: 'success',
  title: 'Success',
  text: '{{ Session::get('success') }}',
});
@endif

</script>
    
@endpush    




    
@endsection