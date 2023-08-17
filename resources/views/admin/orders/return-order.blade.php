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
                        <h5><strong>Order ID: </strong> #{{$orders->order_id}}</h5>
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <address>
                                    Delivery :
                                    <strong>{{$orders->first_name}} {{$orders->last_name}}</strong><br>
                                    {{$orders->address_1}}, {{$orders->address_2}},{{$orders->city}}, {{$orders->state}}, {{$orders->pincode}},  </span>
                                    <br><abbr title="Phone">Phone : {{$orders->phone}}</abbr> <br>
                                    Email :  {{$orders->email}}

                                </address>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <address>
                                    Buyer :
                                    <strong>Name : {{$orders->buyer_details->name}}</strong><br>
                                    <br><abbr title="Phone"> Phone :  {{$orders->mobile_number ?? ''}}</abbr> <br>
                                    Email : {{$orders->buyer_details->email}}

                                </address>
                            </div>
                            <div class="col-md-4 col-sm-4 text-right">
                                <p class="mb-0"><strong>Order Date: </strong> {{$orders->updated_at}}</p>
                                <p class="mb-0"><strong>Order Status: </strong>  @if($orders->status == 0)
                                        <span class="badge badge-warning">New </span>
                                @endif


                                @if($orders->status == 1)
                                    <p class="badge badge-success">Paid </p>
                                @endif


                                @if($orders->status == 2)
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
                                        <th></th>
                                        <th class="hidden-sm-down">Size</th>
                                        <th>Quantity</th>
                                        <th class="hidden-sm-down">Unit Cost</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @forelse($orders->get_order_products as $key =>  $products)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td><img src="{{asset($products->sizeAttributes[0]->image)}}" width="40" alt="Product img"></td>
                                            <td>{{$products->title}}</td>
                                            <td class="hidden-sm-down">{{$products->pivot->size}}</td>
                                            <td>{{$products->pivot->quantity}}</td>
                                            <td class="hidden-sm-down">{{$products->pivot->price}}</td>
                                            <td>{{$products->pivot->price * $products->pivot->quantity }}</td>
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
                                <h5 class="">Reason : {{$orders->get_refund_data->reason}}</h5>
                                <h5 class="">Description : {{$orders->get_refund_data->description}}</h5>

                                <td>
                                    Current Status :


                                    @if($orders->get_refund_data->status == 0)
                                        <span class="badge badge-primary">New</span>
                                    @endif

                                    @if($orders->get_refund_data->status == 1)
                                        <span class="badge badge-info">Accepted</span>
                                    @endif

                                    @if($orders->get_refund_data->status == 2)
                                        <span class="badge badge-danger">Rejected</span>
                                    @endif


{{--                                    @if($orders->get_refund_data->status == 0)--}}
                                    <select class="custom-select ms select2" id="refundStatus{{$orders->get_refund_data->id}}" data-vid="{{$orders->get_refund_data->id}}">
                                        <option>select</option>
                                        <option value="1">Accept</option>
                                        <option value="2">Reject</option>

                                    </select>
{{--                                    @endif--}}


                                </td>

                            </div>
                            <div class="col-md-6 text-right">
                                <ul class="list-unstyled">
                                    <li class="text-danger"><strong>Sales Tax: </strong>$ {{number_format($orders->sales_tax,2)}}</li>
                                    <li class="text-info"><strong>Shipping Tax: </strong> {{$orders->shipping_price}}</li>
                                </ul>
                                <h3 class="mb-0 text-success">$ {{number_format($orders->final_amount,2)}}</h3>
{{--                                <a href="javascript:void(0);" class="btn btn-info"><i class="zmdi zmdi-print"></i></a>--}}
{{--                                <a href="javascript:void(0);" class="btn btn-primary">Submit</a>--}}
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
        $(function() {
            $('.custom-select').change(function() {
                var status = $(this).val();
                var id = $(this).data('vid'); // Use data-vid attribute

                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '{{url("admin/refund-status")}}',
                    data: {'status': status, 'id': id},
                    success: function(data) {
                        console.log(data);
                        location.reload();
                        // Perform actions based on the response
                    }
                });
            });
        });
    </script>

@stop
