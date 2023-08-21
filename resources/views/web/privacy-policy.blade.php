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
                        <div class="column">

                            <i class="fas fa-phone-alt"></i><h3></h3>
                            <div style="text-align:justify">
                                <p>This Privacy Policy is as per the IT ACT 2000 and any amendment arising out of any update from the government the same shall be incorporated and changed   as and when needed. The user intending to use our website for any type of paint related information or service  it shall be presumed that the user has agreed and accepted the terms and conditions and the privacy policy in toto. However if the user is not accepting and agreeing to our terms and conditions or any part thereof as stated in this website  then he/she in that case should  immediately exit from this website.  </p>
                                <p>
                                    We reserve the right to correct any discrepancies, omit or improve and add more information for better knowledge and understanding for the user and to safeguard our interests.
                                </p><br>
                                <p>
                                    In case the user intends to register with us then all the personal details, data and information of the user needs to be provided to us to enable us to smoothly process all orders/refunds/returns/cancellations of the user. The users all personal information, data and details shall remain secure and protected with us and we shall never ever disclose such information to anyone save and except the users name and address with our delivery partner  for delivering paints and toolkit products to the users doorstep and also the user is advice that he/she should keep all their personal details, information and login credentials secret and protected from misuse however in case the user finds any suspicious activity or the user information have been compromised and has been accessed by someone wherein there is a security breach in that event the user has to inform us immediately by email @ colourdekho@gmail.com and also by phone. If the user wishes to exit and deregister with us then all the information of the user shall be deleted from our records. However the user needs to inform us by mail on colourdekho@gmail.com and also call us on phone and put the request for the same. The user should note that we may have to share all the users information or part thereof with any law enforcing authority who may reasonably demand the same at any given time but at our end we will ensure to verify and authenticate such demands genuineness prior to release of such information. We shall on our part inform the user about the developments and shall insist upon the user to verify, authenticate and do follow up with the relevant authorities to get the matter resolved expeditiously.
                                </p>
                                <br><p>
                                    The users should beware of phishing emails and fraudulent practices prevailing in the electronic media and therefore should always protect their passwords and keep on changing them from time to time. Users must also ensure to protect and not share all their banking cards details with anyone. We at our end shall not be held liable for any fraud which may befall on the user due to their own faults and negligence.</p>

                            </div>
                        </div>

                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
