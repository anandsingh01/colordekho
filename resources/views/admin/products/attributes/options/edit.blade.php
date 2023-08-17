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
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">

                <div class="row clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <form class="form" action="{{url('admin/products/attributes/save-attributes-values/'.$attribute_option_id)}}" method="post" enctype="multipart/form-data">
                        <div class="card">
                            <div class="header">
                                <h2><strong>Add</strong> Value</h2>
                            </div>
                            <div class="body">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 mtb-10">
                                        <label class="control-label" for="password">Value Title</label>
                                        <input type="text" class="form-control" name="attribute_value" />
                                    </div>

                                </div>


                                @if (Auth::check())
                                    <input type="hidden" name="userid" value="{{Auth::user()->id}}"/>
                                @endif

                                @csrf
                                <button class="btn btn-raised btn-primary waves-effect" type="submit">SUBMIT</button>
                            </div>
                        </div>
                        </form>
                    </div>

                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card">
                            <div class="header">
                                <h2><strong>All </strong> Values</h2>
                            </div>
                            <div class="body">
                                <div class="table-responsive">
                                    <table class="table dataTable js-exportable">
                                        <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Value</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>Value</th>
                                            <th>Action</th>
                                        </tr>
                                        </tfoot>
                                        <tbody>
                                        <?php ///print_r($attributes);?>
                                        @if(!empty($attribute_values))
                                            @foreach($attribute_values as $key =>  $attribute_value)
                                                <tr>
                                                    <td>{{$key+1}}</td>
                                                    <td>
                                                        {{$attribute_value->attribute_value}} <br>
                                                    </td>
                                                    <td class="" style="">
                                                        <a href="{{url('admin/products/attributes/edit-attribute-value/'.$attribute_value->id)}}" class="btn btn-primary waves-effect waves-float btn-sm waves-green"><i class="zmdi zmdi-edit"></i></a>
                                                        <a href="javascript:void(0);" onclick="deleteConfirmation({{$attribute_value->id}})" class="btn btn-primary waves-effect waves-float btn-sm waves-red"><i class="zmdi zmdi-delete"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                        </tbody>
                                    </table>
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


                <script>
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
                                    url: "{{url('admin/products/delete-attributes-values')}}/" + id,
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
