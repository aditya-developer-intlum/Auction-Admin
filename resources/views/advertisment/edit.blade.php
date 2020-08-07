@extends("layouts.app")
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                	@switch(request()->segment(2))
                	    @case('advertisment')
                	        <p class="_page-title">Default Advertisment</p> 
                	        @break
                	    @case('segmented-advertisment')
							<p class="_page-title">Segmented Advertisment</p>                   
                	    	@break
                	@endswitch
                	
                    
                </div>
                <!-- Admin Body Main -->
               	<form action="{{ route('advertisment.store') }}" method="post">
               		@csrf
               		
                <div class="_ad-body-main">
                    <div class="container">
                    @foreach ($ads as $_ads)
                        <div class="_heading text-center">
                            <h2 class="_title">{!! $_ads->title ?? '' !!} </h2>    
                            <p class="_text-light-blue">{!! $_ads->sub_title ?? '' !!}</p>                        
                        </div> 
                        
                            <div class="form-group">
                                <label class="_cLabel">
                    <input type="checkbox" {{ $_ads->is_active==false?'checked':'' }} name="is_active{{ $_ads->id }}" value="1">
                        Disable
                                    <span class="checkmark"></span>
                                </label>                                
                            </div>
                            <div class="form-group _add-code-Block">
                            	<input type="hidden" name="count[]" value="{{ $_ads->id }}">
                          <input type="text" placeholder="Copy Paste the Advertisement Code here" class="form-control" name="code{{ $_ads->id }}" value="{{ $_ads->code ?? '' }}">
                            </div>
                    @endforeach
                       
                   </div>
                   <button class="btn btn-succes" type="submit">Submit</button>
                </div> 
                </form>                         
            </div>
@endsection