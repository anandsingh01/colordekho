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
        <div class="col-sm-12">
            <div class="card">
                <div class="header">
                    <h2><strong>Support Us</strong></h2>
                </div>
                <div class="body">
                    <form action="{{url('admin/updatesupport')}}" method="post" enctype="multipart/form-data">

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane in active" id="home">
                                @csrf
                                <input type="hidden" name="id" value="{{$support->id}}" />

                                <h3>Section One</h3>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Banner Image</label>
                                            <input type="file" id="site_title" class="form-control"
                                                   name="banner_image" placeholder="Title" value="" >
                                        </div>
                                        <div class="col-md-3">
                                            @if(!empty($support->banner_image))
                                                <img src="{{asset($support->banner_image)}}" style="width: 150px; height:150px;"/>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <h3>Section One</h3>
                                <div class="form-group">
                                    <div class="row">
                                    <div class="col-md-9">
                                            <label class="control-label">Left Image</label>
                                            <input type="file" id="site_title" class="form-control" name="left_image" placeholder="Title" value="" >
                                        </div>
                                        <div class="col-md-3">
                                            @if(!empty($support->left_image))
                                                <img src="{{asset($support->left_image)}}" style="width: 150px; height:150px;"/>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Right Section Heading</label>
                                            <input type="text" id="site_title" class="form-control"
                                                   name="right_section_heading" placeholder="Title" value="{{$support->right_section_heading}}" >
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="control-label">Right Section Content</label>
                                    <textarea id="site_title" class="form-control" name="right_section_content" placeholder="Title">{{$support->right_section_content}}</textarea>
                                </div>
{{--                                <div class="form-group">--}}
{{--                                    <div class="row">--}}
{{--                                        <div class="col-md-9">--}}
{{--                                            <label class="control-label">Right Section Link</label>--}}
{{--                                            <input type="text" id="site_title" class="form-control"--}}
{{--                                                   name="right_section_link" placeholder="Title"--}}
{{--                                                   value="{{$support->right_section_link}}" >--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}

                                <h3>Section Two</h3>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Left Image</label>
                                            <input type="file" id="site_title" class="form-control" name="right_image"
                                                   placeholder="Title" value="" >
                                        </div>
                                        <div class="col-md-3">
                                            @if(!empty($support->right_image))
                                                <img src="{{asset($support->right_image)}}" style="width: 150px; height:150px;"/>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Left Section Heading</label>
                                            <input type="text" id="site_title" class="form-control"
                                                   name="left_section_heading" placeholder="Title" value="{{$support->left_section_heading}}" >
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="control-label"> left section content</label>
                                    <textarea id="site_title" class="form-control" name="left_section_content"
                                              placeholder="Title">{{$support->left_section_content}}</textarea>
                                </div>
{{--                                <div class="form-group">--}}
{{--                                    <div class="row">--}}
{{--                                        <div class="col-md-9">--}}
{{--                                            <label class="control-label">Right Section Link</label>--}}
{{--                                            <input type="text" id="site_title" class="form-control"--}}
{{--                                                   name="left_section_link" placeholder="Title"--}}
{{--                                                   value="{{$support->left_section_link}}" >--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}


                                <h3>Volunteer Section</h3>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Volunteer Image</label>
                                            <input type="file" id="site_title" class="form-control" name="volunteer_image"
                                                   placeholder="Title" value="" >
                                        </div>
                                        <div class="col-md-3">
                                            @if(!empty($support->volunteer_image))
                                                <img src="{{asset($support->volunteer_image)}}" style="width: 150px; height:150px;"/>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-9">
                                            <label class="control-label">Volunteer Section Heading</label>
                                            <input type="text" id="site_title" class="form-control"
                                                   name="volunteer_section_heading" placeholder="Title"
                                                   value="{{$support->volunteer_section_heading}}" >
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="control-label"> volunteer section content</label>
                                    <textarea id="site_title" class="form-control" name="volunteer_section_content"
                                              placeholder="Title">{{$support->volunteer_section_content}}</textarea>
                                </div>
{{--                                <div class="form-group">--}}
{{--                                    <div class="row">--}}
{{--                                        <div class="col-md-9">--}}
{{--                                            <label class="control-label">volunteer Section Link</label>--}}
{{--                                            <input type="text" id="site_title" class="form-control"--}}
{{--                                                   name="left_section_link" placeholder="Title"--}}
{{--                                                   value="{{$support->volunteer_section_link}}" >--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}

                            </div>

                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success text-white" name="submit" />
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
