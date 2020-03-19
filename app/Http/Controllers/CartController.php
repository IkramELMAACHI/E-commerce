<?php

namespace App\Http\Controllers;

use App\Product;
use Gloudemans\Shoppingcart\Cart;
use Gloudemans\Shoppingcart\Facades\Cart as GloudemansCart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('cart.index') ;
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

        // dd($request->product_id , $request->title , $request->price, $request->description) ;

        $duplicata =   GloudemansCart::search(function ($cartItem, $rowId) use ($request) {
            return $cartItem->id == $request->product_id;
        });

        if ($duplicata->isNotEmpty()) {

            return redirect()->route('products.index')->with('success', 'le produit a déjà été ajouté');
        }

        $product = Product::find($request->product_id);
        //add the item to the cart and associate a model with the item.
        GloudemansCart::add($product->id, $product->title, 1, $product->price)->associate('App\Product');
            // Cart::associate($cartItem->rowId, 'Product');
        return redirect()->route('products.index')->with('success', 'le produit a bien été ajouté');
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
    { }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($rowId)
    {
        GloudemansCart::remove($rowId);
        
        return back()->with('success', 'le produit a été supprimé') ;
    }
}
