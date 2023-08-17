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
                <div class="row">
                    <h3 class="text-center">RETURN POLICY:</h3>
                    <div class="col-md-12">
                        <p>
                            All returns will be processed ONLY for unopened merchandise in its original condition, including original packaging and invoice/packing slip within 15 days of receipt and you will receive a refund of the product.
                            <br>
                            Shipping costs you incur to return the product to us will not be refunded. Shipping cost is non-refundable for undelivered, unclaimed or return packages, unless we made an error.
                            <br>
                            Please note the following information is needed to process the return. (The return will not be processed if any of the below information is missing)

                            <ul>

                            <li>
                                RMA number – Please email us at info@lifragrances.com to obtain the RMA number of your order.

                            </li>
                            <li>
                                Full name and address

                            </li>
                            <li>
                                Phone number

                            </li>
                            <li>
                                E-mail address

                            </li>
                            <li>Packing slip
                               </li>
                            <li> Original order confirmation number
                               </li>
                            <li> Your reason for returning the merchandise.</li>
{{--                            <li></li>--}}
                        </ul>

                        <br>
                        Please return the UNOPENED merchandise to the sender’s address.
                        <br>
                        All returns must be shipped back to lifragrances.com using a trackable courier. (UPS, FedEx, USPS Delivery confirmation)
                        <br>
                        Any package that has not been received by Lifragrances.com and tracking information cannot be provided, will be the sole responsibility of the shipper.
                        <br>
                        PLEASE ALLOW UPTO 14 BUSINESS DAYS TO PROCESS YOUR RETURN OR EXCHANGE.
                        <br>
                        If your package is returned marked as “Refused”, “Damage Claims”, or “undeliverable”, and you would like to have it re-shipped; we will automatically need to charge a $7.99 re-shipping fee.

                        </p>

                        <p>
                        <h3>Damage claims:</h3>

                        If you received any damaged order, please email us within 3 days to the date of delivery with proper pictures. A replacement will be sent to you in 10 business days.
                        </p>

                        <p>
                        <h3>Undelivered package: </h3>
                        You must need to notify us within 15 days from the date of order if you have not received your package to info@lifragrances.com.
                        </p>


                        <br>

                        <h3>
                            Cancellations:
                        </h3>

                        <p> Since we use automated order processing systems, we are unable to cancel or modify your order once it is submitted. If you have any other questions, please contact info@lifragrances.com.</p>

                        <h3>
                            Waiting list:
                        </h3>

                        <p>
                            If you see a product in our site that is out of stock, simply enter your email address and click “Notify me”. An email will be sent to you automatically as soon as we get the item back in stock.
                        </p>


                        <p>
                        <h3>
                            SHIPPING INFORMAITON:


                        </h3>
                        <p>
                           <b>
                               FREE standard shipping for all orders above $75.00
                           </b>
                        </p>
                        (The $75.00 total is calculated AFTER any promotion, coupon deductions and before taxes)

                        <br>
                        Shipping charges for Standard Ground shipping is calculated by our system automatically depending on weight and location of shipment ordered.
                        </p>

                        <p>
                        <h6> Standard U.S. shipping (4-7 business days)</h6>
                        U.S. orders will be shipped via U.S. Postal Service, UPS or FedEx. Most packages arrive within 4-7 business days. (Not a guaranteed service)

                        </p>

                        <p>
                        <h6> Express U.S. Shipping (2-3 business days guaranteed).</h6>
                        Not available at P.O. Boxes.
                        Starting at $15.99 depending on weight of shipment ordered.

                        </p>

                        <p>
                        <h6> 1-Business Day shipping (1 business day guaranteed)</h6>
                        Order by 12pm Eastern Time for delivery next business day. <br>
                        Excluding weekends. Not available at P.O. Boxes.<br>
                        Starting at $19.99 depending on weight of shipment ordered.

                        <br>
                        We may change these shipping charges from time to time in the future. Any such changes will be posted here. We advise you to check back frequently to see any updates or changes.

                        </p>
 <p>
                        <h6>International Orders:</h6>
                        Currently Long Island Fragrances LLC is operating ONLY in U.S. And all the orders and shipments will be only in U.S.
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
