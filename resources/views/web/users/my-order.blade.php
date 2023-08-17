@extends('layouts.web')
<?php
session_start();
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
                <h3 class="text-center">Welcome {{Auth::user()->name}}</h3>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <table id="example" class="table table-bordered" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>No.</th>
                                <th>Order Id</th>
                                <th>User</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            @if(!empty($orders))
                                @foreach($orders as $key =>  $order)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>Order Id -  {{$order->order_id}}</td>
                                        <td>
                                            Name - {{$order->first_name}}, {{$order->last_name}} <br>
                                            Address - {{$order->address_1}}, {{$order->address_2}},
                                            {{$order->city}}, {{$order->state}}, {{$order->pincode}},<br>
                                            Phone - {{$order->phone}}<br>
                                            Email - {{$order->email}}
                                        </td>
                                        <td>
                                            @if($order->status == 0)
                                                <span class="badge badge-warning">New </span>
                                            @endif


                                            @if($order->status == 1)
                                                <p class="badge badge-success">Paid </p>
                                            @endif


                                            @if($order->status == 2)
                                                <span class="badge badge-danger">Cancelled </span>
                                            @endif
                                        </td>
                                        <td class="" style="">
                                            <a href="{{url('view-orders/'.$order->id)}}"
                                               class="btn btn-primary waves-effect waves-float btn-sm waves-green">
                                                View</a> <br>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                            </tbody>
                        </table>

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
