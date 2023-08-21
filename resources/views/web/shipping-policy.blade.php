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
                    <li class="breadcrumb-item active" aria-current="page">Pricing Information</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="row">
                    <div class="column">

                        <i class="fas fa-phone-alt"></i><h3></h3>
                        <div style="text-align:justify">
                            <p>We are committed to delivering your order as quickly as possible, typically within <b>3 to 10 days</b> from the date of purchase. In the event of any unforeseen circumstances that may cause a delay in shipping, we will proactively communicate with you via email/call to provide an explanation.</p>
                            <p> <b>Shipping:</b> Once your order has been processed, we will promptly arrange for shipment. Typically, the shipping time is between <b>1 to 3 business days</b>. This includes packaging, labeling, and arranging transportation for your items.</p>
                            <p><b>Delivery:</b> We collaborate with reliable delivery service providers to ensure that your items are handled properly and securely during transportation. We select the most suitable service provider based on your geographic location and chosen delivery option. The estimated delivery time would be <b>3 to 10 business days</b>.</p>
                            <p>For any charges levied on shipping-return the users are requested to call us on our customer care number or any other official number provided by us or email us on colourdekho@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
