<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\MembershipPackage;
use App\Exports\TransactionPremiumMembershipExport;
use Maatwebsite\Excel\Facades\Excel;

class TransactionPremiumMembershipPackController extends Controller
{
    private $start,$end;
    private $membershipOneMonth,$membershipThreeMonth,$membershipSixMonth,$membershipTwelveMonth;
    private $all,$pm1,$pm3,$pm6,$pm12;
    private $allBelow,$pm1Below,$pm3Below,$pm6Below,$pm12Below;
    private $transactions;
    private $data;

    public function __invoke(Request $request)
    {
        $this->range($request)
        ->allIds($request)
        ->transaction($request)
        ->transactionBelow($request)
        ->premiumMembership($request)
        ->mergeResponse();

    	return view("transactions.premium-membership-pack-sold",$this->data);
    }

    private function range(Request $request)
    {
        $this->start = $request->start ?? date('Y-m-d',strtotime('- 1month'));
        $this->end = $request->end ?? date('Y-m-d');
        return $this;
    }
    private function allIds(Request $request)
    {
        $this->membershipOneMonth = MembershipPackage::where('validity',1)->pluck('id')->toArray();
        $this->membershipThreeMonth = MembershipPackage::where('validity',3)->pluck('id')->toArray();
        $this->membershipSixMonth = MembershipPackage::where('validity',6)->pluck('id')->toArray();
        $this->membershipTwelveMonth = MembershipPackage::where('validity',12)->pluck('id')->toArray();
        return $this;
    }
    private function transaction(Request $request)
    {
        $this->all = Transaction::with('membership')->whereNotNull('membership_package_id')->get();
        $this->pm1 = $this->all->whereIn('membership_package_id',$this->membershipOneMonth);
        $this->pm3 = $this->all->whereIn('membership_package_id',$this->membershipThreeMonth);
        $this->pm6 = $this->all->whereIn('membership_package_id',$this->membershipSixMonth);
        $this->pm12 = $this->all->whereIn('membership_package_id',$this->membershipTwelveMonth);
        return $this;
    }
    private function transactionBelow(Request $request)
    {
        $this->allBelow = Transaction::with('membership','user')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->whereNotNull('membership_package_id')
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->get();
        $this->pm1Below  = $this->allBelow->whereIn('membership_package_id',$this->membershipOneMonth);
        $this->pm3Below  = $this->allBelow->whereIn('membership_package_id',$this->membershipThreeMonth);
        $this->pm6Below  = $this->allBelow->whereIn('membership_package_id',$this->membershipSixMonth);
        $this->pm12Below = $this->allBelow->whereIn('membership_package_id',$this->membershipTwelveMonth);
        return $this;
    }
    private function premiumMembership(Request $request)
    {
        $this->transactions = Transaction::with('membership','user')
        ->whereNotNull('membership_package_id')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->paginate(15);
        return $this;
    }
    private function mergeResponse()
    {
        $this->data = [
            'all' => $this->all,
            'pm1' => $this->pm1,
            'pm3' => $this->pm3,
            'pm6' => $this->pm6,
            'pm12' => $this->pm12,
            'allBelow' => $this->allBelow,
            'pm1Below' => $this->pm1Below,
            'pm3Below' => $this->pm3Below,
            'pm6Below' => $this->pm6Below,
            'pm12Below' => $this->pm12Below,
            'transactions' => $this->transactions
        ];
        return $this;
    }
    public function export(Request $request)
    {
        $this->range($request)
        ->transactionBelow($request);

        return Excel::download(new TransactionPremiumMembershipExport($this->allBelow), 'premium membership.xlsx');
    }

}
