<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class TransactionSignUpBonusExport implements FromCollection,WithHeadings
{
    private $signUp;

	public function __construct($data)
	{
		$this->signUp = $data;
	}
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $data = [];
    	foreach ($this->signUp as $sign) {
    		$data[] = [
    			$sign->created_at->format('d-m-Y'),
    			$sign->transaction_id,
    			$sign->description,
    			number_format($sign->coins),
    			$sign->user->user_name,
    			$sign->user->membership->name
    		];
    	}
        return collect($data);
    }
    public function headings(): array
    {
        return [
            'Date',
            'Transaction ID',
            'Transaction Type',
            'Signup Bonus',
            'Member Id',
            'Member Plan'
        ];
    }
}
