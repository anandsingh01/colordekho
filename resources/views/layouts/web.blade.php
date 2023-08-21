<?php
$getCommonSetting = getCommonSetting();
$get_category = get_category();
$get_brands = get_brands();
//print_r($get_category);die;
?>
    <!DOCTYPE html>
<html lang="en" id="html_div">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{$getCommonSetting->site_title}}</title>
    <meta name="keywords" content="{{$getCommonSetting->site_title}}">
    <meta name="description" content="{{$getCommonSetting->site_title}}">
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/web/')}}/assets/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets/web/')}}/assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/web/')}}/assets/images/icons/favicon-16x16.png">
    <link rel="manifest" href="{{asset('assets/web/')}}/assets/images/icons/site.html">
    <link rel="mask-icon" href="{{asset('assets/web/')}}/assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="{{asset('assets/web/')}}/assets/images/icons/favicon.ico">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/vendor/font-awesome/css/all.min.css">
    <meta name="apple-mobile-web-app-title" content="{{$getCommonSetting->site_title}}">
    <meta name="application-name" content="{{$getCommonSetting->site_title}}">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="{{asset('assets/web/')}}/assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.20/dist/sweetalert2.min.css">

    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/plugins/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/plugins/jquery.countdown.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/style.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/skins/skin-demo-29.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/demos/demo-29.css">
    <link rel="stylesheet" href="{{asset('assets/web/')}}/assets/css/plugins/nouislider/nouislider.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap" rel="stylesheet">
    <style>
        body, h1,h2,h3,h4,h5,h6,p,div, span,a, label, h1.page-title{
            font-family: 'Poppins', sans-serif;
            font-weight: 400;
        }
        .container {
            max-width: 1416px;
            width: 90%;
        }
        .header .header-top{
            color: #fff;
            font-size: 16px;
        }
        .header .header-top .social-icons a {
            color: #fff;
        }
        .header-search.header-search-extended.header-search-visible.d-none.d-lg-block {
            border: 1px solid;
            padding: 0 15px;
        }
        .header .header-middle .container::after{
            background-color:unset;
        }
        .banner-group-1 .banner:hover .banner-content{
            outline:unset;
        }
        .banner-overlay > a:after {
            content: '';
            display: block;
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            background-color: rgba(51, 51, 51, 0.25);
            z-index: 1;
            opacity: 0;
            visibility: hidden;
            transition: all 0.4s ease;
        }
        i.icon-user {
            font-size: 20px;
        }
        a.logo {
            margin: 10px 0;
        }
        .header-8 .menu > li > a {
            padding-top: 1.45rem;
            padding-bottom: 3.45rem;
        }
        .menu > li > a {
            color: #333;
            font-weight: 500;
            font-size: 1.4rem;
            letter-spacing: -.01em;
            padding: 10px;
            text-transform: uppercase;
        }

        .footer {
            color: #fff;
            /*background-color: #ddd;*/
        }
    </style>



    @yield('css')
</head>

<body >
<div class="page-wrapper" id="body-id">

    <header class="header header-8">
        <div class="header-top">
            <div class="container">
                <div class="header-left">

                </div><!-- End .header-left -->

                <div class="header-right">
                    <ul class="top-menu">
                        <li>
                            <a href="#">Links</a>
                            <ul>
                                <li><a href="tel:#"><i class="icon-phone"></i>Call:  {{$getCommonSetting->contact_phone}}</a></li>

                                @if(!Auth::check())
                                <li><a href="{{url('/login')}}"><i class="icon-user"></i>Login</a></li>

                                @else

                                    @if(Auth::check() && Auth::user()->role == 2)

                                        <style>
                                            .profile_icon{
                                                list-style: none;
                                            }
                                        </style>
                                        <nav class="">
                                            <ul class="menu sf-arrows">
                                                <li class="profile_icon">
                                                    <a href="#" class="sf-with-ul"><i class="icon-user"></i></a>

                                                    <ul style="display: none;">
                                                        <li><a href="{{url('my-profile')}}">My Profile</a></li>
                                                        <li><a href="{{url('my-orders')}}">My Order</a></li>
                                                        <li>

                                                            <a href="{{ route('logout') }}"  onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                                                               class="" title="Sign Out">
                                                                Logout
                                                            </a>
                                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                                @csrf
                                                            </form>
                                                        </li>
                                                    </ul>
                                                </li>

                                            </ul>
                                        </nav>
                                    @endif
                                @endif
                            </ul>
                        </li>
                    </ul><!-- End .top-menu -->
                </div><!-- End .header-right -->
            </div><!-- End .container -->
        </div><!-- End .header-top -->

        <div class="sticky-wrapper"><div class="header-middle sticky-header">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>

                        <a href="{{url('/')}}" class="logo">
                            <img src="{{asset(''.$getCommonSetting->logo_header)}}"
                                 alt="{{$getCommonSetting->site_title}}" width="200">
                        </a><!--End .logo-->
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows sf-js-enabled" style="touch-action: pan-y;">
                                <li class="">
                                    <a href="{{url('/')}}">Home</a>
                                </li>

                                <li class="">
                                    <a href="{{url('about-us')}}">About Us</a>
                                </li>

                                <li class="">
                                    <a href="{{url('enquiry-form')}}">Enquiry Form</a>
                                </li>

                                @if(!Auth::check())
                                    <li><a href="{{url('login')}}" data-toggle="modal"><i class="icon-user"></i>Login</a></li>

                                @else
                                    <li><a href="{{url('my-profile')}}">My Profile</a></li>
                                    <li><a href="{{url('my-orders')}}">My Order</a></li>
                                    <li>

                                        <a href="{{ route('logout') }}"  onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                                           class="" title="Sign Out">
                                            Logout
                                        </a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                        </form>
                                    </li>

                                @endif


                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div>
                    <div class="header-right">


                        <?php
                        $get_cart = get_cart();
                        $get_count = json_decode($get_cart);
                        $getAllCart = getCartProducts();
                        ?>
                        <div class="dropdown cart-dropdown">
                            <a href="{{url('/checkout/cart')}}" class="dropdown-toggle">
                                <i class="icon-shopping-cart"></i>
                                <span class="cart-count">{{$get_count->count ?? '0'}}</span>
                            </a>
                        </div><!-- End .cart-dropdown -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div>
        </div><!-- End .header-middle -->
    </header>


    <main class="main">
        @yield('body')
    </main><!--End .main-->

    <footer class="footer footer-2">
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xl-2-5col">
                        <div class="widget widget-about">
                            <img src="{{asset(''.$getCommonSetting->logo_footer)}}" class="footer-logo"
                                 alt="Footer Logo" width="200">
{{--                            <p>{{$getCommonSetting->site_description}}</p>--}}
                            <div class="widget-about-info">
                                <div class="phoneNum">
                                    <span class="widget-about-title">Got Question? Call us 24/7</span>
                                    <a href="tel:{{$getCommonSetting->contact_phone}}">{{$getCommonSetting->contact_phone}}</a>
                                </div><!-- End .phoneNum-->

                                <div class="payment">
                                    <span class="widget-about-title">Payment Method</span>
                                    <figure class="footer-payments">
                                        <img src="{{asset('assets/web/')}}/assets/images/payments.png" alt="Payment methods" width="272" height="20">
                                    </figure><!-- End .footer-payments -->
                                </div><!-- End .payment-->
                            </div><!-- End .widget-about-info -->
                        </div><!-- End .widget about-widget -->
                    </div><!-- End .col-md-12 col-xl-2-5col-->

                    <div class="col-md-12 col-xl-3-5col">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="widget">
                                    <h4 class="widget-title text-white">Information</h4><!-- End .widget-title -->

                                    <ul class="widget-list">
                                        <li><a href="#">About Lifragrances</a></li>
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="{{url('/enquiry-form')}}">Contact us</a></li>
                                    </ul><!-- End .widget-list -->
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-4 -->

                            <div class="col-md-4">
                                <div class="widget">
                                    <h4 class="widget-title text-white">Customer Service</h4><!-- End .widget-title -->

                                    <ul class="widget-list">
                                        <li><a href="{{url('/enquiry-form')}}">Enquiry Form</a></li>
                                        <li><a href="{{url('/terms-and-conditions')}}">Terms and Conditions</a></li>
                                        <li><a href="{{url('/privacy-policy')}}">Privacy Policy</a></li>
                                        <li><a href="{{url('/cancellation-policy')}}">Cancellation policy</a></li>


                                    </ul><!-- End .widget-list -->
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-4 -->

                            <div class="col-md-4">
                                <div class="widget">
                                    <h4 class="widget-title text-white">My Account</h4><!-- End .widget-title -->

                                    <ul class="widget-list">
                                        <li><a href="{{url('login')}}">Sign In</a></li>
                                        <li><a href="{{url('/checkout/cart')}}">View Cart</a></li>
                                        <li><a href="{{url('/shipping-policy')}}">Shipping policy</a></li>
                                        <li><a href="{{url('/return-policy')}}">Returns</a></li>
{{--                                        <li><a href="#">Help</a></li>--}}
                                    </ul><!-- End .widget-list -->
                                </div><!-- End .widget -->
                            </div><!-- End .col-md-4 -->
                        </div><!--End .row-->
                    </div><!--End .col-md-12 col-xl-3-5col-->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!--End .footer-middle-->

        <div class="footer-bottom">
            <div class="container">
                <p class="footer-copyright">{{$getCommonSetting->copyright}}</p><!-- End .footer-copyright -->
                <ul class="footer-menu">
                    <li><a href="{{url('/privacy-policy')}}">Privacy Policy</a></li>
                </ul><!-- End .footer-menu -->

                <div class="social-icons social-icons-color">
                    <span class="social-label">Social Media</span>
                    <a href="{{$getCommonSetting->facebook_url}}" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a href="{{$getCommonSetting->instagram_url}}" class="social-icon social-instagram" title="Pinterest" target="_blank"><i class="fab fa-instagram"></i></a>

                </div><!-- End .soial-icons -->
            </div><!-- End .container -->
        </div><!-- End .footer-bottom -->

    </footer><!-- End .footer -->
</div>

<button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

<!-- Mobile Menu -->
<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-close"></i></span>

        <form action="#" method="get" class="mobile-search">
            <style>
                .mobile-search{
                    position:relative;
                }
                div#searchResults2 {
                    position: absolute;
                    top: 40px;
                    background: #fff;
                    width: 85%;
                    z-index: 9;
                }
            </style>
            <label for="mobile-search" class="sr-only">Search</label>
            <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required>
            <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>

            <div id="searchResults2" style="display: none;"></div>
        </form>

        <nav class="mobile-nav">
            <ul class="mobile-menu">
                <li class="active">
                    <a href="{{url('/')}}">Home</a>
                </li>

                <li class="">
                    <a href="{{url('about-us')}}">About Us</a>
                </li>

                <li class="">
                    <a href="{{url('enquiry-form')}}">Enquiry Form</a>
                </li>

            </ul><!--End .mobile-menu-->
        </nav><!-- End .mobile-nav -->

        <div class="social-icons">
            <a href="{{$getCommonSetting->facebook_url}}" class="social-icon" title="Facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="{{$getCommonSetting->instagram_url}}" class="social-icon" title="Pinterest" target="_blank"><i class="fab fa-instagram"></i></a>

    {{--            <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>--}}
    {{--            <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>--}}
    {{--            <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>--}}
    {{--            <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>--}}
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->


<!-- Plugins JS File -->
<script src="{{asset('assets/web/')}}/assets/js/jquery.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.hoverIntent.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.waypoints.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/superfish.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/owl.carousel.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.plugin.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.magnific-popup.min.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.countdown.min.js"></script>

<script src="{{asset('assets/web/')}}/assets/js/bootstrap-input-spinner.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/jquery.elevateZoom.min.js"></script>
<!-- Main JS File -->
<script src="{{asset('assets/web/')}}/assets/js/demos/demo-29.js"></script>
<script src="{{asset('assets/web/')}}/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.20/dist/sweetalert2.min.js"></script>

@if(Session::has('user_exists'))
    <script>
        $(document).ready(function () {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'User already exists!',
            });
        });
    </script>
@endif


<style>

    #searchResults {
        max-height: 300px;
        overflow-y: auto;
        border: 1px solid #ccc;
        border-radius: 4px;
        background-color: #fff;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        padding: 10px;
        margin-top: 0px;
        position: absolute;
        width: 100%;
        z-index: 5;
        left: 0;
    }


    /* Style for the list of search results */
    #searchResults ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    /* Style for each search result item */
    #searchResults li {
        padding: 5px 0;
    }

    /* Style for the links within search result items */
    #searchResults a {
        text-decoration: none;
        color: #333;
        text-align: left;
        padding-left: 0em;
        display: block;
        font-size: 18px;
    }

    /* Hover effect for search result links */
    #searchResults a:hover {
        color: #007bff;
    }

</style>

{{--Mobile Search Functionality--}}
<script>

    $(document).ready(function() {
        $('#mobile-search').on('input', function() {
            var query = $(this).val();
            if (query.length >= 3) {
                fetchProductsMobiles(query);
            } else {
                $('#searchResults2').empty();
            }
        });
    });

    function fetchProductsMobiles(query) {
        $.ajax({
            url: '{{url("search")}}', // Change this to your Laravel route for searching products
            method: 'GET',
            data: { query: query },
            success: function(response) {
                console.log(response);

                displayResultsmobile(response);
            },
            error: function(error) {
                console.log(error);
            }
        });
    }

    function displayResultsmobile(products) {
        var resultsContainer = $('#searchResults2');
        resultsContainer.empty();

        if (Object.keys(products).length > 0) {
            var resultList = $('<ul>');

            for (var slug in products) {
                if (products.hasOwnProperty(slug)) {
                    var productName = products[slug];

                    var listItem = $('<li>', {
                        class: 'search-result-item'
                    });
                    var link = $('<a>', {
                        href: '/products/' + slug,
                        text: productName,
                        class: 'search-result-link'
                    });

                    listItem.append(link);
                    resultList.append(listItem);
                }
            }

            resultsContainer.empty().append(resultList); // Clear and add the list
            resultsContainer.show(); // Show the results container
        } else {
            resultsContainer.hide(); // Hide the results container
        }
    }

    $(document).ready(function() {
        $('#searchInput').on('input', function() {
            var query = $(this).val();
            if (query.length >= 3) {
                fetchProducts(query);
            } else {
                $('#searchResults').empty();
            }
        });
    });

    function fetchProducts(query) {
        $.ajax({
            url: '{{url("search")}}', // Change this to your Laravel route for searching products
            method: 'GET',
            data: { query: query },
            success: function(response) {
                console.log(response);

                displayResults(response);
            },
            error: function(error) {
                console.log(error);
            }
        });
    }

    function displayResults(products) {
        var resultsContainer = $('#searchResults');
        resultsContainer.empty();

        if (Object.keys(products).length > 0) {
            var resultList = $('<ul>');

            for (var slug in products) {
                if (products.hasOwnProperty(slug)) {
                    var productName = products[slug];

                    var listItem = $('<li>', {
                        class: 'search-result-item'
                    });
                    var link = $('<a>', {
                        href: '/products/' + slug,
                        text: productName,
                        class: 'search-result-link'
                    });

                    listItem.append(link);
                    resultList.append(listItem);
                }
            }

            resultsContainer.empty().append(resultList); // Clear and add the list
            resultsContainer.show(); // Show the results container
        } else {
            resultsContainer.hide(); // Hide the results container
        }
    }



</script>

{{--Delete Cart--}}
<script>

    function deleteConfirmation(id) {
        $.ajax({
            type: 'get',
            url: "{{url('/delete-from-cart')}}/" + id,
            dataType: 'JSON',
            success: function (results) {

                if (results.success === true) {
                    swal("Done!", results.message, "success");
                    // location.reload();
                    $('#body-id').load('#body-id');
                } else {
                    swal("Error!", results.message, "error");
                    // location.reload();
                }
            }
        });
    }

</script>

{{--Verify OTP--}}

<script>
    $(document).ready(function () {
        const otpDiv = $("#otp_div");
        const verifyButton = $("#verify-otp");
        const submitButton = $("#submit-button");
        const phoneNumberInput = $("#mobile");
        const otpInput = $("#otp");

        $("#get-otp").on("click", function () {
            const phoneNumber = phoneNumberInput.val();

            // alert(phoneNumber);return false;

            // Send AJAX request to the Laravel route for sending OTP
            $.ajax({
                method: "POST",
                url: "{{ route('send-otp') }}",
                data: { mobile: phoneNumber },
                dataType: "json",
                success: function (data) {
                    if (data.success) {
                        otpDiv.show();
                        alert("OTP sent successfully!");
                    } else {
                        alert("Failed to send OTP. Please try again.");
                    }
                },
                error: function () {
                    alert("An error occurred while sending OTP.");
                }
            });
        });

        $("#verify-otp").on("click", function () {
            const enteredOTP = otpInput.val();
            $.ajax({
                method: "POST",
                url: "{{ route('verify-otp') }}",
                data: { enteredOTP: enteredOTP },
                dataType: "json",
                success: function (data) {
                    if (data.success) {
                        $('#submit-button').prop('disabled', false);
                        $('#login-form').submit();
                        alert("OTP verified successfully!");
                    } else {
                        alert("Incorrect OTP. Please try again.");
                    }
                },
                error: function () {
                    alert("An error occurred while sending OTP.");
                }
            });

        });
    });
</script>

@yield('js')
@yield('script')
</body>
</html>
