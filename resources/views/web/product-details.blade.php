<?php $getCommonSetting = getCommonSetting();?>
@extends('layouts.web')
@section('css')
    <style>
        .btn-product:hover span, .btn-product:focus span {
            color: #fff;
            box-shadow: 0 1px 0 0 #c96;
        }


        .block_box {
            background: #000;
        }
        .block_box h3.icon-box-title {
            color: #fff !important;
            font-size: 1.5em;
        }
        .block_box .icon-box-content p:last-child {
            color: #fff;
            font-size: 14px;
        }
        .custom-height img {
            height: 400px;
            object-fit: cover;
        }
        .custom-height .btn.banner-link {
            background: #333;
            border: 1px solid #333;
        }
        /* Overlay effect for banners with the class "banner banner-1 banner-overlay" */
        .banner.banner-1.banner-overlay::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #33333361; /* Adjust the opacity here (0 to 1) */
            z-index: 1;
        }
        a.brand img {
            height: 70px;
            padding: 0px;
        }
        .products-slider{
            width:85%;
        }
        .product-body {
            text-align: center;
        }
        .product-price {
            text-align: center;
            width: 100% !important;
            display: block;
        }
        .product-cat a{
            font-size: 15px;
            line-height: 20px;
        }
        .product-title a{
            color: inherit;
            font-size: 18px;
            line-height: 40px;
        }
        .trending {
            position: relative;
        }
        .trending img {
            min-height: 315px;
            object-fit: cover;
        }
        .trending .banner {
            position: static;
        }
        .banner-big {
            color: #666666;
            font-size: 1.5rem;
            line-height: 1.6;
        }
        .trending img {
            min-height: 315px;
            object-fit: cover;
            max-height: 400px;
            width: 100%;
        }
        .input-group {
            padding: 0 2rem 0.9rem;
            justify-content: center;
        }
        div#product-cut-price {
            font-size: 20px;
            color: hotpink;
            font-weight: 600;
        }
        /*.price_div {*/
        /*    display: inline-flex;*/
        /*}*/
    </style>
@stop
@section('body')
    <?php
    $get_hero_banner = get_hero_banner();
    $getCommonSetting = getCommonSetting();
    ?>
    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container d-flex align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$product->title}}</li>
                </ol>

                <nav class="product-pager ml-auto" aria-label="Product">
                    <a class="product-pager-link product-pager-prev" href="#" aria-label="Previous" tabindex="-1">
                        <i class="icon-angle-left"></i>
                        <span>Prev</span>
                    </a>

                    <a class="product-pager-link product-pager-next" href="#" aria-label="Next" tabindex="-1">
                        <span>Next</span>
                        <i class="icon-angle-right"></i>
                    </a>
                </nav><!-- End .pager-nav -->
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <div class="product-details-top mb-2">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="product-gallery">

                                <div class="product-gallery">
                                    <!-- The active image will be displayed here -->
                                    <img id="productImage" src="{{asset($product->getPrices[0]->image)}}"
                                         data-zoom-image="{{asset($product->getPrices[0]->image)}}" alt="{{$product->title}}">
                                </div>
                            </div>
                        </div><!-- End .col-md-6 -->

                        <div class="col-md-6">
                            <div class="product-details">
                                <h1 class="product-title">{{$product->title}}</h1><!-- End .product-title -->

                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <a class="ratings-text" href="#product-review-link" id="review-link">( 2 Reviews )</a>
                                </div><!-- End .rating-container -->

{{--                                <div class="product-price text-left">--}}
{{--                                    $ {{number_format($product->getPrices[0]->price,2)}}--}}
{{--                                </div><!-- End .product-price -->--}}

                                <div class="price_div row">
                                    <div class="product-price text-left col-md-3">
                                        @if ($product->getPrices[0]->flash_sale === 'yes')
                                            <div id="product-flash-price" class="flash-price">
                                                $ {{ number_format($product->getPrices[0]->flash_price, 2) }}
                                            </div>

                                        @else
                                            $ {{ number_format($product->getPrices[0]->price, 2) }}
                                        @endif

                                        <div id="sales-tax"></div>
                                    </div><!-- End .product-price -->

                                    <div class="col-md-4">
                                    <del>
                                        <div id="product-cut-price" class="cut-price"></div>
                                    </del>
                                    </div>

                                </div>

                                <div class="product-content">
                                    <p><?php echo $product->product_short_desc;?></p>
                                </div><!-- End .product-content -->

                                <input type="hidden" id="product_id" name="product_id" value="{{$product->id}}">
                                <input type="hidden" id="product_name" name="product_name" value="{{$product->title}}">
                                <input type="hidden" id="section_id" name="section_id" value="{{$product->section_id}}">
                                <input type="hidden" id="brands_id" name="brands_id" value="{{$product->brands_id}}">
                                <div class="details-filter-row details-row-size">
                                    <label>Size:</label>
                                    <div class="product-size">
                                        @forelse($product->getPrices as $key => $variations)
                                            <a href="javascript:void(0)"
                                               data-size="{{ $variations->size }}"
                                               data-attribute_id="{{ $variations->id }}"
                                                data-price="{{ $variations->price }}"
                                                data-qty="{{ $variations->qty }}"
                                                data-msp="{{ $variations->msp }}"
                                                data-image="{{ $variations->image }}"
                                                data-variation_product_id="{{ $variations->product_id }}"
                                                data-flash_sale="{{ $variations->flash_sale }}"
                                                data-flash_price="{{ $variations->flash_price }}"
                                                data-length="{{ $variations->length }}"
                                                data-width="{{ $variations->width }}"
                                                data-height="{{ $variations->height }}"
                                            title="{{ $variations->size }}" class="size-option @if($loop->first) active @endif">{{ $variations->size }}</a>
                                        @empty
                                        @endforelse
                                    </div><!-- End .product-size -->
                                </div>
                                <div class="details-filter-row details-row-size">
                                    <label for="qty">Qty:</label>
                                    <div class="product-details-quantity">
                                        <input type="number" id="qty" class="form-control" value="1" min="1" step="1" data-decimals="0" required>
                                    </div><!-- End .product-details-quantity -->
                                    <span id="maxLimitMsg" style="color: red; display: none;">Maximum quantity reached.</span>
                                </div><!-- End .details-filter-row -->

                                <div class="product-details-action">
                                    <a href="javascript:void(0)" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-details-action -->

{{--                                <div class="product-details-action check-shipping-charges">--}}
{{--                                    <div class="form-group">--}}
{{--                                        <label>Check Shipping :</label>--}}
{{--                                        <input type="text" name="sales_tax" class="sales_tax"/>--}}
{{--                                        <a href="javascript:void(0)" class="btn-small btn-danger btn" id="check-availability-btn">--}}
{{--                                            <span>Check Availability</span>--}}
{{--                                        </a>--}}
{{--                                    </div>--}}
{{--                                </div><!-- End .product-details-action -->--}}

                                <div class="product-details-footer">
                                    <div class="product-cat">
                                        <h6>Brand:<a href="{{url('brands/'.$product->get_brands->category_name ?? '')}}">
                                                {{$product->get_brands->category_name ?? ''}}</a></h6>
                                        <h6>Category:
                                        <a href="{{url('category/'.$product->section->category_name ?? '')}}">
                                        {{$product->section->category_name ?? ''}}
                                        </a>
                                            </h6>
                                    </div><!-- End .product-cat -->

                                    <div class="social-icons social-icons-sm">
                                        <span class="social-label">Share:</span>
                                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                        <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                                    </div>
                                </div><!-- End .product-details-footer -->
                            </div><!-- End .product-details -->
                        </div><!-- End .col-md-6 -->
                    </div><!-- End .row -->
                </div><!-- End .product-details-top -->
            </div><!-- End .container -->

            <div class="mt-5 mb-5 video-banner video-banner-bg video-fullheight bg-image text-center"
                 style="background-image: url({{asset($get_middle_banner->banner)}})">
                <div class="container">
                    {{--
                    <h3 class="video-banner-title h1 text-white"><span>{{$get_middle_banner->banner_heading ?? ''}}</h3>
                    <!-- End .video-banner-title -->--}}
                    <h4 class="banner-subtitle text-white">{{$get_middle_banner->banner_heading ?? ''}}</h4>
                    <!-- End .banner-subtitle -->
                    <h3 class="banner-title text-white">{{$get_middle_banner->banner_subheading ?? ''}}</h3>
                    <!-- End .banner-title -->
                    <a href="{{url($get_middle_banner->banner_link)}}" class="btn btn-primary-white"><span>{{$get_middle_banner->banner_text}}</span><i class="icon-long-arrow-right"></i></a>
                </div>
                <!-- End .container -->
            </div>

            <div class="product-details-tab product-details-extended">
                <div class="container">
                    <ul class="nav nav-pills justify-content-center" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link" id="product-info-link" data-toggle="tab" href="#product-info-tab" role="tab" aria-controls="product-info-tab" aria-selected="false">Additional information</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="product-review-link" data-toggle="tab" href="#product-review-tab" role="tab" aria-controls="product-review-tab" aria-selected="false">Reviews (2)</a>
                        </li>
{{--                        <li class="nav-item">--}}
{{--                            <a class="nav-link" id="product-shipping-link" data-toggle="tab" href="#product-shipping-tab" role="tab" aria-controls="product-shipping-tab" aria-selected="false">Shipping & Returns</a>--}}
{{--                        </li>--}}
                    </ul>
                </div><!-- End .container -->

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="product-info-tab" role="tabpanel" aria-labelledby="product-info-link">
                        <div class="product-desc-content">
                            <div class="container">
                                <p><?php echo $product->product_desc;?></p>

                            </div><!-- End .container -->
                        </div><!-- End .product-desc-content -->
                    </div><!-- .End .tab-pane -->

                    <div class="tab-pane fade" id="product-review-tab" role="tabpanel" aria-labelledby="product-review-link">
                        <div class="reviews">
                            @if(Session::has('review_success'))
                            <div class="alert alert-success">{{Session::get('review_success')}}</div>
                            @endif
                            <div class="container">
                                <h3>Reviews </h3>
                                <?php
                                    $get_all_reviews = \App\Models\ReviewModel::where('product_id',$product->id)
                                        ->where('status','1')->get();
                                    if(!empty($get_all_reviews)){
                                        foreach ($get_all_reviews as $get_all_review){
                                        ?>
                                <div class="review">
                                    <div class="row no-gutters">
                                        <div class="col-auto">
                                            <h4><a href="#">{{$get_all_review->username ?? ''}}</a></h4>
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                            </div><!-- End .rating-container -->
                                        </div><!-- End .col -->
                                        <div class="col">
                                            <h4>Good, perfect size</h4>

                                            <div class="review-content">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus cum dolores assumenda asperiores facilis porro reprehenderit animi culpa atque blanditiis commodi perspiciatis doloremque, possimus, explicabo, autem fugit beatae quae voluptas!</p>
                                            </div><!-- End .review-content -->

                                        </div><!-- End .col-auto -->
                                    </div><!-- End .row -->
                                </div><!-- End .review -->
                                <?php
                                }
                                    }
                                ?>



                                <div class="form-div">
                                    <form action="#" id="review-form" class="contact-form mb-3">
                                        @csrf
                                        <input type="hidden" name="product_id" value="{{$product->id}}"/>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label for="star1">&#9733;
                                                    <input type="radio" id="star1" name="rating" value="1">
                                                </label>

                                                <label for="star2">&#9733;
                                                    <input type="radio" id="star2" name="rating" value="2">
                                                </label>

                                                <label for="star3">&#9733;
                                                    <input type="radio" id="star3" name="rating" value="3">
                                                </label>

                                                <label for="star4">&#9733;
                                                    <input type="radio" id="star4" name="rating" value="4">
                                                </label>

                                                <label for="star5">&#9733;
                                                    <input type="radio" id="star5" name="rating" value="5" checked>
                                                </label>


                                            </div><!-- End .col-sm-6 -->
                                        </div><!-- End .row -->

                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label for="csubject" class="sr-only">Name</label>
                                                <input type="text" class="form-control"  id="csName" placeholder="Name">
                                            </div><!-- End .col-sm-6 -->

                                            <div class="col-sm-12">
                                                <label for="csubject" class="sr-only">Heading</label>
                                                <input type="text" class="form-control" id="csubject" placeholder="Subject">
                                            </div><!-- End .col-sm-6 -->

                                            <div class="col-md-12">
                                                <textarea class="form-control" cols="30" rows="4" id="cmessage"
                                                          name="review" placeholder="Write your review here"></textarea>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-outline-primary-2 btn-minwidth-sm">
                                            <span>SUBMIT</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>
                                    </form>
                                </div>
                            </div><!-- End .container -->
                        </div><!-- End .reviews -->
                    </div><!-- .End .tab-pane -->


                </div><!-- End .tab-content -->
            </div><!-- End .product-details-tab -->

            <?php $get_product_favorites = getRelatedProducts($product->get_brands->id); ?>
                <!-- End .owl-carousel -->
            <!-- End .owl-carousel -->
            <div class="container products-slider mt-5 mb-5">
                <div class="heading heading-center mb-3">
                    <h2 class="title mb-5">YOU MAY ALSO LIKE</h2>
                    <!-- End .title -->
                </div>
                <!-- End .heading -->
                <div class="container">
                    <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl"
                         data-owl-options='{
               "nav": false,
               "dots": true,
               "margin": 20,
               "loop": false,
               "responsive": {
               "0": {
               "items":2
               },
               "480": {
               "items":2
               },
               "768": {
               "items":3
               },
               "992": {
               "items":4
               },
               "1200": {
               "items":4,
               "nav": true
               }
               }
               }'>
                        @forelse($get_product_favorites as $key => $get_favorites)
                            <div class="product product-2">
                                <figure class="product-media">
                                    <a href="{{url('products/'.$get_favorites->slug)}}">
                                        <img src="{{asset($get_favorites->photo)}}" alt="{{$get_favorites->title}}" class="product-image">
                                    </a>
                                </figure>
                                <!-- End .product-media -->
                                <div class="product-body">
                                    <div class="product-cat">
                                        <a href="{{url('products/'.$get_favorites->slug)}}">{{$get_favorites->get_brands->category_name ?? ''}}</a>
                                    </div>
                                    <!-- End .product-cat -->
                                    <h3 class="product-title"><a href="{{url('products/'.$get_favorites->slug)}}">{{$get_favorites->title}}</a></h3>
                                    <!-- End .product-title -->
                                    <div class="product-price2">
                                        $ {{number_format($get_favorites->product_actual_price,2)}}
                                    </div>

                                    <!-- End .product-price -->
                                </div>
                                <!-- End .product-body -->
                            </div>
                            <!-- End .product -->
                        @empty
                        @endforelse
                    </div>
                    <!-- End .owl-carousel -->
                    <!-- .End .tab-pane -->
                </div>
                <!-- End .tab-content -->
            </div>
        </div><!-- End .page-content -->
    </main><!-- End .main -->

@stop
@section('script')

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#check-availability-btn').on('click', function() {
                const zipCode = $('.sales_tax').val();

                $.ajax({
                    method: 'GET',
                    url: 'https://api.api-ninjas.com/v1/salestax?zip_code=' + zipCode,
                    headers: { 'X-Api-Key': '4NZW/DZKECPyubyiLhZvcg==LEgqG60lhPyYuwSn' }, // Replace with your actual API key
                    contentType: 'application/json',
                    success: function(result) {
                        // Calculate the sales tax amount based on the total rate
                        const totalRate = parseFloat(result[0].total_rate);

                        const sizeOptions = $('.size-option');
                        let selectedPrice = sizeOptions.first().data('price');

                        const salesTaxAmount = selectedPrice * totalRate;
                        const totalAmount = selectedPrice + salesTaxAmount;

                        // Display the calculated sales tax and total amount
                        $('#sales-tax').text('$' + salesTaxAmount.toFixed(2));
                        $('#total-price').text('$' + totalAmount.toFixed(2));
                    },
                    error: function ajaxError(jqXHR) {
                        console.error('Error: ', jqXHR.responseText);
                    }
                });
            });
        });
    </script>



    <script>

        // Add click event listener to the size options
        $(document).ready(function() {
            const productPriceElement = $('.product-price');
            const productImage = $('#productImage');

            $('.size-option').click(function(event) {
                event.preventDefault();
                const $selectedOption = $(this);

                $('.size-option').removeClass('active');

                // Add 'active' class to the clicked size option
                $selectedOption.addClass('active');

                // Get the price and image from the data attributes of the selected size option
                const newPrice = parseFloat($selectedOption.data('price')).toFixed(2);
                const newQty = $selectedOption.data('qty');
                const newImageFilename = $selectedOption.data('image');
                const flash_sale = $selectedOption.data('flash_sale');
                const flash_price = parseFloat($selectedOption.data('flash_price')).toFixed(2);

                // Check if flash_sale is set to 'yes'
                if (flash_sale === 'yes') {
                    console.log(flash_price);
                    // Display flash_price and cut price
                    productPriceElement.text('$ ' + flash_price);
                    $('#product-cut-price').text('$ ' + newPrice);
                    $('#product-cut-price').show();
                    $('#product-flash-price').show();
                } else {
                    // Hide flash_price and cut price

                    productPriceElement.text('$ ' + newPrice);


                    $('#product-cut-price').hide();
                    $('#product-flash-price').hide();
                }

// Get the current image URL
                const currentImageUrl = productImage.attr('src');



// Create a new URL object with the current image URL
                const currentUrl = new URL(currentImageUrl);

// Get the base URL
                const baseUrl = currentUrl.origin;

// Construct the new image URL
                const newImageUrl = baseUrl +'/'+ newImageFilename;
                // console.log(newImageUrl);
                // return false;
// Update the product price and image
                $('#qty').attr('max', newQty);
                productImage.attr('src', newImageUrl);
                productImage.attr('data-zoom-image', newImageUrl);
            });
        });


    </script>



    <script>
        $(document).ready(function() {
            const qtyInput = $('#qty');
            const maxLimitMsg = $('#maxLimitMsg');
            const variations = <?php echo json_encode($product->getPrices); ?>;
            let maxQuantity = 0;

            // Find the maximum quantity available in the variations
            variations.forEach(function(variation) {
                if (variation.qty > maxQuantity) {
                    maxQuantity = variation.qty;
                }
            });

            // Set the initial max quantity
            qtyInput.attr('max', maxQuantity);

            qtyInput.on('input', function(event) {
                const currentValue = parseInt(qtyInput.val());
                if (currentValue > maxQuantity) {
                    qtyInput.val(maxQuantity);
                    $('#maxLimitMsg').css('display', 'block');
                } else {
                    $('#maxLimitMsg').css('display', 'none');
                }
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            const addToCartButton = $('.btn-cart');
            const sizeOptions = $('.size-option');
            const qtyInput = $('#qty');
            const maxLimitMsg = $('#maxLimitMsg');
            const loader = $('#loader');
            let selectedSize = sizeOptions.first().data('size');
            let selectedPrice = sizeOptions.first().data('price');
            let selectedQty = sizeOptions.first().data('qty');
            let variation_product_id = sizeOptions.first().data('variation_product_id');
            let attribute_id = sizeOptions.first().data('attribute_id');
            let msp = sizeOptions.first().data('msp');
            const flash_sale = sizeOptions.data('flash_sale');
            const flash_price = parseFloat(sizeOptions.data('flash_price')).toFixed(2);

            // Update selectedSize, selectedPrice, and selectedQty when a size is clicked
            sizeOptions.on('click', function(event) {
                event.preventDefault();
                const $selectedOption = $(this);
                selectedSize = $selectedOption.data('size');
                selectedPrice = $selectedOption.data('price');
                selectedQty = $selectedOption.data('qty');
                variation_product_id = $selectedOption.data('variation_product_id');
                attribute_id = $selectedOption.data('attribute_id');
                msp = $selectedOption.data('msp');
                // Set the new max quantity
                qtyInput.attr('max', selectedQty);

                // Toggle active class for size options
                sizeOptions.removeClass('active');
                $selectedOption.addClass('active');
            });

            // Add to Cart button click event
            addToCartButton.on('click', function(event) {
                event.preventDefault();

                const $selectedOption = $('.size-option.active');
                const flash_sale = $selectedOption.data('flash_sale');
                const flash_price = parseFloat($selectedOption.data('flash_price')).toFixed(2);

                // Get the selected quantity
                const quantity = parseInt(qtyInput.val());

                // Check if the selected quantity is within the available quantity limit
                if (quantity <= selectedQty) {
                    // Show loader
                    loader.show();

                    // Save cart data to the database using AJAX
                    $.ajax({
                        url: '{{url('addToCart')}}',
                        method: 'POST',
                        data: {
                            size: selectedSize,
                            // price: selectedPrice,
                            price: (flash_sale === 'yes') ? flash_price : selectedPrice,
                            flash_price: flash_price, // Add flash_price to the data object
                            flash_sale: flash_sale, // Add flash_ to the data object
                            quantity: quantity,
                            subtotal: (flash_sale === 'yes') ? flash_price : selectedPrice * quantity,
                            product_name: $('#product_name').val(),
                            product_id: $('#product_id').val(),
                            msp: msp,
                            variation_product_id: variation_product_id,
                            attribute_id: attribute_id,
                            section_id: $('#section_id').val(),
                            brands_id: $('#brands_id').val(),
                            // Add other cart data fields as needed
                        },
                        success: function(response) {
                            // Hide loader

                            loader.hide();

                            $('#body-id').load('#body-id');
                            // alert('Reloaded');
                            // Handle success response
                            if (response.code === 300) {
                                // Product added to cart
                                Swal.fire({
                                    icon: 'success',
                                    title: response.status,
                                    showConfirmButton: false,
                                    timer: 1500
                                });

                                // Update cart count and total price in the dropdown
                                $('.cart-count').text(response.cartCount);
                                $('.cart-total-price').text(`$${response.cartSubtotal.toFixed(2)}`);
                            } else if (response.code === 301) {
                                // Product already in cart, quantity updated
                                Swal.fire({
                                    icon: 'info',
                                    title: response.status,
                                    showConfirmButton: false,
                                    timer: 1500
                                });
                            }else if (response.code === 200) {
                                // Product already in cart, quantity updated
                                Swal.fire({
                                    icon: 'info',
                                    title: response.status,
                                    showConfirmButton: false,
                                    timer: 1500
                                });
                            }
                        },
                        error: function(xhr, status, error) {
                            // Hide loader
                            loader.hide();

                            // Handle error if needed
                            Swal.fire({
                                icon: 'error',
                                title: 'Oops...',
                                text: 'Something went wrong!',
                            });
                        }
                    });

                } else {
                    // Display the max limit message
                    maxLimitMsg.show();
                }
            });




        });
    </script>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#review-form').submit(function(event) {
                event.preventDefault();

                const formData = $(this).serialize();

                $.ajax({
                    type: 'POST',
                    url: '{{ url("save-review") }}', // Update with the actual route
                    data: formData,
                    success: function(response) {
                        // Review saved successfully, fetch and display approved reviews
                        // Product added to cart
                        Swal.fire({
                            icon: 'success',
                            title: 'Review will update soon',
                            showConfirmButton: false,
                            timer: 1500
                        });
                        // fetchApprovedReviews();
                    },
                    error: function(xhr, status, error) {
                        console.error(error);
                    }
                });
            });

            function fetchApprovedReviews() {
                $.get('{{ url("fetch-approved-reviews", $product->id) }}', function(response) {
                    $('#review-list').html(response);
                }).fail(function(error) {
                    console.error('Error fetching approved reviews:', error);
                });
            }

            // Fetch and display approved reviews on page load
            fetchApprovedReviews();
        });
    </script>




@stop
