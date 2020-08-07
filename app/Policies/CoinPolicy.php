<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class CoinPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }
    //Coin Gift Policy Start//
    public function view(User $user)
    {
      return $user->permissions()->where('slug','can_view_coin_gift')->exists();        
    }
    public function SerachUser(User $user)
    {
       return $user->permissions()->where('slug','can_search_user_coin_gift')->exists();
    }
    public function sendCoin(User $user)
    {
      return $user->permissions()->where('slug','can_send_coin_coin_gift')->exists();
    }
    public function transactionFilter(User $user)
    {
      return $user->permissions()->where('slug','can_transaction_filter_coin_gift')->exists();
    }
    public function transactionSearch(User $user)
    {
      return $user->permissions()->where('slug','can_transaction_search_coin_gift')->exists();
    }    
    public function transactionExport(User $user)
    {
      return $user->permissions()->where('slug','can_transaction_export_coin_gift')->exists();
    }
    //Coin Gift Policy End//
    
    //Coin Deduct Policy//
    public function coinDeductView(User $user)
    {
       return $user->permissions()->where('slug','can_view_coin_deduct')->exists();
    }
    public function coinDeductSerachUser(User $user)
    {
       return $user->permissions()->where('slug','can_search_user_coin_deduct')->exists();
    }
    public function coinDeductSendCoin(User $user)
    {
        return $user->permissions()->where('slug','can_send_coin_coin_deduct')->exists();
    }
    public function coinDeductTransactionFilter(User $user)
    {
        return $user->permissions()->where('slug','can_transaction_filter_coin_deduct')->exists();
    }
    public function coinDeductTransactionSearch(User $user)
    {
        return $user->permissions()->where('slug','can_transaction_search_coin_deduct')->exists();
    }
    public function coinDeductTransactionExport(User $user)
    {
        return $user->permissions()->where('slug','can_transaction_export_coin_deduct')->exists();
    }
    //Coin Deduct Policy End
  
    
}
