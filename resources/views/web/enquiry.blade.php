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
        .enquiry-form {
            max-width: 60%;
            margin-left: auto;
            margin-right: auto;
            background-color: #fff;
            padding: 2.2rem 2rem 4.4rem;
            box-shadow: 0 3px 16px rgba(51, 51, 51, 0.1);
            border: 25px solid darkgray;
        }

        .login-page.bg-image.pt-8.pb-8.pt-md-12.pb-md-12.pt-lg-17.pb-lg-17{
            background:unset;
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
                    <li class="breadcrumb-item active" aria-current="page">Enquiry</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="enquiry-form login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">



                <div class="form-box">
                    @if(Session::has('success'))
                        <div class="col-6 col-lg-4 col-xl-2 text-center">
                            <div class="btn-wrap">
                                <span>{{Session::get('success')}}</span>
                                {{--                            <a href="#" class="btn btn-outline-primary btn-rounded"><i class="icon-long-arrow-right"></i><span>Button text</span></a>--}}
                            </div><!-- End .btn-wrap -->
                        </div>
                    @endif
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Enquiry Form</a>
                            </li>
                        </ul>

                        @if(Session::has('enquiry_sent'))
                            <div class="alert alert-info text-center">
                                {{Session::get('enquiry_sent')}}
                            </div>
                            @endif
                        <div class="tab-content" id="tab-content-5">
                            <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                <form action="{{url('send-enquiry') }}" method="post">
                                    @csrf

                                    <div class="form-group">
                                        <label for="register-name">Name  *</label>
                                        <input type="text" class="form-control" id="register-name"
                                               name="name" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="register-email">Your email address *</label>
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>


                                    <div class="form-group">
                                        <label for="register-password">Mobile  *</label>
                                        <input type="phone" class="form-control" name="phone" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="register-email">Your message *</label>
                                        <textarea class="form-control" id="register-email" name="message" required> </textarea>
                                    </div>
                                    <p class="" style="font-size:10px; line-height:10px;">
                                        By clicking "Submit?", I confirm I have read and agreed to this website's Terms of Service and Privacy Policy and provide my express written consent via electronic signature authorizing lifragrances.com and one or more law firms, their agents and marketing partners to contact me about my Enquiry and other related products and services to the number and email address I provided (including any wireless number). I further expressly consent to receive telemarketing emails, calls, text messages, pre-recorded messages, and artificial voice messages via an autodialed phone system, even if my telephone number is a mobile number that is currently listed on any state, federal or corporate “Do Not Call” list. I understand that my consent is not a condition of purchase of any goods or services and that standard message and data rates may apply.


                                    </p>
                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>Send</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>
                                    </div>
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
