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
                    <h3 class="text-center">PRICING AND ORDERING INFORMAITON: Ordering information:</h3>
                    <div class="col-md-12">
                        <p>
                        <h3>Order by Online:</h3>
                        Login to the website if you already have one or simply register yourself by creating a new account or login via Gmail or Facebook accounts.
                        <br>
                        Order and pay entirely online using our secured website https://lifragrances.com
                        <br>
                        Shop throughout our store and place the items you wish to purchase into your shopping cart. Remember, you may change the quantity of any item in your shopping cart, as well as remove it completely, at any time. Also the items added to cart, will be automatically removed after 24hrs if no purchase is made.

                        <br>
                        Once you completed all of your shopping, simply fill out and submit the online order form including your payment method details along with all the necessary billing and shipping information. You will then receive an order confirmation number for your reference. Be sure to include your daytime phone number and E-mail address so that we can contact you with any questions regarding your order.

                        <br>
                        We recommend printing your confirmation page for your records. We appreciate your business and hope you enjoy our service.

                        </p>

                        <p>
                        <h3>Sales tax:</h3>

                        State law requires that we collect applicable sales tax on orders shipped to addresses in the states of Alabama, Arizona, Arkansas, California, Colorado, Connecticut, District of Columbia, Florida, Georgia, Hawaii, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky, Louisiana, Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Nebraska, Nevada, New Jersey, New Mexico, New York, North Carolina, North Dakota, Ohio, Oklahoma, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia, Wisconsin and Wyoming.
                        <br>
                        Please note that tax is computed at the state level when placing your order. Your actual tax may vary depending upon the county where the product is being shipped.
                        </p>
                        <br>



                        <p>
                        <h3>
                            Payment Options:

                        </h3>
                            We accept: MasterCard, Visa, Discover, and American Express. All orders are charged in U.S. dollars.
                            <br>
                            Sorry, we cannot split payments onto separate cards or pay methods.
                        </p>

                        <p>
                        <h3> Coupon Redemption:</h3>
                            To redeem a coupon, simply click on the coupon link provided or enter the coupon claim code during the checkout process. Coupons are redeemable for one time and one purchase only.
                        <br>
                            Coupons valid for online orders only Non-negotiable and non-transferable.  Applies only to in stock items. If coupons are intentionally misused, it may result in an adjustment or cancellation of the bill or order. May not be combined with any other offer. Coupons, discounts and promotions cannot be applied retroactively to previously placed orders.

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
