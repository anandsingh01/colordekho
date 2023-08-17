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
        .form-control {
            height: 40px;
            padding: 0.85rem 1rem;
        }
    </style>
@stop
@section('body')
    <?php
    $get_cart = get_cart();
    $get_count = json_decode($get_cart);
//    $getAllCart = getCartProducts();
    ?>
    <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Checkout <span></span></h1>
            </div>
            <!-- End .container -->
        </div>
        <!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                </ol>
            </div>
            <!-- End .container -->
        </nav>
        <!-- End .breadcrumb-nav -->
        <div class="page-content">
            <div class="cart">
                <div class="container">
                    <div class="row">
                        <form action="{{ route('checkout.submit') }}" method="post">
                            @csrf
                            <?php
                            if(Auth::check()) {
                                $addresses = \App\Models\UserAddress::where('user_id', auth()->user()->id)->get();
                                //                                print_r($users);
                                ?>
                            @forelse($addresses as $address)
                                <label>
                                    <input type="radio" name="selected_address" value="{{ $address->id }}">
                                    {{ $address->first_name }} {{ $address->last_name }}, {{$address->phone}} <br>
                                    {{$address->address_1}}, {{$address->address_2}}, {{$address->city}},
                                    {{$address->state}}, {{$address->pincode}}
                                </label>
                            @empty
                            @endforelse
                                <?php
                            }
                            ?>
                            <div class="row form-fields">
                                <div class="col-lg-9">
                                    <h2 class="checkout-title">Billing Details</h2>
                                    <!-- End .checkout-title -->
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label>First Name *</label>
                                            <input type="text" class="form-control" name="first_name" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                        <div class="col-sm-6">
                                            <label>Last Name *</label>
                                            <input type="text" class="form-control" name="last_name" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                    </div>
                                    <!-- End .row -->
                                    <label>Company Name (Optional)</label>
                                    <input type="text" class="form-control">
                                    <label>Country *</label>
                                    <input type="text" class="form-control" name="country" required>
                                    <label>Street address *</label>
                                    <input name="address_1" type="text" class="form-control" placeholder="House number and Street name" required>
                                    <input name="address_2" type="text" class="form-control" placeholder="Appartments, suite, unit etc ..." required>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label>Town / City *</label>
                                            <input name="city" type="text" class="form-control" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                        <div class="col-sm-6">
                                            <label>State / County *</label>
                                            <input name="state" type="text" class="form-control" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                    </div>
                                    <!-- End .row -->
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label>Postcode / ZIP *</label>
                                            <input name="pincode" type="text" class="form-control" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                        <div class="col-sm-6">
                                            <label>Phone *</label>
                                            <input name="phone" type="tel" class="form-control" required>
                                        </div>
                                        <!-- End .col-sm-6 -->
                                    </div>
                                    <!-- End .row -->
                                    <label>Email address *</label>
                                    <input name="email" type="email" class="form-control" required>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="saveAddress" name="save_address">
                                        <label class="custom-control-label" for="saveAddress">Save this address for future use</label>
                                    </div>
                                </div>
                                <!-- End .col-lg-9 -->
                                <aside class="col-lg-3">
                                    <div class="summary summary-cart">
                                        <h3 class="summary-title">Cart Total</h3><!-- End .summary-title -->
                                        <?php
                                        $get_cart = get_cart();
                                        $get_count = json_decode($get_cart);
//                                        $getAllCart = getCartProducts();
                                        ?>
                                        <table class="table table-summary">
                                            <tbody>
{{--                                            @php--}}
{{--                                                print_r($getAllCart);--}}
{{--                                            @endphp--}}
                                            @forelse($getAllCart as $key => $getAllCarts)

                                                <tr>
                                                    <td>

                                                        <h3 class="product-title">
                                                            Manufacturer : {{$getAllCarts['manufacturer']}}
                                                        </h3>

                                                        <h3 class="product-title">
                                                            Color : {{$getAllCarts['color']}}
                                                        </h3>

                                                        <p>
                                                            Variation : {{$getAllCarts['variation']}}
                                                        </p>
                                                    </td>
                                                    <td>
                                                       <span class="cart-product-info">
                                                       <span class="cart-product-qty">{{$getAllCarts['cartqty']}}
                                                       </span>x ${{$getAllCarts['price']}}
                                                       </span><!--End .cart-product-info-->
                                                    </td>
                                                </tr>
                                                <input type="hidden" name="type[]" value="{{$getAllCarts['type']}}"/>
                                                <input type="hidden" name="car_id[]" value="{{$getAllCarts['car_id'] ?? ''}}"/>
                                                <input type="hidden" name="bike_id[]" value="{{$getAllCarts['bike_id'] ?? ''}}"/>
                                                <input type="hidden" name="color_id[]" value="{{$getAllCarts['color_id']}}"/>
                                                <input type="hidden" name="variation[]" value="{{$getAllCarts['variation']}}"/>
                                                <input type="hidden" name="mrp[]" value="{{$getAllCarts['mrp']}}"/>
                                                <input type="hidden" name="price[]" value="{{$getAllCarts['price']}}"/>
                                                <input type="hidden" name="subtotal[]" value="{{$getAllCarts['subtotal']}}"/>
                                                <input type="hidden" name="cartqty[]" value="{{$getAllCarts['cartqty']}}"/>

                                            @empty
                                            @endforelse
                                            <tr>
                                                <td>Sales Tax:</td>
                                                <td><div class="salesTaxDiv"></div></td>
                                            </tr>

                                            @if(Session::has('discounted_total'))
                                                <tr class="summary-subtotal">
                                                    <td>Coupon Applied:</td>
                                                    <td>{{Session::get('applied_coupon')}}</td>
                                                </tr><!-- End .summary-subtotal -->
                                            @endif
                                            <tr class="">
                                                <td> Total:</td>
                                                <td>
                                                    @if(Session::has('discounted_total'))
                                                        $  {{number_format(Session::get('discounted_total'),2) ?? '0'}}
                                                    @else
                                                        {{number_format($get_count->cartTotal,2) ?? '0'}}
                                                    @endif
                                                </td>
                                            </tr>
{{--                                            <tr>--}}
{{--                                                <td>Delivery</td>--}}
{{--                                                <td>--}}
{{--                                                    <div class="form-group">--}}
{{--                                                        <select class="form-control" id="courier-select" name="selected_courier">--}}
{{--                                                            <option value="" disabled selected >Select a courier</option>--}}
{{--                                                        </select>--}}
{{--                                                    </div>--}}
{{--                                                </td>--}}
{{--                                            </tr>--}}
                                            <input type="hidden" class="form-control" id="final-amount" name="final_amount"
                                                   value="{{$get_count->cartTotal }}"
                                                   readonly>
                                            <tr  class="summary-subtotal">
                                                <td>Payable Amount:</td>
                                                <td><div class="finalTaxDiv"></div></td>
                                            </tr>
                                            </tbody>
                                        </table><!-- End .table table-summary -->
                                        <button type="submit" class="btn btn-order btn-primary btn-block pb-2 pt-2">PAY</button>
                                    </div><!-- End .summary -->
                                </aside><!-- End .col-lg-3 -->
                            </div>
                        </form>
                    </div>
                    <!-- End .row -->
                </div>
                <!-- End .container -->
            </div>
            <!-- End .cart -->
        </div>
        <!-- End .page-content -->
    </main>
@stop
@section('js')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Attach a keyup event handler to the pin code input field
            $('#pincode-input').on('keyup', function() {
                const pincode = $(this).val();

                // Check if the entered pin code has at least 5 characters
                if (pincode.length >= 5) {
                    // Call the fetchShippingServices function to fetch shipping services and update the displayed information
                    fetchShippingOptions($(this).val());
                }
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            const isAuthenticated = {!! json_encode(Auth::check()) !!};
            @if(Auth::check())
            const addresses = isAuthenticated ? {!! json_encode($addresses) !!} : [];
            @endif

            const $addressRadioButtons = $('input[name="selected_address"]');
            const $manualForm = $('.manual-form');
            const $savedAddresses = $('.saved-addresses');

            const $shippingOptions = $('#shipping-options');
            const $selectedCourier = $('#courier-select');
            const $shippingPriceInput = $('#shipping-price'); // Update this line
            const $totalAmountInput = $('#total-amount'); // Add this line

            const $pincodeInput = $('input[name="pincode"]');
            const sum_length = $('.sLength').val();
            const sum_width = $('.sWidth').val();
            const sum_height = $('.sHeight').val();
            const $finalAmountInput = $('#final-amount'); // Define the input field for final amount

            let ratesArray = [];


            let salesTax = 0;
            const debounceDelay = 500;
            let shippingTimer;

            $('input[name="pincode"]').on('keyup', function() {
                clearTimeout(shippingTimer);

                const zipCode = $(this).val();

                // Only fetch sales tax if ZIP code is 5 or more digits
                if (zipCode.length >= 5) {
                    shippingTimer = setTimeout(function() {
                        fetchSalesTax(zipCode);
                    }, debounceDelay);
                }
            });

            function fetchSalesTax(zipCode) {
                $.ajax({
                    method: 'GET',
                    url: 'https://api.api-ninjas.com/v1/salestax?zip_code=' + zipCode,
                    headers: { 'X-Api-Key': '4NZW/DZKECPyubyiLhZvcg==LEgqG60lhPyYuwSn' }, // Replace with your API key
                    contentType: 'application/json',
                    success: function(result) {
                        const salesTaxRate = parseFloat(result[0].total_rate);

                        // Get the total cost of products from the input field
                        const productTotal = parseFloat($('input[name="product_total"]').val());

                        // Calculate the total amount including sales tax
                        const totalAmount = productTotal + (productTotal * salesTaxRate);

                        // Display calculated values with $ sign in div elements
                        $('.salesTaxDiv').text('$' + (productTotal * salesTaxRate).toFixed(2));
                        $('.finalTaxDiv').text('$' + totalAmount.toFixed(2));

                        // Set calculated values in input fields without $ sign
                        $('#sales-tax').val((productTotal * salesTaxRate).toFixed(2));
                        $('#final-amount').val(totalAmount.toFixed(2));
                    },
                    error: function(jqXHR) {
                        console.error('Error fetching sales tax:', jqXHR.responseText);
                    }
                });
            }


            function fetchShippingOptions(pincode) {
                $.get('{{ url("get-shipping-options") }}', { pincode, sum_length, sum_width, sum_height }, function (response) {
                    displayShippingOptions(response);
                }).fail(function (error) {
                    console.error('Error fetching shipping options:', error);
                });
            }

            function displayShippingOptions(response) {
                ratesArray = Array.isArray(response.rates) ? response.rates : [];

                const $courierSelect = $('#courier-select');
                $courierSelect.empty();
                // Add the default "Choose an option" option
                $courierSelect.append($('<option>', {
                    value: '',
                    text: 'Choose an option'
                }));


                ratesArray.sort((a, b) => a.total_charge - b.total_charge);

                ratesArray.forEach(option => {
                    const optionText = `${option.min_delivery_time} -${option.max_delivery_time} days - ($${option.total_charge})`;
                    // const optionText = `$${option.total_charge}`;
                    const optionValue = option.courier_id;
                    const optionElement = new Option(optionText, optionValue);

                    $courierSelect.append(optionElement);
                });
            }

            function calculateProductTotal() {
                // Get the product total from the hidden input field
                const productTotal = parseFloat($('input[name="product_total"]').val());

                const shippingPriceStr = $('#shipping-price').val();
                const salesTax =  $('#sales-tax').val();

                console.log(salesTax);return false;


                const shippingPrice = parseFloat(shippingPriceStr.replace('$', '').replace(',', ''));

                const finalAmount = productTotal + shippingPrice + salesTax;


                if (!isNaN(shippingPrice)) {
                    // Calculate the final amount by adding the product total and shipping price
                    const finalAmount = productTotal + shippingPrice + salesTax;
                    // Return the final amount
                    return finalAmount;
                } else {
                    // Handle the case where shippingPrice is NaN (e.g., if the field is empty or has invalid format)
                    return productTotal; // Return the product total only
                }
            }

            // Update the final amount whenever the selected courier changes
            $selectedCourier.on('change', function () {
                const selectedCourier = $(this).val();
                const $finalAmountInput = $('#final-amount'); // Use the correct ID for the final amount input field

                // const productTotal = parseFloat($('#total-amount').val()); // Get the product total from the input field
                const salesTax = parseFloat($('#sales-tax').val()); // Get the product total from the input field
                @if(Session::has('discounted_total'))
                const productTotal = {{ Session::get('discounted_total') }}; // Use the discounted total from the session
                @else
                const productTotal = parseFloat($('#total-amount').val()); // Get the product total from the input field
                @endif


                // return false;
                // Find the selected rate based on the courier name
                const selectedRate = ratesArray.find(option => option.courier_id === selectedCourier);

                console.log(selectedRate.total_charge);
                if (!isNaN(productTotal)) {
                    // If a rate is found, update the shipping price in the input field
                    if (selectedRate) {
                        $shippingPriceInput.val('$' + selectedRate.total_charge);
                        // Calculate the new final amount
                        const newFinalAmount = salesTax + productTotal + selectedRate.total_charge;

                        // Update the input field with the formatted amount
                        $finalAmountInput.val(newFinalAmount.toFixed(2));
                        $('.finalTaxDiv').text(newFinalAmount.toFixed(2));
                    } else {
                        $shippingPriceInput.val('N/A'); // Set a default value if rate not found

                        // If rate not found, keep the existing product total as the final amount
                        $finalAmountInput.val(productTotal.toFixed(2));
                        $('.finalTaxDiv').text(productTotal.toFixed(2));
                    }
                } else {
                    // Handle the case where productTotal is NaN (e.g., if the field is empty or has invalid format)
                    $finalAmountInput.val('N/A');

                }
            });



            const $formFields = {
                first_name: $('input[name="first_name"]'),
                last_name: $('input[name="last_name"]'),
                country: $('input[name="country"]'),
                address_1: $('input[name="address_1"]'),
                address_2: $('input[name="address_2"]'),
                city: $('input[name="city"]'),
                state: $('input[name="state"]'),
                pincode: $('input[name="pincode"]'),
                phone: $('input[name="phone"]'),
                email: $('input[name="email"]')
            };

            function showSavedAddresses() {
                $savedAddresses.show();
                $manualForm.hide();
            }

            function showManualForm() {
                $savedAddresses.hide();
                $manualForm.show();
            }

            function populateAddressFields(address) {
                for (const field in $formFields) {
                    $formFields[field].val(address[field]);
                }
            }

            function clearFormFields() {
                for (const field in $formFields) {
                    $formFields[field].val('');
                }
            }

            $addressRadioButtons.on('change', function () {
                const selectedAddressId = $(this).val();
                if (selectedAddressId !== '') {
                    const selectedAddress = addresses.find(address => address.id === parseInt(selectedAddressId));
                    populateAddressFields(selectedAddress);
                    fetchShippingOptions(selectedAddress.pincode);
                } else {
                    clearFormFields();
                    $shippingOptions.empty();
                    $selectedCourier.html('');
                }
            });

            $pincodeInput.on('keyup', function () {
                fetchShippingOptions($(this).val());
            });

            $('input[name="shipping_option"]').on('change', function () {
                $selectedCourier.html(`Selected Courier: ${$(this).val()}`);
            });

            (isAuthenticated && addresses.length > 0) ? showSavedAddresses() : showManualForm();
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
