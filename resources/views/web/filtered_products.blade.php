<div class="row justify-content-center" id="filteredProducts">
    @forelse($get_products as $key => $get_product)
        <div class="col-6 col-md-4 col-lg-4">
            <div class="product product-7 text-center">
                <figure class="product-media">
                    <a href="{{url('products/'.$get_product->slug)}}">
                        <img src="{{asset($get_product->photo)}}" alt="{{$get_product->title}}"
                             class="product-image">
                    </a>
                </figure>

                <div class="product-body">
                    <div class="product-cat">
                        <a href="{{url('products/'.$get_product->slug)}}">{{$get_product->get_brands->category_name ?? ''}}</a>
                    </div>
                    <h3 class="product-title"><a href="{{url('products/'.$get_product->slug)}}">{{$get_product->title}}</a></h3>

                    <div class="product-price">
                        $ {{number_format($get_product->product_actual_price,2)}}
                    </div>

                </div>
            </div>
        </div>
    @empty
    @endforelse
</div>
