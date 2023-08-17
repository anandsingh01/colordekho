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
                <div class="body">
                    <form method="post" action="{{url('admin/update-offer')}}" class="category_form">
                        @csrf
                        <input type="hidden" name="id" value="{{$offer->id}}">

                        <div class="form-group">
                            <label for="category_name"><b>Offer title</b></label>
                            <input name="title" value="{{$offer->title}}" type="text" id="title" class="form-control" placeholder="Enter Title">
                        </div>
                        <div class="form-group">
                            <label for="category_name"><b>Code</b></label>
                            <input name="code" value="{{$offer->code}}" type="text" id="code" class="form-control" placeholder="Enter code">
                        </div>
                        <div class="form-group">
                            <label for="slug"><b>Description</b></label>
                            <textarea name="description" id="slug" class="form-control">{{$offer->description}}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b> Discount </b></label>

                            <input name="percentage_discount" value="{{$offer->percentage_discount}}" type="text" id="percentage_discount"
                                   class="form-control" placeholder="Percent Discount">
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>Percentage Type </b></label>
                            <select name="discount_type" class="form-control ms">
                                <option value="percent" {{$offer->discount_type == 'percent' ? 'selected':''}}>Percent</option>
                                <option value="flat" {{$offer->discount_type == 'flat' ? 'selected':''}}>Flat</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>Start Date </b></label>

                            <input name="start_date" value="{{$offer->start_date}}" type="date" id="start_date"
                                   class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="meta_description"><b>End Date </b></label>

                            <input name="end_date" value="{{$offer->end_date}}" type="date" id="end_date"
                                   class="form-control" placeholder="">
                        </div>

                        <div class="form-group">
                            <label for="meta_description"><b>Image </b></label>

                            <input name="image" type="file" id="percentage_discount"
                                   class="form-control" placeholder="Percent Discount">
                            @if($offer->image)
                                <img src="{{asset(''.$offer->image)}}" width="100"/>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="show_on_homepage"><b>Status</b></label>

                            <div class="radio radio-inline">
                                <input name="show_at_homepage" {{$offer->status == 1 ? 'checked' : ''}} class="" type="radio" id="radio1" value="1" checked >
                                <label for="radio1">Yes</label>
                            </div>

                            <div class="radio radio-inline">
                                <input name="show_at_homepage"  {{$offer->status == 0 ? 'checked' : ''}} class="checkbox-inline" type="radio"  id="radio2" value="0">
                                <label for="radio2">No</label>
                            </div>
                        </div>


                        <div class="col-md-12 mt-5">
                            <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Update</button>
                        </div>
                    </form>
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
                    url: '{{url("admin/change-status")}}',
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
                        url: "{{url('admin/delete/category')}}/" + id,
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
