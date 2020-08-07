<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class AuctionRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(Request $request)
    {
        
         $id = $request->auction->id??"";
         //dd(["required","unique:auctions,auction_code,1"]);
        return [
            "auction_code" => ["required"],
            "product_name" => ["required","max:255"],
            "product_link" => ["required","max:1000"],
            "product_category.*" => ["required","exists:product_categories,name"],
            "product_value" => ["required","numeric"],
            "value_in_coins" => ["required","numeric"],
            "desc" => ["required"],
            "product_image" => ["nullable","image"],
            "auction_date" => ["required"],
            "default_auction_fee" => ["required","numeric"],
            "default_auction_time" => ["required"],
            "auction_fee_after_discount" => ["required","numeric"],
            "product_winner" => ["required"],
            "product_up_level1" => ["required"],
            "product_up_level2" => ["required"],
            "value_in_cash_winner" => ["required"],
            "value_in_cash_up_level1" => ["required"],
            "value_in_cash_up_level2" => ["required"],
            "value_in_coin_winner" => ["required"],
            "value_in_coin_up_level1" => ["required"],
            "value_in_coin_up_level2" => ["required"],
            "bid_start_from" => ["required"],
            "per_bid_coins" => ["required"],
            "basic_advance_auto_bid_allow_upto" => ["required"],
            "premium_auto_bid_allow_upto" => ["required"],
            "premium_plus_bid_allow_upto" => ["required"],
            "last_bid_accepted" => ["required"],
            "new_bidder_allow_upto" => ["required"],
            "note" => ["required"],
        ];
    }
}
