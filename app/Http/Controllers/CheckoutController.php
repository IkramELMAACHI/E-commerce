<?php

namespace App\Http\Controllers;

// use Gloudemans\Shoppingcart\Cart;

use DateTime;
use Gloudemans\Shoppingcart\Facades\Cart;
use Stripe\Stripe;
use Stripe\PaymentIntent;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use App\Order ;
use Illuminate\Support\Facades\Session;
class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Cart::count() <= 0) {

            return \redirect()->route('products.index');
        }
        Stripe::setApiKey('sk_test_3y9T95P3KzgqoL7rJqNtKPC500lpFPU5Zq');
        $intent = PaymentIntent::create([
            'amount' => round(Cart::total()),
            'currency' => 'MAD',
            // Verify your integration in this guide by including this parameter
            'metadata' => [
            'userId' => 15
            ]

        ]);
        $clientSecret = Arr::get($intent, 'client_secret');
        return view('checkout.index', [
            'clientSecret' => $clientSecret
        ]);

        //dd($intent);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->json()->all();
        //    return $data['paymentIntent'];  
    $order=new Order() ;
  
    $order->payment_intent_id = $data['paymentIntent']['id'] ;
    $order->amount = $data['paymentIntent']['amount'] ;

  $order->payment_created_at=(new DateTime())
  ->setTimestamp($data['paymentIntent']['created'])
    ->format('Y-m-d H:i:s') ;

    $products =[] ;
    $i =0 ;

    foreach(Cart::content() as $product){

        $products['products_'. $i][] =$product->model->title ;
        $products['products_'. $i][] =$product->model->price ;
        // $products['products_'. $i][] =$product->model->qty;
        $i++ ;

    }
  $order->products = serialize($products);
  $order->user_id =15 ;
  $order->save() ;

  if($data['paymentIntent']['status'] === 'succeeded'){

         Cart::destroy() ;
        Session:: flash ('success', 'votre commande a été traitée avec succés') ;
       return response()->json(['success' => 'Payment Intent Succeeded']);

  }else{
    return response()->json(['error' => 'Payment Intent Not Succeeded']);

  }

    }
    public function thankyou(){

        return Session::has('success') ? view('checkout.thankyou') :
        redirect()->route('products.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
