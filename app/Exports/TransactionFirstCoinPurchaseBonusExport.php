<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Str;

class TransactionFirstCoinPurchaseBonusExport implements FromCollection,WithHeadings
{
    private $exportData;

	public function __construct($data)
	{
		$this->exportData = $data;
	}
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $data = [];
    	foreach ($this->exportData as $_data) {
    		$data[] = [
    			$_data->created_at->format('d-m-Y'),
    			(string) $_data->transaction_id,
    			str_replace('_',' ',Str::title($_data->transactionType->slug)),
    			$_data->user->user_name, 
    			number_format($_data->coins),
    			$_data->type == 6?$_data->user->uplinkOne->user_name:$_data->user->uplinkTwo->user_name,
				$_data->user->membership->name 
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
            'For Member Id',
            'F.C.P. Bonus',
            'To Member Id',
            'Member Plan'
        ];
    }
}
