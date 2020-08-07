<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class TransactionColdSoldExport implements FromCollection,WithHeadings
{
	private $coinSold;

	public function __construct($data)
	{
		$this->coinSold = $data;
	}
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $data = [];
    	foreach ($this->coinSold as $coin) {
    		$data[] = [
    			$coin->created_at->format('d-m-Y'),
    			$coin->transaction_id,
    			$coin->coinPackage->package_name,
    			number_format($coin->coins),
    			number_format($coin->real_amount,2),
    			$coin->user->user_name,
    			$coin->user->membership->name,
    			($coin->coins/$coin->real_amount)
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
            'Total Coins',
            'Price',
            'Sold To',
            'Member Plan',
            'Per Coin Price',
        ];
    }
}
