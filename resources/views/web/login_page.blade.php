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
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Login</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="form-box">
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="tab-content-5">
                            <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                <form action="{{url('check-login')}}" method="post" id="login-form">
                                    @csrf
                                    <div class="form-group">
                                        <label for="singin-password">Phone *</label>
                                        <input type="text" class="form-control" id="mobile" name="phone_number" required>
                                        <button type="button" class="btn btn-info pt-2 pb-2" id="get-otp">Get OTP</button>
                                    </div>

                                    <div class="form-group" id="otp_div" style="display: none;">
                                        <label for="singin-password">Enter OTP *</label>
                                        <input type="text" class="form-control" id="otp" name="otp" required>
                                        <button type="button" class="btn btn-success mt-2 pt-2 pb-2"  id="verify-otp">Verify OTP</button>

                                        <br>
                                        <br>

                                    </div>

{{--                                    <button type="submit" id="submit-button" disabled class="btn btn-outline-primary-2">--}}
{{--                                        <span>LOG IN</span>--}}
{{--                                        <i class="icon-long-arrow-right"></i>--}}
{{--                                    </button>--}}

                                </form>


                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                <form action="{{ route('register') }}" method="post" id="login-form">
                                    @csrf

                                    <div class="form-group">
                                        <label for="register_name">Name  *</label>
                                        <input type="text" class="form-control" id="register_name"
                                               name="register_name" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="register-email">Your email address *</label>
                                        <input type="email" class="form-control" id="register_email" name="register_email" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="singin-password">Phone *</label>
                                        <input type="text" class="form-control" id="mobile" name="phone_number" required>
                                        <button type="button" class="btn btn-info mt-2 pt-2 pb-2"  id="get-otp">Get OTP</button>
                                    </div>

                                    <div class="form-group" id="otp_div" style="display: none;">
                                        <label for="singin-password">Enter OTP *</label>
                                        <input type="text" class="form-control" id="otp" name="otp" required>
                                        <button type="button" id="verify-otp">Verify OTP</button>
                                    </div>

                                    {{--                                    <div class="form-group">--}}
                                    {{--                                        <label for="register-password">Password *</label>--}}
                                    {{--                                        <input type="password" class="form-control" id="register-password" name="register-password" required>--}}
                                    {{--                                    </div>--}}

{{--                                    <div class="form-footer">--}}
{{--                                        <button type="submit" class="btn btn-outline-primary-2" id="submit-button" disabled>--}}
{{--                                            <span>SIGN UP</span>--}}
{{--                                            <i class="icon-long-arrow-right"></i>--}}
{{--                                        </button>--}}

{{--                                    </div>--}}
                                </form>
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
