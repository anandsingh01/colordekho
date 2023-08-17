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
                    <li class="breadcrumb-item active" aria-current="page">Order Status</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="row">
                    <h3 class="text-center">Order Status</h3>
                    <div class="col-md-12">
                        <form class="form" method="post" action="">
                            <div class="form-group">
                                <label for="register-name">Email Address  *</label>
                                <input type="text" class="form-control" id="email_address"
                                       name="email_address" required>
                            </div>

                            <div class="form-group">
                                <label for="register-name">Order number  *</label>
                                <input type="text" class="form-control" id="order_number"
                                       name="order_number" required>
                            </div>

                            <button type="submit" class="btn btn-outline-primary-2">
                                <span>Check</span>
                                <i class="icon-long-arrow-right"></i>
                            </button>
                        </form>


                        <br>


                        For further questions regarding the shipping information, Please contact us via Email.

                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
