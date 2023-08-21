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
        .table td {
            vertical-align: middle;
            width: 100px;
        }
        .page-content, .page-content p {
            font-size: 18px;
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
                <div class="col-md-12 text-right">
                    <a href="{{ route('logout') }}"  onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                       class="btn btn-danger pt-2 pb-2 pull-right text-right" title="Sign Out">
                        Logout
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
                <h3 class="text-center">Welcome {{Auth::user()->name}}</h3>
                <div class="row">
                    <div class="container">
                        <h5><strong>Order ID: </strong> #{{$orders[0]->order_id}}</h5>
                        <div class="row">

                            <div class="col-md-6 col-sm-6">
                                <address>
                                    <strong>{{$orders[0]->first_name}} {{$orders[0]->last_name}}</strong><br>
                                    {{$orders[0]->address_1}}, {{$orders[0]->address_2}},{{$orders[0]->city}},
                                    {{$orders[0]->state}}, {{$orders[0]->pincode}},  </span>
                                    <br><abbr title="Phone"> {{$orders[0]->phone}}</abbr> <br>
                                    {{$orders[0]->email}}

                                </address>
                            </div>
                            <div class="col-md-6 col-sm-6 text-right">
                                <p class="mb-0"><strong>Order Date: </strong> {{$orders[0]->updated_at}}</p>
                                <p class="mb-0"><strong>Order Status: </strong>  @if($orders[0]->status == 0)
                                        <span class="badge badge-warning">New </span>
                                @endif


                                @if($orders[0]->status == 1)
                                    <p class="badge badge-success">Paid </p>
                                @endif




                                @if($orders[0]->status == 2)
                                    <span class="badge badge-danger">Cancelled </span>
                                    @endif
                                    </p>



                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-hover c_table theme-color">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th width="60px">Item</th>
                                            <th>Car </th>
                                            <th>Bike </th>
                                            <th>Quantity</th>
                                            <th class="hidden-sm-down">Unit Cost</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        @forelse($orders as $key =>  $products)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td><img src="{{asset($products->order_product[0]->image)}}" style="width:100px;" alt="Product img"></td>
                                                <td>

                                                    @if($products->car_color)
                                                        <span class="badge badge-info">Color : {{$products->car_color ?? ''}}</span><br>
                                                    @endif

                                                    @if($products->car_variation)
                                                        <span class="badge badge-success">Variations :{{$products->car_variation ?? ''}}</span><br>
                                                    @endif

                                                    @if($products->car_manufacturer_name)
                                                        <span class="badge badge-danger">Manufacture : {{$products->car_manufacturer_name ?? ''}}</span><br>
                                                    @endif
                                                </td>

                                                <td>

                                                    @if($products->bike_color)
                                                        <span class="badge badge-info">Color : {{$products->bike_color ?? ''}}</span><br>
                                                    @endif

                                                    @if($products->bike_variation)
                                                        <span class="badge badge-success">Variations :{{$products->bike_variation ?? ''}}</span><br>
                                                    @endif

                                                    @if($products->bike_manufacturere)
                                                        <span class="badge badge-danger">Manufacture : {{$products->bike_manufacturere ?? ''}}</span><br>
                                                    @endif

                                                </td>
                                                <td>
                                                    {{$products->quantity ?? ''}}
                                                </td>
                                                <td class="hidden-sm-down">{{$products->price ?? ''}}</td>
                                                <td>{{$products->price * $products->quantity }}</td>
                                            </tr>
                                        @empty
                                        @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <h5>Note</h5>
                                {{--                                    <p>Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.</p>--}}
                            </div>
                            <div class="col-md-6 text-right">
                                <ul class="list-unstyled">
                                    <li><strong>Sub-Total:-</strong>Rs. {{number_format($orders[0]->final_amount,2)}}</li>
                                    {{--                                        <li class="text-danger"><strong>Discout:-</strong> 12.9%</li>--}}
                                    {{--                                        <li><strong>VAT:-</strong> 12.9%</li>--}}
                                </ul>
                                <h3 class="mb-0 text-success">Rs. {{number_format($orders[0]->final_amount,2)}}</h3>
                                <a href="javascript:void(0);" class="btn btn-primary">Submit</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div><!-- End .page-content -->
    </main>
@stop
@section('js')

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
