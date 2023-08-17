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
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> ESF</a></li>
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
                    <form method="post" action="{{url('admin/update-subcategories')}}" class="category_form">
                        @csrf
                        <input type="hidden" name="id" value="{{$subcategory->id}}">

                        <div class="form-group">
                            <label for="category_name"><b>Category</b></label>
                            <select name="parent_id" class="form-control show-tick ms select2"
                                    data-placeholder="Select">
                                @if(!empty($category))
                                    @foreach($category as $categories)
                                        <option value="{{$categories->id}}" {{$categories->id == $subcategory->parent_id ? 'selected' : ''}}>{{$categories->category_name}}</option>
                                    @endforeach
                                @else
                                    <option>Nothing found</option>
                                @endif
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="category_name"><b>Subcategory Name</b></label>
                            <input name="name" value="{{$subcategory->category_name}}" type="text" id="category_name" class="form-control" placeholder="Enter category">
                        </div>

                        <div class="form-group">
                            <label for="slug"><b>Slug</b></label>
                            <input name="name_slug" value="{{$subcategory->slug}}" type="text" id="slug" class="form-control" placeholder="">
                        </div>

{{--                        <div class="form-group">--}}
{{--                            <label for="meta_description"><b>Description (Meta Tag) </b></label>--}}

{{--                            <input name="description" value="{{$subcategory->description}}"  type="text" id="meta_description"--}}
{{--                                   class="form-control" placeholder="Enter Meta Description">--}}
{{--                        </div>--}}

{{--                        <div class="form-group">--}}
{{--                            <label for="meta_keywords"><b>Keywords (Meta Keyword)</b></label>--}}

{{--                            <input name="keywords" value="{{$subcategory->keywords}}" type="text" id="meta_keywords" class="form-control"--}}
{{--                                   placeholder="Enter Meta Keywords">--}}
{{--                        </div>--}}


{{--                        <div class="form-group">--}}
{{--                            <label for="show_on_menu">--}}
{{--                                <label><b>Show on Menu</b></label>--}}
{{--                            </label>--}}
{{--                            <div class="radio radio-inline">--}}
{{--                                <input name="show_on_menu" class="" type="radio" id="radio1" value="1"--}}
{{--                                    {{$subcategory->show_on_menu == 1 ? 'checked' : ''}}>--}}
{{--                                <label for="radio1">Yes</label>--}}
{{--                            </div>--}}

{{--                            <div class="radio radio-inline">--}}
{{--                                <input name="show_on_menu" class="" type="radio"  id="radio2" value="0"--}}
{{--                                    {{$subcategory->show_on_menu == 0 ? 'checked' : ''}}>--}}
{{--                                <label for="radio2">No</label>--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="form-group">--}}
{{--                            <label for="show_at_homepage"><b>Show on Homepage</b></label>--}}

{{--                            <div class="radio radio-inline">--}}
{{--                                <input name="show_at_homepage" class="" type="radio" id="radio3" value="1"--}}
{{--                                    {{$subcategory->show_at_homepage == 1 ? 'checked' : ''}}>--}}
{{--                                <label for="radio3">Yes</label>--}}
{{--                            </div>--}}

{{--                            <div class="radio radio-inline">--}}
{{--                                <input name="show_at_homepage" class="" type="radio"  id="radio4" value="0"--}}
{{--                                    {{$subcategory->show_at_homepage == 0 ? 'checked' : ''}}>--}}
{{--                                <label for="radio4">No</label>--}}
{{--                            </div>--}}
{{--                        </div>--}}

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

    <script src="{{asset('assets/admin')}}/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
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
                    url: '{{url("admin/change-status-subcategory")}}',
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
