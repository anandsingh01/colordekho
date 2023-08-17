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
                    <li class="breadcrumb-item active" aria-current="page">Privacy policy</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>
                        <h3>PRIVACY POLICY:</h3>
                            We have established this privacy policy as a result of maintaining the importance of our customer’s data, registered members and users information. We are committed to your privacy and security and do not sell your data. Your data security is 100% guaranteed when you shop at Long Island Fragrances.

                            <br>
                            All the user information provided in this site is ONLY used to operate the service, process order, to provide information about special offers, promotions and will not be shared with any third party.
                            <br>
                            If you have any questions regarding our privacy policy and practices, or would like to delete any data associated to you, please contact us.
                            <br>
                            We may change this policy from time to time in the future. Any such changes will be posted here. We advise you to check back frequently to see any updates or changes.
                        </p>

                       <br>

                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
