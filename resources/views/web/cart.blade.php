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
        h1{
            font-family: inherit;
        }
        a.removebtn.text-black {
            background: red;
            color: #fff;
            padding: 10px;
            font-weight: 800;
        }
    </style>
@stop
@section('body')
    <?php
    $get_cart = get_cart();
    $get_count = json_decode($get_cart);
    ?>
    <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Shopping Cart<span>Shop</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="cart" id="cart-div">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <table class="table table-cart table-mobile">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                                </thead>

                                <tbody>
                                @forelse($getAllCart as $getAllCarts)
                                    <tr>
{{--                                        <pre>--}}

{{--                                        @php--}}
{{--                                            print_r($getAllCarts);--}}
{{--//                                            die;--}}
{{--                                        @endphp--}}
{{--                                        </pre>--}}
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="">
                                                        <img src="{{asset($getAllCarts['image'])}}"
                                                             alt="">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                  {{$getAllCarts['manufacturer'] ?? ''}} - {{$getAllCarts['color'] ?? ''}}
                                                </h3>

                                                <p>
                                                    {{$getAllCarts['variation'] ?? ''}}
                                                </p>
                                            </div>
                                        </td>
                                        <td class="price-col">${{$getAllCarts['price']}}</td>
                                        <td class="quantity-col">
                                            <div class="cart-product-quantity">
                                                <input type="number" class="form-control qty"
                                                       data-cartid="{{$getAllCarts['id']}}"
                                                       value="{{$getAllCarts['cartqty']}}" min="1" max="10" step="1" data-decimals="0" required>
                                            </div><!-- End .cart-product-quantity -->
                                        </td>
                                        <td class="total-col">${{$getAllCarts['subtotal']}}</td>
                                        <td class="remove-col">
                                            <a class="removebtn text-black" onclick="deleteConfirmation({{$getAllCarts['id']}})" data-cartid="{{$getAllCarts['id']}}">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @empty
                                @endforelse
                                </tbody>
                            </table>
                            <!-- End .table table-wishlist -->


                        </div><!-- End .col-lg-9 -->
                        <aside class="col-lg-3">
                            <div class="summary summary-cart">
                                <h3 class="summary-title">Cart Total</h3><!-- End .summary-title -->

                                <table class="table table-summary">
                                    <tbody>
                                    <tr class="summary-subtotal">
                                        <td>Subtotal:</td>
                                        <td>
                                            $
                                            @if(Session::has('discounted_total'))
                                                <p class="final_amount">
                                                    <strike>
                                                        $   {{number_format($get_count->cartTotal,2) ?? '0'}}
                                                    </strike>
                                                </p>

                                                $  {{number_format(Session::get('discounted_total'),2) ?? '0'}}

                                            @else
                                                {{number_format($get_count->cartTotal,2) ?? '0'}}
                                            @endif
                                        </td>
                                    </tr><!-- End .summary-subtotal -->

                                    @if(Session::has('discounted_total'))
                                        <tr class="summary-subtotal">
                                            <td>Coupon Applied:</td>
                                            <td>{{Session::get('applied_coupon')}}</td>
                                        </tr><!-- End .summary-subtotal -->
                                    @endif

                                    <tr class="summary-total">
                                        <td>Total:</td>
                                        <td>
                                            $
                                            @if(Session::has('discounted_total'))
                                                $  {{number_format(Session::get('discounted_total'),2) ?? '0'}}

                                            @else
                                                {{number_format($get_count->cartTotal,2) ?? '0'}}
                                            @endif
                                        </td>
                                    </tr><!-- End .summary-total -->
                                    </tbody>
                                </table><!-- End .table table-summary -->

                                <a href="{{url('checkout')}}" class="btn btn-outline-primary-2 btn-order btn-block">PROCEED TO CHECKOUT</a>
                            </div><!-- End .summary -->
                        </aside><!-- End .col-lg-3 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .cart -->
        </div><!-- End .page-content -->
    </main>
@stop
@section('js')




    <script>
        {{--$('.qty').on('change',function (e){--}}

        {{--    var product_id = $('.product_id').val();--}}

        {{--    // $('.updateSize').removeAttr('disabled');--}}
        {{--    var qty = $(this).data('qty');--}}

        {{--    $('.sizenotify').addClass('d-none');--}}
        {{--    var cart_id = $(this).closest('.product_data').find('.cart_id').val();--}}
        {{--    var product_id = $(this).closest('.product_data').find('.product_id').val();--}}
        {{--    var price = $(this).closest('.product_data').find('.price').val();--}}
        {{--    // alert(price);;--}}

        {{--    if(qty){--}}
        {{--        $.ajaxSetup({--}}
        {{--            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}--}}
        {{--        });--}}

        {{--        $.ajax({--}}
        {{--            method: 'POST',--}}
        {{--            url: '{{route('updateQtyCart')}}',--}}
        {{--            data: {--}}
        {{--                'product_id': product_id,--}}
        {{--                'cartqty': qty,--}}
        {{--                'price': price,--}}
        {{--                'cart_id': cart_id,--}}
        {{--            },--}}
        {{--            success: function (response) {--}}
        {{--                $('#body-id').load(' #body-id');--}}
        {{--                console.log(response.cartSubtotal);--}}

        {{--            }, error: function () {--}}

        {{--            }--}}


        {{--        });--}}
        {{--    }--}}

        {{--    location.reload();--}}
        {{--});--}}
    </script>

    <script>
        $(document).ready(function () {
            $('.qty').on('change', function () {
                const cartId = $(this).data('cartid');
                const quantity = $(this).closest('tr').find('.qty').val();
                // Send AJAX request to update the cart
                $.ajax({
                    url: '{{url('updateCart')}}',
                    method: 'POST',
                    data: {
                        cartId: cartId,
                        quantity: quantity,
                        // Add other cart data fields if needed
                    },
                    success: function (response) {
                        $('#body-id').load('#body-id');
                        $('#cart-div').load('#cart-div');

                        const updatedSubtotal = response.updatedSubtotal;
                        $(this).closest('tr').find('.total-col').text('$' + updatedSubtotal);
                        // location.reload();
                    },
                    error: function (xhr, status, error) {
                        // Handle error if needed
                    }
                });
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            const applyCouponBtn = $('#applyCouponBtn');
            const couponCodeInput = $('#couponCode');

            applyCouponBtn.click(function(event) {
                event.preventDefault();
                const couponCode = couponCodeInput.val();

                // Make an AJAX request to apply the coupon code
                $.ajax({
                    url: '{{ route('cart.apply_coupon') }}',
                    type: 'POST',
                    data: { coupon_code: couponCode },
                    dataType: 'json',
                    success: function(response) {
                        // Update the cart total with the discounted total
                        const summaryTotal = $('.summary-total td:last-child');
                        summaryTotal.text('$ ' + response.discounted_total.toFixed(2));
                        $('.final_amount').html('$ ' + response.discounted_total.toFixed(2));
                    },
                    error: function(xhr) {
                        console.log('Error:', xhr.responseText);
                    }
                });
            });
        });

    </script>

@stop
