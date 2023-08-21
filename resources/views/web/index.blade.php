<?php $getCommonSetting = getCommonSetting();?>
@extends('layouts.web')
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />

    <style>
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
        span.select2.select2-container.select2-container--default {
            width: 100% !important;
        }
    </style>

@stop
@section('body')
    <?php
    $get_hero_banner = get_hero_banner();
    $getCommonSetting = getCommonSetting();
    //        print_r($getCommonSetting);die;
    ?>
    <div class="intro-slider-container">
        <div class="intro-slider owl-carousel owl-theme owl-nav-inside owl-light" data-toggle="owl" data-owl-options='{
      "dots": true,
      "nav": false,
      "autoplay" : true,
      "responsive": {
      "992": {
      "nav": true
      }
      }
      }'>
            @forelse($get_hero_banner as $get_hero_banners)
                <div class="intro-slide" style="background-image: url({{asset($get_hero_banners->banner)}});">
                    <div class="container">
                        <div class="intro-content text-center">
                            <h3 class="intro-subtitle text-white">{{$get_hero_banners->banner_heading}}</h3>
                            <!-- End .h3 intro-subtitle -->
                            <h1 class="intro-title text-white">{{$get_hero_banners->banner_subheading}}</h1>
                            <!-- End .intro-title -->
                            <a href="{{url($get_hero_banners->banner_link)}}" class="btn btn-primary font-weight-semibold">
                                <span>{{$get_hero_banners->banner_text}}</span>
                                <i class="icon-angle-right"></i>
                            </a>
                        </div>
                        <!-- End .intro-content -->
                    </div>
                    <!-- End .container -->
                </div>
                <!-- End .intro-slide -->
            @empty
            @endforelse
        </div>
        <!-- End .intro-slider owl-carousel owl-theme -->
        <span class="slider-loader"></span><!-- End .slider-loader -->
    </div>

    <div class="container pt-2 pb-2">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <ul class="nav nav-pills" id="tabs-5" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="cars-tab" data-toggle="tab"
                           href="#cars" role="tab" aria-controls="cars" aria-selected="true">
                            <h5 class="mb-1">Car Paint</h5>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="bikes-tab" data-toggle="tab" href="#bikes" role="tab"
                           aria-controls="bikes" aria-selected="false"><h5 class="mb-1">Two Wheeler Paint</h5></a>
                    </li>
                </ul>
                <div class="tab-content" id="tab-content-5">
                    <div class="tab-pane fade show active" id="cars" role="tabpanel" aria-labelledby="cars-tab">
                        <div class="login_part_form pt-0">
                            <div class="login_part_form_iner" data-select2-id="9">
                                <form class="row contact_form" action="#" enctype="multipart/form-data" method="post" id="form" novalidate="novalidate">
                                    <div class="col-md-12 form-group p_star" data-select2-id="8">
                                        <label>Manufacture</label>
                                        <select name="car_manufacture" id="car_manufacture" class="form-control manufacture sel2">
                                            <option>Select Manufacture</option>
                                            @forelse($car_manufacturer as $car_manufacturers)
                                                <option value="{{$car_manufacturers->id}}">{{$car_manufacturers->name}}</option>
                                            @empty
                                            @endforelse
                                        </select>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <label>Color</label>
                                        <select name="car_colors" id="car_colors" class="form-control colors sel2" >
                                            <option value="" data-select2-id="4">Select Color</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <label>Quantity</label>
                                        <select name="car_variations" id="car_variations" class="form-control variations sel2">
                                            <option value="" data-select2-id="6">Select Quantity</option>
                                        </select>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <label>Price</label>
                                        <input name="prices" id="car_prices" type="text" placeholder="price" readonly="" class="form-control prices">
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <label>MRP</label>
                                        <input name="mrp" id="car_mrp" type="text" placeholder="mrp" readonly="" class="form-control mrp">
                                    </div>

                                    <div class="col-md-12 form-group p_star">
                                        <label>Car Image</label>
                                        <input name="images" id="car_images" type="file" class="form-control images">
                                    </div>
                                    <input name="category" id="category" type="hidden" class="form-control" value="car">

                                    <div class="col-md-12 form-group">
{{--                                        <button type="submit" value="submit" class="btn_3 p-2">Add To Cart</button>--}}
                                        <button type="button" id="add-car-to-cart" class="btn_3 p-2">Add to Cart</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="bikes" role="tabpanel" aria-labelledby="bikes-tab">
                        <form class="row contact_form" action="#" enctype="multipart/form-data" method="post" id="form" novalidate="novalidate">
                            <div class="col-md-12 form-group p_star">
                                <label>Manufacture</label>
                                <select name="bike_manufacture" id="bike_manufacture" class="form-control bike_manufacture sel3">
                                    <option>Select Manufacture</option>
                                    @forelse($bike_manufacturer as $bike_manufacturers)
                                        <option value="{{$bike_manufacturers->id}}">{{$bike_manufacturers->name}}</option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <label>Color</label>
                                <select name="bike_colors" id="bike_colors" class="form-control colors  sel2">
                                    <option value="" data-select2-id="4">Select Color</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <label>Quantity</label>
                                <select name="bike_variations" id="bike_variations" class="form-control variations sel2">
                                    <option value="" data-select2-id="6">Select Quantity</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <label>Price</label>
                                <input name="prices" id="bike_prices" type="text" placeholder="price" readonly="" class="form-control prices">
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <label>MRP</label>
                                <input name="mrp" id="bike_mrp" type="text" placeholder="mrp" readonly="" class="form-control mrp">
                            </div>

                            <div class="col-md-12 form-group p_star">
                                <label>Car Image</label>
                                <input name="images" id="bike_images" type="file" class="form-control images">
                            </div>
                            <input name="category" id="category" type="hidden" class="form-control" value="car">

                            <div class="col-md-12 form-group">
                                {{--                                        <button type="submit" value="submit" class="btn_3 p-2">Add To Cart</button>--}}
                                <button type="button" id="add-bike-to-cart" class="btn_3 p-2">Add to Cart</button>
                            </div>
                        </form>

                    </div>
                </div><!-- End .tab-content -->
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

@stop
@section('script')

{{--    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>--}}
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>


{{--  Car Functions  --}}
    <script>
        $(document).ready(function() {

            // Initialize Select2 for the manufacture dropdown
            $('.sel2').select2();
            $('.sel3').select2();

            // // Initialize Select2 for the colors dropdown
            // $('#car_colors').select2();
            //
            // // Initialize Select2 for the variations dropdown
            // $('#car_variations').select2();


            $('#car_manufacture').on('change', function() {
                var car_manufacture = $(this).val();

                // Clear previous color options
                $('#car_colors').empty().append('<option value="">Select Color</option>');

                // Fetch colors using AJAX
                $.ajax({
                    url: '{{ route("fetch.colors") }}',
                    type: 'GET',
                    dataType: 'json',
                    data: { manufactureId: car_manufacture },
                    success: function(response) {
                        if (response.length > 0) {
                            $.each(response, function(index, color) {
                                $('#car_colors').append('<option value="' + color.id + '">' + color.color + '</option>');
                            });
                        }
                    },
                    error: function() {
                        alert('An error occurred while fetching colors.');
                    }
                });
            });

            $('#car_colors').on('change', function() {
                var car_colors = $(this).val();

                // Clear previous variation options
                $('#car_variations').empty().append('<option value="">Select Quantity</option>');

                // Fetch variations using AJAX
                $.ajax({
                    url: '{{ route("fetch.variations") }}',
                    type: 'GET',
                    dataType: 'json',
                    data: { colorId: car_colors },
                    success: function(response) {
                        if (response.variations.length > 0) {
                            $.each(response.variations, function(index, variation) {
                                $('#car_variations').append('<option value="' + variation.id + '">' + variation.variation + '</option>');
                            });
                        }
                    },
                    error: function() {
                        alert('An error occurred while fetching variations.');
                    }
                });
            });

            $('#car_variations').on('change', function() {
                var car_variations = $(this).val();

                // Fetch price and MRP using AJAX
                $.ajax({
                    url: '{{ route("fetch.variation.details") }}',
                    type: 'GET',
                    dataType: 'json',
                    data: { variationId: car_variations },
                    success: function(response) {
                        if (response.variation) {
                            $('#car_prices').val(response.variation.price);
                            $('#car_mrp').val(response.variation.mrp);
                        }
                    },
                    error: function() {
                        alert('An error occurred while fetching variation details.');
                    }
                });
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            $('#car_manufacture').on('change', function() {
                var selectedCarId = $(this).val();
                $('#car_id').val(selectedCarId);
            });

            $('#add-car-to-cart').on('click', function() {
                var carId = $('#car_manufacture').val();
                var variation = $('select[name="car_variations"]').val();
                var colorId = $('select[name="car_colors"]').val();
                var price = $('#car_prices').val();
                var mrp = $('#car_mrp').val();

                // Get the car image file input
                var carImageInput = document.getElementById('car_images');
                var carImage = carImageInput.files[0];

                // Create a FormData object and append the data
                var formData = new FormData();
                formData.append('car_id', carId);
                formData.append('variation', variation);
                formData.append('color_id', colorId);
                formData.append('price', price);
                formData.append('mrp', mrp);
                formData.append('category_id', 'cars');
                formData.append('car_image', carImage); // Append the car image

                $.ajax({
                    url: '{{ url('addToCart') }}',
                    type: 'POST',
                    data: formData,
                    processData: false, // Prevent jQuery from processing data
                    contentType: false, // Prevent jQuery from setting content type
                    headers: {
                        'X-CSRF-TOKEN': '{{ csrf_token() }}'
                    },
                    dataType: 'json',
                    success: function(response) {
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

        });
    </script>

{{--  Car Functions  --}}


{{--  Bike Functions  --}}
<script>
    $(document).ready(function() {



        $('#bike_manufacture').on('change', function() {
            var bike_manufacture = $(this).val();

            // Clear previous color options
            $('#bike_colors').empty().append('<option value="">Select Color</option>');

            // Fetch colors using AJAX
            $.ajax({
                url: '{{ route("fetch.bikecolors") }}',
                type: 'GET',
                dataType: 'json',
                data: { bike_manufacture: bike_manufacture },
                success: function(response) {
                    if (response.length > 0) {
                        $.each(response, function(index, color) {
                            $('#bike_colors').append('<option value="' + color.id + '">' + color.color + '</option>');
                        });
                    }
                },
                error: function() {
                    alert('An error occurred while fetching colors.');
                }
            });
        });

        $('#bike_colors').on('change', function() {
            var car_colors = $(this).val();

            // Clear previous variation options
            $('#bike_variations').empty().append('<option value="">Select Quantity</option>');

            // Fetch variations using AJAX
            $.ajax({
                url: '{{ route("fetch.bikevariations") }}',
                type: 'GET',
                dataType: 'json',
                data: { colorId: car_colors },
                success: function(response) {
                    if (response.variations.length > 0) {
                        $.each(response.variations, function(index, variation) {
                            $('#bike_variations').append('<option value="' + variation.id + '">' + variation.variation + '</option>');
                        });
                    }
                },
                error: function() {
                    alert('An error occurred while fetching variations.');
                }
            });
        });

        $('#bike_variations').on('change', function() {
            var bike_variations = $(this).val();

            // Fetch price and MRP using AJAX
            $.ajax({
                url: '{{ route("fetch.bikevariation.details") }}',
                type: 'GET',
                dataType: 'json',
                data: { variationId: bike_variations },
                success: function(response) {
                    if (response.variation) {
                        $('#bike_prices').val(response.variation.price);
                        $('#bike_mrp').val(response.variation.mrp);
                    }
                },
                error: function() {
                    alert('An error occurred while fetching variation details.');
                }
            });
        });
    });
</script>

<script>
    $(document).ready(function() {
        $('#bike_manufacture').on('change', function() {
            var selectedBikeId = $(this).val();
            $('#bike_id').val(selectedBikeId);
        });

        $('#add-bike-to-cart').on('click', function() {
            var bikeId = $('#bike_manufacture').val();
            var variation = $('select[name="bike_variations"]').val();
            var colorId = $('select[name="bike_colors"]').val();
            var price = $('#bike_prices').val();
            var mrp = $('#bike_mrp').val();

            // Get the image file input
            var imageInput = document.getElementById('bike_images');
            var bikeimage = imageInput.files[0];

            // Create a FormData object and append the data
            var formData = new FormData();
            formData.append('bikeId', bikeId);
            formData.append('variation', variation);
            formData.append('color_id', colorId);
            formData.append('price', price);
            formData.append('mrp', mrp);
            formData.append('category_id', 'cars');
            formData.append('image', bikeimage); // Append the image

            $.ajax({
                url: '{{ url('addToCartBike') }}',
                type: 'POST',
                data: formData,
                processData: false, // Prevent jQuery from processing data
                contentType: false, // Prevent jQuery from setting content type
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(response) {
                    $('#body-id').load('#body-id');
                    if (response.success) {
                        alert('Bike added to cart successfully!');
                    } else {
                        alert('Bike added to cart successfully!');
                    }
                },
                error: function() {
                    alert('An error occurred while adding to cart.');
                }
            });
        });

    });
</script>

{{--  Bike Functions  --}}



@stop
