@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css">
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <style>
        i.zmdi.zmdi-plus-circle-o {
            color: #fff !important;
        }
        label.btn.btn-danger.active.toggle-off, label.btn.btn-success.toggle-on {
            margin-top: 3px;
            background: transparent;
            font-size: 11px;
            font-weight: 600;
        }
        span.toggle-handle.btn.btn-default {
            padding: 10px;
        }
        .table td, .table th {
            padding: .75rem;
            vertical-align: top;
            border-top: unset;
        }
        .table tr{
            border-bottom:1px solid #ddd;
        }
        .toggle-off.btn {
            padding-left: 20px;
        }

        .body {
            padding: 20px;
            border: 1px solid;
        }
    </style>
@stop
@section('body')
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>{{$page_heading}}</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i class="zmdi zmdi-home"></i> Admin </a></li>
                    <li class="breadcrumb-item active">{{$page_heading}}</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row clearfix">

            <div class="col-lg-12">
                @if(Session::has('success'))
                    <div class="alert alert-success" role="alert">
                        <strong>Congrats</strong> {{Session::get('success')}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
                        </button>
                    </div>
                @endif
                @if(Session::has('error'))
                    <div class="alert alert-success" role="alert">
                        <strong>Sorry</strong> {{Session::get('error')}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
                        </button>
                    </div>
                @endif
                    <div class="card">
                        <div class="body">
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
                                            <th>Product </th>
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
                                                    <span class="badge badge-info">Color : {{$products->car_color ?? '--'}}</span><br>
                                                @endif

                                                @if($products->car_variation)
                                                    <span class="badge badge-success">Variations :{{$products->car_variation ?? '--'}}</span><br>
                                                @endif

                                                @if($products->car_manufacturer_name)
                                                    <span class="badge badge-danger">Manufacture : {{$products->car_manufacturer_name ?? '--'}}</span><br>
                                                @endif
                                            </td>

                                            <td>

                                                @if($products->bike_color)
                                                <span class="badge badge-info">Color : {{$products->bike_color ?? '--'}}</span><br>
                                                @endif

                                                @if($products->bike_variation)
                                                    <span class="badge badge-success">Variations :{{$products->bike_variation ?? '--'}}</span><br>
                                                @endif

                                                @if($products->bike_manufacturere)
                                                    <span class="badge badge-danger">Manufacture : {{$products->bike_manufacturere ?? '--'}}</span><br>
                                                @endif

                                            </td>

                                            <td>

                                                @if($products->product_title)
                                                <span class="badge badge-info">Product : {{$products->product_title ?? '--'}}</span><br>
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
                        <div class="body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Note</h5>
{{--                                    <p>Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.</p>--}}
                                </div>
                                <div class="col-md-6 text-right">
                                    <ul class="list-unstyled">
                                        <li><strong>GST 18%:-</strong>  Rs. {{$orders[0]->sales_tax }}</li>
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
        </div>
    </div>
@endsection
@section('js')
    <script src="{{asset('/')}}assets/bundles/datatablescripts.bundle.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
    <script src="{{asset('/')}}/assets/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>
    <script src="{{asset('/')}}/assets/js/pages/tables/jquery-datatable.js"></script>
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

    <script>
        $(document).ready(function(){
            $('#filesizecheck').on('change',function(){
                for(var i=0; i< $(this).get(0).files.length; ++i){
                    var file1 = $(this).get(0).files[i].size;
                    if(file1){
                        var file_size = $(this).get(0).files[i].size;
                        if(file_size > 2000000){
                            $('#error-message').html("File upload size is larger than 2MB");
                            $('#error-message').css("display","block");
                            $('#error-message').css("color","red");
                        }else{
                            $('#error-message').css("display","none");
                        }
                    }
                }
            });
        });

        $(function() {
            $('.toggle-class').change(function() {
                var status = $(this).prop('checked') == true ? 'active' : 'inactive';
                var product_id = $(this).data('id');

                // alert(status);return false;
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '{{url("/update-products-Status")}}',
                    data: {'status': status, 'product_id': product_id},
                    success: function(data){
                        console.log(data.success)
                    }
                });
            })
        });

        function deleteConfirmation(id) {
            swal({
                title: "Delete?",
                text: "Please ensure and then confirm!",
                type: "warning",
                showCancelButton: !0,
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                reverseButtons: !0
            }).then(function (e) {

                if (e.value === true) {
                    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

                    $.ajax({
                        type: 'get',
                        url: "{{url('/delete-products')}}/" + id,
                        data: {_token: CSRF_TOKEN},
                        dataType: 'JSON',
                        success: function (results) {

                            if (results.success === true) {
                                swal("Done!", results.message, "success");
                                location.reload();
                            } else {
                                swal("Error!", results.message, "error");
                                location.reload();
                            }
                        }
                    });

                } else {
                    e.dismiss;
                }

            }, function (dismiss) {
                return false;
            })
        }
    </script>

@stop
