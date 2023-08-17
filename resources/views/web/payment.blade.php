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
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Checkout <span></span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="cart">
                <div class="container">
                    <div class="row">

                        <div class="col-md-8">
                            <form role="form" action="{{ route('stripe.post') }}" method="post" class="require-validation"
                                  data-cc-on-file="false"
                                  data-stripe-publishable-key="pk_test_51NbLEHSBT80Q619YMYXCKzMcYcpPySG48uBI0yTCY7o7tAQso8QKMgq662suEl0f5rOYy5RsobAUiWfkoWfRvX6k00b6E9N1ui"
                                  id="payment-form">
                                @csrf

                                <input type="hidden" name="order_id" value="{{$order_id}}"/>
                                <input type="hidden" name="order_primary_key" value="{{$order_primary_key}}"/>
                                <div class='form-row row'>
                                    <div class='col-md-6 form-group required'>
                                        <label class='control-label'>Name on Card</label>
                                        <input class='form-control' size='4' name="name_on_card" type='text'>
                                    </div>

                                    <div class='col-md-6 form-group required'>
                                        <label class='control-label'>Card Number</label>
                                        <input autocomplete='off' name="card_no"  class='form-control card-number' size='20' type='text'>
                                    </div>

                                    <div class='col-xs-6 col-md-4 form-group cvc required'>
                                        <label class='control-label'>CVC</label>
                                        <input autocomplete='off' name="cvc"  class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
                                    </div>

                                    <div class='col-xs-12 col-md-4 form-group expiration required'>
                                        <label class='control-label'>Expiration Month</label>
                                        <input class='form-control card-expiry-month' name="exp_month"  placeholder='MM' size='2' type='text'>
                                    </div>
                                    <div class='col-xs-12 col-md-4 form-group expiration required'>
                                        <label class='control-label'>Expiration Year</label>
                                        <input class='form-control card-expiry-year' name="exp_year"  placeholder='YYYY' size='4' type='text'>
                                    </div>
                                </div>

                                *We do not save your data.

                                <div class="row">
                                    <div class="col-xs-12">
                                        <button class="btn btn-lg btn-success pb-2 pt-2" style="background: #bd0131;color:#fff" type="submit">Pay Now</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <div class="col-md-4">
                            @if(Session::has('products_details'))
                                <?php
                                        $productDetailsSession = Session::get('products_details');
                                        print_r($productDetailsSession);
                                    ?>
                                @endif

                                <table class="table table-summary">
{{--                                    <tr>--}}
{{--                                        <td>Cart Amount :</td>--}}
{{--                                        <td>$<?php echo $productDetailsSession['product_total'];?></td>--}}
{{--                                    </tr>--}}
{{--                                    <tr>--}}
{{--                                        <td>Shipping Amount :</td>--}}
{{--                                        <td><?php echo $productDetailsSession['shipping_price'];?></td>--}}
{{--                                    </tr>--}}
{{--                                    <tr>--}}
{{--                                        <td>Subtotal :</td>--}}
{{--                                        <td>$<?php echo $productDetailsSession['final_amount'];?></td>--}}
{{--                                    </tr>--}}

{{--                                    <tr class="summary-total">--}}
{{--                                        <td>Total:</td>--}}
{{--                                        <td>$<?php echo $productDetailsSession['final_amount'];?></td>--}}
{{--                                    </tr><!-- End .summary-total -->--}}
                                </table>
                        </div>

                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .cart -->
        </div><!-- End .page-content -->
    </main>
@stop
@section('js')

    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>

    <script>
        $(document).ready(function() {
            $('.errordiv').addClass('hide');
        });
    </script>

    <script type="text/javascript">
        $(function() {

            var $form = $(".require-validation");

            $('form.require-validation').bind('submit', function(e) {
                var $form = $(".require-validation"),
                    inputSelector = ['input[type=email]', 'input[type=password]',
                        'input[type=text]', 'input[type=file]',
                        'textarea'
                    ].join(', '),
                    $inputs = $form.find('.required').find(inputSelector),
                    $errorMessage = $form.find('div.error'),
                    valid = true;
                $errorMessage.addClass('hide');

                $('.has-error').removeClass('has-error');
                $inputs.each(function(i, el) {
                    var $input = $(el);
                    if ($input.val() === '') {
                        $input.parent().addClass('has-error');
                        $errorMessage.removeClass('hide');
                        e.preventDefault();
                    }
                });

                if (!$form.data('cc-on-file')) {
                    e.preventDefault();
                    Stripe.setPublishableKey($form.data('stripe-publishable-key'));
                    Stripe.createToken({
                        number: $('.card-number').val(),
                        cvc: $('.card-cvc').val(),
                        exp_month: $('.card-expiry-month').val(),
                        exp_year: $('.card-expiry-year').val()
                    }, stripeResponseHandler);
                }

            });

            function stripeResponseHandler(status, response) {
                if (response.error) {
                    $('.error')
                        .removeClass('hide')
                        .find('.alert')
                        .text(response.error.message);
                } else {
                    /* token contains id, last4, and card type */
                    var token = response['id'];

                    $form.find('input[type=text]').empty();
                    $form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
                    $form.get(0).submit();
                }
            }

        });
    </script>
@stop
