<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class TransactionPremiumMembershipExport implements FromCollection,WithHeadings
{
    private $premiumMembership;

	public function __construct($data)
	{
		$this->premiumMembership = $data;
	}
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $data = [];
    	foreach ($this->premiumMembership as $membership) {
    		$data[] = [
    			$membership->created_at->format('d-m-Y'),
    			$membership->transaction_id,
    			$membership->membership->name,
    			$membership->membership->validity,
    			number_format($membership->real_amount,2),
    			$membership->user->user_name,
    			$membership->user->membership->name,
    		];
    	}
    
        return collect($data);
    }
    public function headings(): array
    {
        return [
            'Date',
            'Transaction ID',
            'Coin Pack Name',
            'Validity',
            'Price',
            'Sold To',
            'Member Plan'
        ];
    }
}
