@extends('layouts.master')

@section('content')
      <div class="col-md-12">
        <div
          class="row no-gutters border rounded overflow-hidden flex-md-row  shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <strong class="d-inline-block mb-2 text-primary">Category</strong>
          <h5 class="mb-2">{{Str::substr(($product->title), 5)}}</h5>
          <hr class="m-0">
            {{-- <div class="mb-1 text-muted">{{$product->created_at->format('d/m/Y')}}</div> --}}
            <p class="mb-2  text-muted" >{!!$product->description!!}</p>
            {{-- <p class="card-text ">{{$product->subtitle}}</p> --}}
             <strong class="  font-weight-normal text-secondary">{{$product->getPrice()}}</strong>
             <form action="{{route('cart.store')}}" method="POST">
              @method('POST')
              @csrf
              <input type="hidden" name="product_id" value="{{$product->id}}">
              <input type="hidden" name="title" value="{{$product->title}}">
             <input type="hidden" name="description" value="{{$product->description}}">
             <input type="hidden" name="price" value="{{$product->price}}">

              <button type="submit" class="btn btn-dark ">Ajouter au panier</button>

          </div>
          <div class="col-auto d-none d-lg-block">
            <img width="200px" height="200px" src="{{asset('/storage/'. $product->image)}}" alt="">
           
          </div>
        </div>
      </div>
 @endsection

