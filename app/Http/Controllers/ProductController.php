<?php

namespace App\Http\Controllers;
use App\Product ;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
      //dd(Cart ::content());
    if( request()->categorie){
    $products = Product::with('categories')
    ->whereHas('categories', function($query){ $query->where('slug', request()->categorie); })
    ->orderBy('created_at','DESC')->paginate(6);
    
    } else {
            //recuperer 6 donné aleatiore et la recuperer avec get()
        // $products = Product ::inRandomOrder()->take(6)->get();
        $products = Product ::with('categories')->orderBy('created_at','DESC')->paginate(6) ;
      }
      
        // dd($products) ;
        
    return view('products.index')->with('products',$products);
    // return view('products.index',compact('products'));

    }

    public function show($slug){
        $product=Product::where('slug',$slug)->first();
        return view('products.show',compact('product')) ;


    }

    public function search()
    {

    request()->validate([
    'q' => 'required|min:3'
    ]);
// $q=$request-get('q');
      $q=request()->input('q') ;

      $products =Product::where('title','like', "%$q%")
               ->orwhere('description','like', "%$q%")
               ->paginate(6);

      return view('products.search')->with('products',$products);
    }
}
