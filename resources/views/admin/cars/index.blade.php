@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
@stop
@section('body')
    <div class="block-header">

        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Dashboard</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> Admin</a></li>
                    <li class="breadcrumb-item active">{{$page_heading}}</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-lg-5 col-md-5 col-sm-12">
            <div class="card">
{{--                <form method="post" action="{{url('admin/uploadCategoryContent')}}" enctype="multipart/form-data" class="category_form">--}}
{{--                    @csrf--}}

{{--                    <div class="form-group">--}}
{{--                        <label for="category_name"><b>CSV File</b></label>--}}
{{--                        <input name="csv_file" type="file" id="csv_file" class="form-control" >--}}
{{--                    </div>--}}


{{--                    <div class="col-md-12 mt-5">--}}
{{--                        <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Submit</button>--}}
{{--                    </div>--}}
{{--                </form>--}}

                <div class="body">
                    <form method="post" action="{{url('admin/save-cars')}}" class="category_form"
                    enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="category_name"><b> Name</b></label>
                            <input name="name" type="text" id="category_name" class="form-control" placeholder="Enter category">
                        </div>

                        <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Submit</button>


                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-7 col-md-7 col-sm-12">
            <div class="card">
                <div class="body">
{{--                    <div class="header">--}}
{{--                        <h2><strong>All</strong> Categories </h2>--}}
{{--                    </div>--}}
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            @if(!empty($all_cars))
                                @foreach($all_cars as $all_car)
                                    <tr>
                                    <td>{{$all_car->name}}</td>
                                    <td>
                                        @if($all_car->status == 1)
                                            <span class="badge badge-info text-white" >Current status : Active</span><br>
                                            <span class="badge badge-danger">
                                                <a href="javascript:void(0)" data-id="{{$all_car->id}}" data-status="0" class="status">
                                                    Change to : Inactive
                                                </a>
                                            </span>
                                        @else
                                            <span class="badge badge-danger">Current status : Inactive</span><br>
                                            <span class="badge badge-info">
                                                <a href="javascript:void(0)" data-id="{{$all_car->id}}" data-status="1" class="text-white status">
                                                    Change to : Active
                                                </a>
                                            </span>
                                        @endif

                                    </td>
                                    <td>
                                        <a href="{{url('admin/edit-cars/'.$all_car->id)}}" class="btn btn-success btn-sm btn-icon">
                                            <i class="zmdi zmdi-edit"></i></a>
                                        <button class="btn btn-sm btn-danger btn-icon" onclick="deleteConfirmation({{$all_car->id}})">
                                            <i class="zmdi zmdi-delete"></i></button>
                                    </td>
                                </tr>
                                @endforeach
                            @else
                            <h3>No Data Found</h3>
                            @endif

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

@stop

@section('js')
    <!-- Jquery DataTable Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/bundles/datatablescripts.bundle.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/js/pages/tables/jquery-datatable.js"></script>

    <script>

        $(function() {
            $('.status').click(function() {
                var status = $(this).data('status');
                var id = $(this).data('id');
                var table = 'categories';
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '{{url("admin/update-cars-Status")}}',
                    data: {'status': status, 'id': id,'table' : table},
                    success: function(data){
                        // location.reload();
                        swal("Status Changed!");
                        location.reload();
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
                        url: "{{url('admin/delete-cars')}}/" + id,
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
