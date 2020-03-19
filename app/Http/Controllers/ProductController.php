<?php

namespace App\Http\Controllers;
use App\Product ;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
      //dd(Cart ::content());
        //recuperer 6 donné aleatiore et la recuperer avec get()
        $products = Product ::inRandomOrder()->take(6)->get();
        // dd($products) ;
        
    // return view('products.index')->with('products',$products);
    return view('products.index',compact('products'));

    }

    public function show($slug){
        $product=Product::where('slug',$slug)->first();
        return view('products.show',compact('product')) ;


    }
}
