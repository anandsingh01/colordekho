@extends('layouts.web')
<?php
session_start();
$get_category = get_category();
$get_brands = get_brands();
?>
@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <style>
        .input-group {
            padding: 0;
            justify-content: center;
        }
        .cart-bottom{
            display:block;
        }
        form {
            width: 100%;
        }
    </style>
@stop
@section('body')
    <?php
    $get_cart = get_cart();
    $get_count = json_decode($get_cart);
    $getAllCart = getCartProducts();
    ?>
    <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title"><span>Shop</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Products</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="toolbox">

                            <div class="toolbox-right">
                                <div class="toolbox-sort">
                                    <label for="sortby">Sort by:</label>
                                    <div class="select-custom">
                                        <select name="sortby" id="sortby" class="form-control">
                                            <option value="popularity" selected="selected">Most Popular</option>
                                            <option value="rating">Most Rated</option>
                                            <option value="date">Date</option>
                                        </select>
                                    </div>
                                </div>

                            </div><!-- End .toolbox-right -->
                        </div><!-- End .toolbox -->

                        <div class="products mb-3">
                            <div class="row justify-content-center" id="filteredProducts">
                                @forelse($products as $key => $get_product)
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
                                                Rs. {{number_format($get_product->product_actual_price,2)}}
                                            </div>

                                            <div class="add_to_cart">
                                                <a href="javascript:void(0)" class="add_to_Cart"
                                                data-productid="{{$get_product->id}}"
                                                data-price="{{$get_product->product_actual_price}}"
                                                data-mrp="{{$get_product->product_actual_price}}"
                                                data-product_name ="{{$get_product->title}}"
                                                data-product_image ="{{$get_product->photo}}"
                                                >Add To Cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                @empty
                                @endforelse
                            </div>
                        </div>

                    </div>
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->


@stop
@section('js')
    <script>
        $('.add_to_Cart').on('click', function() {
            var productId = $(this).attr('data-productid');
            var price = $(this).attr('data-price');
            var mrp = $(this).attr('data-product_actual_price');


            $.ajax({
                url: '{{ url('addToCartProduct') }}',
                type: 'POST',
                data: {productId : productId , price : price , mrp : mrp},

                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    console.log(response);
                    $('#body-id').load('#body-id');
                    if (response.success) {
                        alert(' added to cart successfully!');
                    } else {
                        alert(' added to cart successfully!');
                    }
                },
                error: function() {
                    alert('An error occurred while adding to cart.');
                }
            });
        });
    </script>
@stop
