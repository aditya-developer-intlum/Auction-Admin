<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Str;

class TransactionAdminCoinGiftExport implements FromCollection,WithHeadings
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
    			str_replace('_'," ",Str::title($_data->transactionType->slug)),
    			$_data->user->user_name,
    			$_data->user->membership->name,
    			$_data->user->spent_coins,
    			number_format($_data->last_amount_status),
    			number_format($_data->coins),
    			number_format($_data->last_amount_status+$_data->coins)
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
            'Member Id',
            'Member Plan',
            'Total Coin Spent',
            'Before Coin Balance',
            'Coin Gift',
            'After Coin Balance'
        ];
    }
}
