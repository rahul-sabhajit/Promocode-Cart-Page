<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\product_table;
use Illuminate\Http\Request;
use App\User;
use App\Promocode;
use App\cart;

class ProductController extends Controller
{

    public function getProduct(Request $request){
        $data = product_table::paginate(15);
        return response(['code' => "200",'message' => 'success','product' => $data]);

    }

    public function promocode(Request $request){
        $data = Promocode::paginate(15);
        return response(['code' => "200",'message' => 'success','promocode' => $data]);

    }

    public function cart(Request $request){
        $user_id = User::where('email' , '=', $request->email)->first();
        $data = cart::where('user_id','=', $user_id->id)->paginate(15);

        return response(['code' => "200",'message' => 'success','cart' => $data]);

    }

    public function applypromo(Request $request){
        $discounted=0;
        $dispercentage =0;
        $user_id = User::where('email' , '=', $request->email)->first();
        $data = cart::where('user_id','=', $user_id->id)->paginate(15);
        $totalAmount = cart::where('user_id','=', $user_id->id)->sum('total_price');
        $promoco= Promocode::where('discount_code', '=', $request->promo)->first();
        if(empty($promoco)){
            return response(['code' => "200",'message' => 'invalidpromocode','cart' => $data, 'discounted'=>$discounted, 'dispercentage'=>$dispercentage]);
        }else{
            if($promoco->total_count > $promoco->used_count) {
                $discounted1 = ($totalAmount) * ($promoco->percentage)/100;
                $discounted = $totalAmount-$discounted1;
                $dispercentage = $promoco->percentage;
                $promoco1= Promocode::where('discount_code', '=', $request->promo)->update(['used_count' => $promoco->used_count+1]);

                return response(['code' => "200",'message' => 'valid_promocode','cart' => $data, 'discounted'=>$discounted, 'dispercentage'=>$dispercentage]);

            }else{
                return response(['code' => "200",'message' => 'invalidpromocode','cart' => $data, 'discounted'=>$discounted, 'dispercentage'=>$dispercentage]);
            }
        }


    }





    public function addtocart(Request $request){
        $email_id = $request->email;
        $product_id = $request->product_id;


        $user_id = User::where('email' , '=', $email_id)->first();
        $product_details = product_table::where('id' , '=', $product_id)->first();
        //echo json_encode($product_details);exit;
        $chekcond = cart::where('product_id' , '=', $product_id)->where('user_id' , '=', $user_id->id)->first();

    if(!empty($chekcond)){
    return response(['code' => "200",'message' => 'productexist']);

    }else{
        $storecart['product_id'] = $product_details->id;
        $storecart['user_id'] = $user_id->id;
        $storecart['product_name'] = $product_details->name;
        $storecart['product_quantity'] = 1;
        $storecart['total_price'] = $product_details->price;
        $storecart['product_image'] = $product_details->image;
        cart::create($storecart);
        return response(['code' => "200",'message' => 'success']);
}

    }

    public function increaseCartQty(Request $request){
        $cart_id = $request->cart_id;
        $cartdetails = cart::where('id' , '=', $cart_id)->first();
        $productbaseprice= product_table::where('id','=',$cartdetails->product_id)->first();

        $product_quantity = $cartdetails->product_quantity +1;
        $total_price = ($cartdetails->total_price) +($productbaseprice->price);
        cart::where('id' , '=', $cart_id)->update(['product_quantity' => $product_quantity, 'total_price'=>$total_price]);
        return response(['code' => "200",'message' => 'QtyIncreases']);

    }
    public function decreaseCartQty(Request $request){
        $cart_id = $request->cart_id;
        $cartdetails = cart::where('id' , '=', $cart_id)->first();
        $productbaseprice= product_table::where('id','=',$cartdetails->product_id)->first();


        if($cartdetails->product_quantity > 1) {
            $product_quantity = $cartdetails->product_quantity -1;
            $total_price = ($cartdetails->total_price) -($productbaseprice->price);
            cart::where('id' , '=', $cart_id)->update(['product_quantity' => $product_quantity, 'total_price'=>$total_price]);
            return response(['code' => "200", 'message' => 'QtyDecreases']);
        }else{
            return response(['code' => "200", 'message' => 'QtycanNotdecreases']);
        }

    }
    public function removeCartProduct(Request $request){
        $cart_id = $request->cart_id;
        cart::where('id' , '=', $cart_id)->delete();
        return response(['code' => "200",'message' => 'productRemove']);
    }


}
