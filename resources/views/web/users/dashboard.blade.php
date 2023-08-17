@extends('layouts.web')
<?php
session_start();
if(!Auth::check()){
    return redirect(url('login'));
}
?>
@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"></script>
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
        div#tab-content-7 {
            width: 75%;
        }
        .table th, .table thead th, .table td {
            border-top: none;
            border-bottom: 0.1rem solid #ebebeb;
            text-align: center;
            padding: 15px;
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

        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Profile</a></li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">

                <h3 class="text-center">Welcome, {{ucwords(Auth::user()->name)}}</h3>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        @if(session('success'))
                            <div class="alert alert-success">{{ session('success') }}</div>
                        @endif

                        <form action="{{ url('update-profile') }}" method="post">

                            @csrf

                            <div class="form-group">
                                <label for="register-name">Name  *</label>
                                <input type="text" class="form-control" id="register-name"
                                       name="name" value="{{Auth::user()->name}}" required>
                            </div>

                            <div class="form-group">
                                <label for="register-email">Your email address *</label>
                                <input type="email" class="form-control" id="register-email"
                                       name="email" value="{{Auth::user()->email}}" required>
                            </div>

                            <div class="form-group">
                                <label for="register-email">Your mobile *</label>
                                <input type="text" class="form-control" id="register-mobile"
                                       name="mobile_number" value="{{Auth::user()->mobile_number}}" required>
                            </div>


                            <div class="form-group">
                                <label for="register-password">Password *</label>
                                <input type="password" class="form-control" id="register-password"
                                       name="password" required>
                            </div>

                            <div class="form-group">
                                <label for="register-confirm-password">Confirm Password *</label>
                                <input type="password" class="form-control" id="register-confirm-password" name="register-confirm-password" required>
                                <span id="password-match-message"></span>
                            </div>


                            <div class="form-footer">
                                <button type="submit" class="btn btn-outline-primary-2">
                                    <span>Update</span>
                                    <i class="icon-long-arrow-right"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>
        </div><!-- End .page-content -->
    </main>
@stop
@section('js')
    <script>
        $(document).ready(function() {
            $('#register-confirm-password').on('input', function() {
                var password = $('#register-password').val();
                var confirmPassword = $(this).val();

                if (password === confirmPassword) {
                    $('#password-match-message').text('Passwords match').css('color', 'green');
                } else {
                    $('#password-match-message').text('Passwords do not match').css('color', 'red');
                }
            });

            $('form').on('submit', function(event) {
                var password = $('#register-password').val();
                var confirmPassword = $('#register-confirm-password').val();

                if (password !== confirmPassword) {
                    event.preventDefault();
                    $('#password-match-message').text('Passwords do not match').css('color', 'red');
                }
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
    <script>
        $(document).ready(function() {
            //Only needed for the filename of export files.
            //Normally set in the title tag of your page.
            document.title='Simple DataTable';
            // DataTable initialisation
            $('#example').DataTable(
                {
                    "dom": '<"dt-buttons"Bf><"clear">lirtp',
                    "paging": true,
                    "autoWidth": true,
                    "buttons": [
                        'colvis',
                        'copyHtml5',
                        'csvHtml5',
                        'excelHtml5',
                        'pdfHtml5',
                        'print'
                    ]
                }
            );
        });
    </script>

@stop
