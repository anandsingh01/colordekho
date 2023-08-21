@extends('layouts.web')
<?php
session_start();
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
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Return policy</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="column">
                    <div style="text-align:justify">

                        <p>Return means an action of giving back the products ordered either wholly or partly back to Colour Dekho. The following are the reasons for return.
                            Product/s delivered do not match your order. Product/s delivered are past or near it’s expiry date ( which should be within 1 months of expiry date ).</p>
                        <p>Products found damaged at the time of delivery and in this event the user must check the package and items for any damages at the time of delivery in front of our delivery person and also if the products are not as per the enclosed invoice to initiate smooth return and refund. In the event if the user finds the damage or wrong items were received either wholly or partly the user must raise a return/refund request with our customer care within 7 days from the date of delivery of the products. We shall not be held liable for return if the request is raised after 7 days of delivery date. Upon receiving the Return request Colour Dekho shall verify the authenticity and the nature of the request.</p>
                        <p> If the request is found to be genuine we shall initiate process for the request. In the event of frivolous or unjustified requests regarding the quality and content of the products no return, replacement or refund shall be done from our end and we reserve the right to pursue necessary legal actions against the user and the user shall be solely liable and responsible for all costs incurred by us i.e. Colour Dekho.</p>

                        <h5><b>The Returns shall be subject to the following conditions:</b></h5>
                        <p>Any wrong ordering of products can be qualify for return. Batch number of the product being returned should match with the original invoice. Return requests arising due to change in the original prescription and not found to be the same as uploaded on our phone do not qualify for returns. Products being returned should only be in their original package i.e. with the price tags, labels, barcodes and should contain the original invoice. Partially consumed strips, products do not qualify for return and only fully unopened items or products can be returned.</p>
                        <h5><b>Non Refundable products:</b></h5>
                        <p>The user should note that all products that fall under the non refundable category. The users are therefore requested to call us on our customer care number or other official numbers as provided by us or email us in care colourdekho@gmail.com</p>







                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
