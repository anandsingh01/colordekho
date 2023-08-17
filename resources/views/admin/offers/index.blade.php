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
                    <form method="post" action="{{url('admin/offers/create')}}" class="category_form"
                    enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="category_name"><b>Offer title</b></label>
                            <input name="title" type="text" id="title" class="form-control" placeholder="Enter Title">
                        </div>
                        <div class="form-group">
                            <label for="category_name"><b>Code</b></label>
                            <input name="code" type="text" id="code" class="form-control" placeholder="Enter code">
                        </div>
                        <div class="form-group">
                            <label for="slug"><b>Description</b></label>
                            <textarea name="description" id="slug" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>Percentage Discount </b></label>

                            <input name="percentage_discount" type="text" id="percentage_discount"
                                   class="form-control" placeholder="Percent Discount">
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>Percentage Type </b></label>
                            <select name="discount_type" class="form-control ms">
                                <option value="percent">Percent</option>
                                <option value="flat">Flat</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>Start Date </b></label>

                            <input name="start_date" type="date" id="start_date"
                                   class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>End Date </b></label>

                            <input name="end_date" type="date" id="end_date"
                                   class="form-control" placeholder="">
                        </div>

                        <div class="form-group">
                            <label for="meta_description"><b>Image </b></label>

                            <input name="image" type="file" id="percentage_discount"
                                   class="form-control" placeholder="Percent Discount">
                        </div>

                        <div class="form-group">
                            <label for="show_on_homepage"><b>Status</b></label>

                            <div class="radio radio-inline">
                                <input name="show_at_homepage" class="" type="radio" id="radio1" value="1" checked >
                                <label for="radio1">Yes</label>
                            </div>

                            <div class="radio radio-inline">
                                <input name="show_at_homepage" class="checkbox-inline" type="radio"  id="radio2" value="0">
                                <label for="radio2">No</label>
                            </div>
                        </div>

                        <div class="col-md-12 mt-5">
                            <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Submit</button>
                        </div>
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
                                <th>Title</th>
                                <th>Code</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Title</th>
                                <th>Code</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            @if(!empty($offers))
                                @foreach($offers as $offer)
                                    <tr>
                                    <td>{{$offer->title}}</td>
                                    <td>{{$offer->code}}</td>
                                    <td>
                                        @if($offer->status == 1)
                                            <span class="badge badge-info text-white" >Current status : Active</span><br>
                                            <span class="badge badge-danger">
                                                <a href="javascript:void(0)" data-id="{{$offer->id}}" data-status="0" class="status">
                                                    Change to : Inactive
                                                </a>
                                            </span>
                                        @else
                                            <span class="badge badge-danger">Current status : Inactive</span><br>
                                            <span class="badge badge-info">
                                                <a href="javascript:void(0)" data-id="{{$offer->id}}" data-status="1" class="text-white status">
                                                    Change to : Active
                                                </a>
                                            </span>
                                        @endif

                                    </td>
                                    <td>
                                        <a href="{{url('admin/edit-offer/'.$offer->id)}}" class="btn btn-success btn-sm btn-icon">
                                            <i class="zmdi zmdi-edit"></i></a>
                                        <button class="btn btn-sm btn-danger btn-icon" onclick="deleteConfirmation({{$offer->id}})">
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

    <script src="{{asset('assets/admin')}}assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->

{{--    <script src="{{asset('assets/admin')}}/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->--}}
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
                    url: '{{url("admin/change-offer-status")}}',
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
                        url: "{{url('admin/delete/offer')}}/" + id,
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
