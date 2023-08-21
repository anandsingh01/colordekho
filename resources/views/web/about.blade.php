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
                    </div>
                    <div class="col-md-6">
                        <div class="pb-5 pt-5">
                            <img src="{{asset('')}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div style="text-align:justify">

                            <p>colourdekho.com in Andheri(W), Mumbai is one of the leading businesses in the Car Paint Manufacturers. Also known for Paint Manufacturers, Car Paint Manufacturers and much more.</p>
                            <p>Established in the year 2015, colourdekho.com is a top player in the category Car Paint Manufacturers in Andheri(W), Mumbai. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Andheri(W), Mumbai Over the course of its journey, this business has established a firm foothold in it’s industry. The belief that customer satisfaction is as important as their products and services, have helped this establishment garner a vast base of customers, which continues to grow by the day. This business employs individuals that are dedicated towards their respective roles and put in a lot of effort to achieve the common vision and larger goals of the company. In the near future, this business aims to expand its line of products and services and cater to a larger client base. In Andheri(W), Mumbai, this establishment occupies a prominent location in <b>Shop No. 289, Versova road, 4 Bungalows, Andheri (W) Mumbai 4000053</b>. It is an effortless task in commuting to this establishment as there are various modes of transport readily available. It is known to provide top service in the following categories: Paint Manufacturers, Car Paint Manufacturers.</p>
                        </div>
                    </div>

                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
