@extends('layouts.master')

@section('extra-meta')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('content')
@if(Cart::count()>0)
<div class="container mb-4">
	<div class="row">
		<div class="col-12">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col"> </th>
							<th scope="col">Product</th>
							<th scope="col">Available</th>
							<th scope="col" class="text-center">Quantity</th>
							<th scope="col" class="text-right">Price</th>
							<th> </th>
						</tr>
					</thead>
					<tbody>
						@foreach (Cart::content() as $product)
						<tr>
							<td><img class='' width="100px" height="100px" src="{{asset('/storage/'.$product->model->image)}}" />
							</td>
							<td>
								<h5 class="mb-0"><a
										href="{{route('products.show',['slug'=>$product->model->slug])}}">{{$product->model->title}}
								</h5></a>
							</td>
							<td> {{ $product->model->stock}} </td>

							<td><select name="qty" id="qty" data-stock='{{$product->model->stock}}'
									data-id={{$product->rowId}} class="custom-select">
									@for ($i = 1; $i <= $product->model->stock ; $i++)
										<option value="{{$i}}" {{$i == $product->qty ? 'selected' : ''}}> {{$i}}
										</option>
										@endfor
								</select></td>

							<td class="text-right">{{getprice($product->subtotal())}}</td>
							<td class="text-right">
								<form action="{{route('cart.destroy',['rowId'=>$product->rowId])}}" method="POST">
									@csrf
									@method('DELETE')
									<button class="btn btn-sm btn-danger" type="submit"><i class="fa fa-trash"></i>
									</button>
								</form>
							</td>
						</tr>
						@endforeach


					</tbody>
				</table>

				<div class="row p-4 bg-white rounded shadow-sm">
					<div class="col-lg-6">
						<div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Code coupon
						</div>

						@if(!request()->session()->has('coupon'))
						<div class="p-4">
							<p class="font-italic mb-4">Si vous détenez un code Coupon, entrez-le dans le champ
								ci-dessous</p>

							<form action="{{route('cart.store.coupon')}}" method="POST">
								<div class="input-group mb-4 border rounded-pill p-2">
									@csrf
									<input name="code" type="text" placeholder="Entrez votre code ici"
										aria-describedby="button-addon3" class="form-control border-0">
									<div class="input-group-append border-0">
										<button id="button-addon3" type="submit"
											class="btn btn-dark px-4 rounded-pill"><i
												class="fa fa-gift mr-2"></i>Appliquer le coupon</button>
									</div>
								</div>
							</form>
						</div>
						@else
						<div class="p-4">
							<p class="font-italic mb-4"> Un coupon est déjà appliqué</p>
						</div>
						@endif

						<div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions pour
							le vendeur</div>
						<div class="p-4">
							<p class="font-italic mb-4">Si vous souhaitez ajouter des précisions à votre commande, merci
								de les rentrer dans le champ ci-dessous</p>
							<textarea name="" cols="30" rows="2" class="form-control"></textarea>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Détails de la
							commande
						</div>
						<div class="p-4">
							<p class="font-italic mb-4">Les frais éventuels de livraison seront calculés suivant les
								informations que vous avez transmises.</p>
							<ul class="list-unstyled mb-4">
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Sous-total
									</strong><strong>{{ getPrice(Cart::subtotal()) }}</strong></li>

								@if (request()->session()->has('coupon'))
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted"> Coupon {{request()->session()->get('coupon')['code'] }}

										<form action="{{route('cart.destroy.coupon')}}" method="POST"
											class="d-inline-block">
											@csrf
											@method('DELETE')
											<button class="btn btn-sm btn-outline-danger" type="submit"><i
													class="fa fa-trash"></i>
											</button>
										</form>

									</strong><strong> {{getPrice(request()->session()->get('coupon')['remise']) }}
									</strong></li>


								<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Nouveau
										Sous-total</strong><strong>{{ getPrice(Cart::subtotal() - request()->session()->get('coupon')['remise'] ) }}</strong>
								</li>

								
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
									class="text-muted">Taxe</strong><strong>{{  getPrice((Cart::subtotal() - request()->session()->get('coupon')['remise']) * (config('cart.tax')/100))  }}</strong>
							</li>
							<li class="d-flex justify-content-between py-3 border-bottom"><strong
								class="text-muted">Total</strong><strong>{{  getPrice( $total ) }}</strong>
						</li>
							@else
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Taxe</strong><strong>{{ getPrice(Cart::tax()) }}</strong>
								</li>
								<li class="d-flex justify-content-between py-3 border-bottom"><strong
										class="text-muted">Total</strong>
									<h5 class="font-weight-bold">{{ getPrice($total )}}</h5>
								</li>
								@endif

							
							</ul><a href="{{ route('checkout.index') }}"
								class="btn btn-dark rounded-pill py-2 btn-block"><i class="fa fa-credit-card"
									aria-hidden="true"></i> Passer à la caisse</a>
						</div>
					</div>
				</div>
			</div>
			{{-- 
		<div class="col mb-2">
			<div class="row">
				<div class="col-sm-12  col-md-6">
					<button class="btn btn-block btn-light">Continue Shopping</button>
				</div>
				<div class="col-sm-12 col-md-6 text-right">
					<form action=" {{route('checkout.index')}}">
			<button class="btn btn-lg btn-block btn-success text-uppercase" type="submit">Checkout</button>
			</form>
		</div>
	</div>
</div> --}}

</div>
</div>

<!-- Footer -->
<footer class="text-light">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-lg-4 col-xl-3">
				<h5>About</h5>
				<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
				<p class="mb-0">
					Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant
					impression.
				</p>
			</div>

			<div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
				<h5>Informations</h5>
				<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
				<ul class="list-unstyled">
					<li><a href="">Link 1</a></li>
					<li><a href="">Link 2</a></li>
					<li><a href="">Link 3</a></li>
					<li><a href="">Link 4</a></li>
				</ul>
			</div>

			<div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
				<h5>Others links</h5>
				<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
				<ul class="list-unstyled">
					<li><a href="">Link 1</a></li>
					<li><a href="">Link 2</a></li>
					<li><a href="">Link 3</a></li>
					<li><a href="">Link 4</a></li>
				</ul>
			</div>

			<div class="col-md-4 col-lg-3 col-xl-3">
				<h5>Contact</h5>
				<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
				<ul class="list-unstyled">
					<li><i class="fa fa-home mr-2"></i> My company</li>
					<li><i class="fa fa-envelope mr-2"></i> email@example.com</li>
					<li><i class="fa fa-phone mr-2"></i> + 33 12 14 15 16</li>
					<li><i class="fa fa-print mr-2"></i> + 33 12 14 15 16</li>
				</ul>
			</div>
			<div class="col-12 copyright mt-3">
				<p class="float-left">
					<a href="#">Back to top</a>
				</p>
				<p class="text-right text-muted">created with <i class="fa fa-heart"></i> by <a
						href="https://t-php.fr/43-theme-ecommerce-bootstrap-4.html"><i>t-php</i></a> | <span>v.
						1.0</span></p>
			</div>
		</div>
	</div>
</footer>
@else
<p class="md-col-12"> Votre panier est vide</p>
@endif
@endsection

@section('extra-js')
<script>
	var selects = document.querySelectorAll('#qty') ;
	// console.log(selects);
	//transferer va select a un tableau 
	Array.from(selects).forEach((element)=>{
	//  console.log(element);
	element.addEventListener('change', function (){
		var rowId = element.getAttribute('data-id');
		var stock = this.getAttribute('data-stock');

		var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content') ;

		fetch(
			 `/panier/${rowId}`,
 			// '/panier/${rowId}',
			
			 {
				headers: {
                      "Content-Type" :"application/json",
                      "Accept":"application/json, text-plain, */*",
                      "X-Requested-With":"XMLHttpRequest",
                      "X-CSRF-TOKEN": token
                  },
                  method: 'PATCH',
				  body: JSON.stringify({
                    qty : this.value ,
					stock :stock
                  })

			 }
			 ).then((data)=>{
			 console.log(data);
			location.reload() ;
			 
			 }).catch((error) => {
				console.log(error) 
				// location redirect
			 })
	});
	});
</script>
@endsection