<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuctionClaim extends Model
{
	public $append = [
		"winner_claim",
		"uplevel1_claim",
		"uplevel2_claim",
		"winner_claim_value",
		"uplevel1_claim_value",
		"uplevel2_claim_value"
	];
	protected $fillable = [
		"uplevel1_claimed_success",
		"winner_claimed_success",
		"uplevel2_claimed_success",
		"winner_transaction_id",
		"level1_transaction_id",
		"level2_transaction_id"
	];
   	public function auction()
   	{
   		return $this->belongsTo("App\Auction");
   	}
   	public function winner()
   	{
   		return $this->belongsTo("App\User","winner_id","id");
   	}
      public function coinSpent()
      {
         return $this->hasOne("App\Bid","auction_id","auction_id")->latest();
      }
   	public function getWinnerClaimAttribute()
   	{
   		switch ($this->winner_claimed) {
   			case 1:
   				return "Product";
   				break;
   			case 2:
   				return "Cash";
   				break;
   			case 3:
   				return "Coin";
   				break;
   		}
   	}
   	public function getUplevel1ClaimAttribute()
   	{
   		switch ($this->uplevel1_claimed) {
   			case 1:
   				return "Coin";
   				break;
   			case 2:
   				return "Cash";
   				break;
   			case 3:
   				return "Coin";
   				break;
   		}	
   	}
   	public function getUplevel2ClaimAttribute()
   	{
   		switch ($this->uplevel2_claimed) {
   			case 1:
   				return "Coin";
   				break;
   			case 2:
   				return "Cash";
   				break;
   			case 3:
   				return "Coin";
   				break;
   		}
   	}
   	public function getWinnerClaimValueAttribute()
   	{
   		switch ($this->winner_claimed) {
   			case 1:
   				return $this->auction->product_winner;
   				break;
   			case 2:
   				return $this->auction->value_in_cash_winner;
   				break;
   			case 3:
   				return $this->auction->value_in_coin_winner;
   				break;
   		}
   	}
   	public function getUplevel1ClaimValueAttribute()
   	{
   		switch ($this->uplevel1_claimed) {
   			case 1:
   				return $this->auction->product_up_level1;
   				break;
   			case 2:
   				return $this->auction->value_in_cash_up_level1;
   				break;
   			case 3:
   				return $this->auction->value_in_coin_up_level1;
   				break;
   		}
   	}
   	public function getUplevel2ClaimValueAttribute()
   	{
   		switch ($this->uplevel2_claimed) {
   			case 1:
   				return $this->auction->product_up_level2;
   				break;
   			case 2:
   				return $this->auction->value_in_cash_up_level2;
   				break;
   			case 3:
   				return $this->auction->value_in_coin_up_level2;
   				break;
   		}
   	}
      public function getWinnerStatusTextAttribute()
      {
         switch ($this->winner_status) {
            case 1:
               return "Pending";
               break;
            case 2:
               return "Processed";
               break;
            case 3:
               return "Settled";
               break;
            case 4:
               return "Not Eligible";
               break;
         }
      }
      public function getUplevel1StatusTextAttribute()
      {
         switch ($this->level1_status) {
            case 1:
               return "Pending";
               break;
            case 2:
               return "Processed";
               break;
            case 3:
               return "Settled";
               break;
            case 4:
               return "Not Eligible";
               break;
         }
      }
      public function getUplevel2StatusTextAttribute()
      {
         switch ($this->level2_status) {
            case 1:
               return "Pending";
               break;
            case 2:
               return "Processed";
               break;
            case 3:
               return "Settled";
               break;
            case 4:
               return "Not Eligible";
               break;
         }
      }

}
