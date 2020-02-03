<?php

namespace App\Http\Controllers\App;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request,Image,Session;
use Illuminate\Support\Facades\Auth;

class AppMainController extends Controller
{
    public function __construct()
    {
        if (Auth::check()) {
            return redirect('/home');
        }
        $this->middleware('CustomAuth', ['except' => 'logout']);
    }

    public function product()
    {

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'productDetails',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if ($array['message'] == "success") {

            return view('product')->with('product', $array['product']['data']);

        }
    }

    public function home()
    {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'productDetails',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if ($array['message'] == "success") {

            return view('loggedproduct')->with('product', $array['product']['data']);

        }

    }

    public function addtocart($id){
        $email = Auth::user()->email;//exit;
        $product_id = $id;


        $access_token = session('secret_token');
        //echo $access_token;exit;
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'addtocart',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('email' => $email,'product_id' => $product_id),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if($array['message'] == "success") {
            session()->flash('status', 'Product Added Successfully!');
        }else{
            session()->flash('status', 'Product Already exist in Cart!');

        }
        return redirect('home');

    }

    public function cart(Request $request){
        $email = Auth::user()->email;//exit;
        //$page =0;
        $page = ($request->input('page'))-1;
        if($page > -1) {
            $curr_start = $page * 15;
        }else{
            $curr_start =0;
        }
        $access_token = session('secret_token');
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'cart?page='.$page,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('email' => $email),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        //echo json_encode($array);exit;
            return view('cart')->with('data', $array)->with('pagestart', $curr_start);

    }

    public function promocode(Request $request){
        $page = ($request->input('page'))-1;
        if($page > -1) {
            $curr_start = $page * 15;
        }else{
            $curr_start =0;
        }
        //echo $page;exit;
        $access_token = session('secret_token');
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'promocode?page='.$page,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        //echo json_encode($array);exit;
        return view('promocode')->with('data', $array)->with('pagestart', $curr_start);

    }

    public function decreaseproductqty($id){
        $cart_id = $id;
        $access_token = session('secret_token');
        //echo $access_token;exit;
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'decreaseCartQty',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('cart_id' => $cart_id),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if($array['message'] == "QtyDecreases") {
            session()->flash('status', 'Product Quantity Decreases!');
        }else{
            session()->flash('status', 'Product Quantity can not be Decreases!');

        }
        return redirect('cart');

    }
    public function increaseproductqty($id){
        $cart_id = $id;
        $access_token = session('secret_token');
        //echo $access_token;exit;
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'increaseCartQty',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('cart_id' => $cart_id),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if($array['message'] == "QtyIncreases") {
            session()->flash('status', 'Product Quantity Increases!');
        }else{
            session()->flash('status', 'Product Quantity can not be Increases!');

        }
        return redirect('cart');


    }
    public function removecartproduct($id){
        $cart_id = $id;
        $access_token = session('secret_token');
        //echo $access_token;exit;
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'removeCartProduct',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('cart_id' => $cart_id),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        if($array['message'] == "productRemove") {
            session()->flash('status', 'Product Removed!');
        }else{
            session()->flash('status', 'Product can not Removed!');

        }
        return redirect('cart');

    }

    public function applypromo(Request $request){
        $email = Auth::user()->email;
        $promocode = $request->input('promocode');
        $page = ($request->input('page'))-1;
        if($page > -1) {
            $curr_start = $page * 15;
        }else{
            $curr_start =0;
        }
        $access_token = session('secret_token');
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => env('API_URL') . 'applypromo?page='.$page,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => array('email' => $email, 'promo' => $promocode),
            CURLOPT_HTTPHEADER => array(
                "Accept: application/json",
                "Authorization: Bearer $access_token"
            ),
        ));
        $response = curl_exec($curl);

        $err = curl_error($curl);
        curl_close($curl);
        $array = json_decode($response, true);
        //echo json_encode($array);exit;
        if($array['message'] == "valid_promocode") {
            return view('cart')->with('data', $array)->with('pagestart', $curr_start)->with('message', "Promocode is applied");
        }else{
            return view('cart')->with('data', $array)->with('pagestart', $curr_start)->with('message', "Invalid Promocode");
        }


    }
}
