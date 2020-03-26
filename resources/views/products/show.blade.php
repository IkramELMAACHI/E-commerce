@extends('layouts.master')

@section('content')
<div class="col-md-12">
  <div class="row no-gutters border rounded overflow-hidden flex-md-row  shadow-sm position-relative">
    <div class="col p-4 d-flex flex-column position-static">
     
      <div class="w-25 badge badge-pill badge-info"> {{$stock}}  </div>
    
          <muted class="d-inline-block mb-2 text-info">
        @foreach ($product->categories as $category)
        {{$category->name}} {{ $loop->last ? ' ' : ', '}}
        @endforeach
      </muted>
   

      <h5 class="mb-2">{{Str::substr(($product->title), 5)}}</h5>
      <hr class="m-0">
      {{-- <div class="mb-1 text-muted">{{$product->created_at->format('d/m/Y')}}
    </div> --}}
    <p class="mb-2  text-muted">{!!$product->description!!}</p>
    {{-- <p class="card-text ">{{$product->subtitle}}</p> --}}
    <strong class="  font-weight-normal text-secondary">{{$product->getPrice()}}</strong>
    {{-- <form action="{{route('cart.store')}}" method="POST">
      @method('POST')
      @csrf
      <input type="hidden" name="product_id" value="{{$product->id}}">
      <input type="hidden" name="title" value="{{$product->title}}">
      <input type="hidden" name="description" value="{{$product->description}}">
      <input type="hidden" name="price" value="{{$product->price}}">

      <button type="submit" class="btn btn-dark ">Ajouter au panier</button> --}}
      @if($stock == 'Disponible')
      <form action="{{route('cart.store')}}" method="POST">
          @method('POST')
          @csrf
          <input type="hidden" name="product_id" value="{{$product->id}}">
          <input type="hidden" name="title" value="{{$product->title}}">
          <input type="hidden" name="description" value="{{$product->description}}">
          <input type="hidden" name="price" value="{{$product->price}}">
          <button type="submit" class="btn btn-dark ">Ajouter au panier  </button>
        </form>              
       @else
          <a type="submit" class="w-25 text-danger">le produit n'est pas disponible </a>
          @endif 



  </div>
  <div class="col-auto d-none d-lg-block">
    <img width="200px" height="200px" src="{{asset('/storage/'. $product->image)}}" id="mainImage">
    <div class="mt-2">
      @if ($product->images)
      <img width="50" src="{{asset('/storage/'. $product->image)}}" class="img-thumbnail">

      @foreach (json_decode($product->images, true) as $image)
      <img src="{{asset('/storage/'. $image)}}" width="50" class="img-thumbnail">
      @endforeach
      @endif
    </div>

  </div>
</div>
</div>
@endsection

@section('extra-js')
<script>

    var mainImage= document.querySelector('#mainImage');
    var thumbnails= document.querySelector('.img-thumbnail') ;

    thumbnails.forEach((element)=> element.addEventListener('click' ,changeImage));
    function changeImage(e){
      mainImage.src = this.src ;
    }
</script>


@endsection