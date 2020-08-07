<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class AuctionClaimExport implements FromCollection,WithHeadings
{
	private $auctionClaim;

	public function __construct($data)
	{
		$this->auctionClaim = $data;
	}
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
    	$data = [];
    	foreach ($this->auctionClaim as $claim) {
    		$data[] = [
    			$claim->created_at->format('d-m-Y'),
    			date('h:i:s A',strtotime($claim->auction->default_auction_time)),
    			$claim->created_at->format('h:i:s A'),
    			$claim->auction->id,
    			$claim->auction->product_name,
    			number_format($claim->auction->product_value,2),
    			$claim->winner->user_name,
    			$claim->coinSpent->bid_amount*100,
    			$claim->winner_claim,
    			$claim->winner_status_text,
    			$claim->winner->uplinkOne?$claim->winner->uplinkOne->user_name:'N/A',
    			$claim->uplevel1_claim??'N/A',
    			$claim->uplevel1_status_text ?? 'N/A',
    			$claim->winner->uplinkTwo?$claim->winner->uplinkTwo->user_name:'N/A',
    			$claim->uplevel2_claim??'N/A',
    			$claim->uplevel2_status_text ?? 'N/A'
    		];
    	}
        return collect($data);
    }
    public function headings(): array
    {
        return [
            'Auction Date',
            'Auction Start Time',
            'Acution End Time',
            'Auction Id',
            'Product Name',
            'Product Price',
            'Winner User Name',
            'Coin Spent',
            'Winner Claimed',
            'Status',
            'Uplevel1 User Name',
            'Uplevel1 Claimed',
            'Status',
            'Uplevel2 User Name',
            'Uplevel2 Claimed',
            'Status',
        ];
    }
}
