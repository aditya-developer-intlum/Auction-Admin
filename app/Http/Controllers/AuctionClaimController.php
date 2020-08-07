<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AuctionClaim;
use Carbon\Carbon;
use App\Exports\AuctionClaimExport;
use Maatwebsite\Excel\Facades\Excel;

class AuctionClaimController extends Controller
{
	Private Static $pagination = 10;
	Private $auctionClaims;
	Private $start;
	Private $end;
	/**
     * Display all listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function all(Request $request)
    {
		 $this->authorize(__FUNCTION__,AuctionClaim::class);
		$this->getAll($request);  	
    	return view("auction-claim-settlement.all",[
    		'auctionClaims' => $this->auctionClaims->paginate(self::$pagination)
    	]);
    }
    /**
     * Display pending listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pending(Request $request)
    {	
		$this->authorize(__FUNCTION__,AuctionClaim::class);
    	$this->getPending($request);
    	return view("auction-claim-settlement.pending",[
    		'auctionClaims' => $this->auctionClaims->paginate(self::$pagination)
    	]);
    }
    /**
     * Display settled listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function settled(Request $request)
    {
		$this->authorize(__FUNCTION__,AuctionClaim::class);
		$this->getSettled($request);
    	return view("auction-claim-settlement.settled",[
    		'auctionClaims' =>$this->auctionClaims->paginate(self::$pagination)
    	]);
    }
    
     /**
    * Display Date Filter listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    private function dateFilter(Request $request)
    {
     	if ($request->has('start') && $request->has('end')) {
    			
    		$this->start = Carbon::parse($request->start)->format("Y-m-d");
    		$this->end = Carbon::parse($request->end)->format("Y-m-d");
    	}
    	return $this;
    }
    private function getAll(Request $request)
    {
    	if (
    		$request->has('search') &&
    		!empty($request->search) && 
    		empty($request->start) && 
    		empty($request->end)) {
				
    			$this->auctionClaims = AuctionClaim::where('auction_id',$request->search);
    	}else if(
    		!empty($request->start) && 
    		!empty($request->end) &&
    		empty($request->search) 
    	){
			
    		$this->dateFilter($request);
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end]);

    	}else if(
    		!empty($request->start) && 
    		!empty($request->end) &&
    		!empty($request->search)
    	){
    		
			
			$this->dateFilter($request);
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end])
    		->where('auction_id',$request->search);

    	}else{

    		$this->auctionClaims = new AuctionClaim;
    	}
    	return $this;
    }
    private function getPending(Request $request)
    {
    	if (
    		$request->has('search') &&
    		!empty($request->search) && 
    		empty($request->start) && 
    		empty($request->end)) {
			
    			$this->auctionClaims = AuctionClaim::where('auction_id',$request->search)
    			->whereWinnerStatusAndLevel1StatusAndLevel2Status(1,1,1);
    	}else if(
    		!empty($request->start) && 
    		!empty($request->end) &&
    		empty($request->search) 
    	){
			$this->dateFilter($request);
						
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end])
    		->whereWinnerStatusAndLevel1StatusAndLevel2Status(1,1,1);

    	}else if(
    		$request->has('start') && 
    		$request->has('end') && 
    		!empty($request->start) && 
    		!empty($request->end) &&
    		$request->has('search') &&
    		!empty($request->search)
    	){
			
    		$this->dateFilter($request);
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end])
    		->whereWinnerStatusAndLevel1StatusAndLevel2Status(1,1,1)
    		->where('auction_id',$request->search);

    	}else{
    		$this->auctionClaims = AuctionClaim::whereWinnerStatusAndLevel1StatusAndLevel2Status(1,1,1);
    	}
    	return $this;	
    }
    private function getSettled(Request $request)
    {
    	if ($request->has('search') &&
    		!empty($request->search) && 
    		empty($request->start) && 
    		empty($request->end)) {
			
    			$this->auctionClaims = AuctionClaim::where('auction_id',$request->search)
    			->whereWinnerStatusAndLevel1StatusAndLevel2Status(1,1,1);
    	}else if(
    		$request->has('start') && 
    		$request->has('end') && 
    		!empty($request->start) && 
    		!empty($request->end)
    	){
			
    		$this->dateFilter($request);
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end])
    		->whereWinnerStatusAndLevel1StatusAndLevel2Status(3,3,3);

    	}else if(
    		!empty($request->start) && 
    		!empty($request->end) &&
    		empty($request->search) 
    	){
    		$this->dateFilter($request);
    		$this->auctionClaims = AuctionClaim::whereBetween("created_at",[$this->start,$this->end])
    		->whereWinnerStatusAndLevel1StatusAndLevel2Status(3,3,3)
    		->where('auction_id',$request->search);

    	}else{
    		$this->auctionClaims = AuctionClaim::whereWinnerStatusAndLevel1StatusAndLevel2Status(3,3,3);
    	}
    	return $this;
    }
    public function export(Request $request,$page)
    {
        $this->authorize(__FUNCTION__,AuctionClaim::class);
    	switch ($page) {
			case 'all':
				
    			$this->getAll($request);
    			break;
			case 'pending':
				
    			$this->getPending($request);
    			break;
			case 'settled':
			
    			$this->getSettled($request);
    			break;
    	}
    	return Excel::download(new AuctionClaimExport($this->auctionClaims->get()), 'auction-claim-settlement.xlsx');
    }
   
}
