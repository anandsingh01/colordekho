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
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> Admin </a></li>
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
                            <h2><strong>Common</strong> Setting</h2>
                        </div>
                        <div class="body">
                            <form action="{{url('admin/update-common')}}" method="post" enctype="multipart/form-data">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs p-0 mb-3">
                                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home">General Setting</a></li>
                                    <li class="nav-item"><a class="nav-link " data-toggle="tab" href="#profile">Profile</a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#messages">Social Media </a></li>
                                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Blocks">Blocks</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane in active" id="home">
                                        @csrf
                                        <input type="hidden" name="id" value="{{$common->id}}" />
                                        <div class="form-group">
                                            <div class="row">
                                            <div class="col-md-9">
                                                    <label class="control-label">Logo Header</label>
                                            <input type="file" id="site_title" class="form-control" name="logo_header" placeholder="Title" value="" >
                                                </div>
                                                <div class="col-md-3">
                                                    @if(!empty($common->logo_header))
                                                        <img src="{{asset($common->logo_header)}}"/>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <label class="control-label">Logo Footer</label>
                                                    <input type="file" id="site_title" class="form-control" name="logo_footer" placeholder="Title" value="" >
                                                </div>
                                                <div class="col-md-3">
                                                    @if(!empty($common->logo_footer))
                                                        <img src="{{$common->logo_footer}}"/>
                                                    @endif
                                                </div>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Title</label>
                                            <input type="text" id="site_title" class="form-control" name="site_title" placeholder="Title" value="{{$common->site_title}}" >
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Footer About Section</label>
                                            <textarea class="form-control text-area" name="about_footer" placeholder="Footer About Section" style="min-height: 140px;"><?php echo $common->about_footer; ?> </textarea>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label">Copyright</label>
                                            <input type="text" class="form-control" name="copyright" placeholder="Copyright" value="{{$common->copyright}} ">
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane " id="profile">
                                        <div class="form-group">
                                            <label class="control-label">Address</label>
                                            <input type="text" class="form-control" name="contact_address" placeholder="Address" value="{{$common->contact_address}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Email</label>
                                            <input type="text" class="form-control" name="contact_email" placeholder="Email" value="{{$common->contact_email}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Phone</label>
                                            <input type="text" class="form-control" name="contact_phone" placeholder="Phone" value="{{$common->contact_phone}}">
                                        </div>
                                    </div>

                                    <div role="tabpanel" class="tab-pane" id="messages">
                                        <div class="form-group">
                                            <label class="control-label"></label>
                                            <input type="text" class="form-control" name="facebook_url" placeholder="" value="{{$common->facebook_url}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Twitter URL</label>
                                            <input type="text" class="form-control" name="twitter_url" placeholder="Twitter URL" value="{{$common->twitter_url}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Instagram URL</label>
                                            <input type="text" class="form-control" name="instagram_url" placeholder="Instagram URL" value="{{$common->instagram_url}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">LinkedIn URL</label>
                                            <input type="text" class="form-control" name="linkedin_url" placeholder="LinkedIn URL" value="{{$common->linkedin_url}}">
                                        </div>
                                    </div>

                                    <div role="tabpanel" class="tab-pane" id="Blocks">
                                        <div class="form-group">
                                            <label class="control-label">Block Heading 1</label>
                                            <input type="text" class="form-control" name="block_heading_1"
                                                   placeholder="" value="{{$common->block_heading_1}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Block Text 1</label>
                                            <input type="text" class="form-control" name="block_text_1"
                                                   placeholder="" value="{{$common->block_text_1}}">
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label">Block Heading 2</label>
                                            <input type="text" class="form-control" name="block_heading_2"
                                                   placeholder="" value="{{$common->block_heading_2}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Block Text 2</label>
                                            <input type="text" class="form-control" name="block_text_2"
                                                   placeholder="" value="{{$common->block_text_2}}">
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label">Block Heading 3</label>
                                            <input type="text" class="form-control" name="block_heading_3"
                                                   placeholder="" value="{{$common->block_heading_3}}">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Block Text 3</label>
                                            <input type="text" class="form-control" name="block_text_3"
                                                   placeholder="" value="{{$common->block_text_3}}">
                                        </div>
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
