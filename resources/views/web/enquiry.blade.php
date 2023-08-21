@extends('layouts.web')
<?php
session_start();
$getCommonSetting = getCommonSetting();
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

        .form-box {
             padding: 0;
            box-shadow:unset;
        }

        .form-tab .form-footer {
            border-bottom: unset;
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


        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center">Enquiry Form</h2>
                    </div>
                    <div class="col-md-6">
                        <div class="pb-5 pt-5">
                            <p class="pb-2 pt-2"><h5>Address : </h5> {{$getCommonSetting->contact_address}}  </p>
                            <p class="pb-2 pt-2"><h5>Email : </h5> {{$getCommonSetting->contact_email}}  </p> <br>
                            <p class="pb-2 pt-2"><h5>Phone : </h5> {{$getCommonSetting->contact_phone}}  </p><br>
                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="form-box">
                            @if(Session::has('success'))
                                <div class="col-6 col-lg-12 col-xl-2 text-center">
                                    <div class="btn-wrap">
                                        <span>{{Session::get('success')}}</span>
                                        {{--                            <a href="#" class="btn btn-outline-primary btn-rounded"><i class="icon-long-arrow-right"></i><span>Button text</span></a>--}}
                                    </div><!-- End .btn-wrap -->
                                </div>
                            @endif
                            <div class="form-tab">
                                @if(Session::has('enquiry_sent'))
                                    <div class="alert alert-info text-center">
                                        {{Session::get('enquiry_sent')}}
                                    </div>
                                @endif
                                <div class="tab-content">
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
                    </div>

                    <div class="col-md-12">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d1884.7728494690914!2d72.824597!3d19.127576!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTnCsDA3JzM5LjMiTiA3MsKwNDknMzIuOSJF!5e0!3m2!1sen!2sin!4v1692622714395!5m2!1sen!2sin"  style="border:0; width: 100%; height:450px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
