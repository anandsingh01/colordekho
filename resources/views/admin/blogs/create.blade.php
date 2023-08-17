@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="{{asset('assets/admin/assets/plugins/dropify/css/dropify.min.css')}}"/>
    <!-- Colorpicker Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" />
    <!-- Multi Select Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/multi-select/css/multi-select.css">
    <!-- Bootstrap Spinner Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/jquery-spinner/css/bootstrap-spinner.css">
    <!-- Bootstrap Tagsinput Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">
    <!-- Bootstrap Select Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
    <!-- noUISlider Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/nouislider/nouislider.min.css" />
    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/select2/select2.css" />

    <!-- Custom Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/css/style.min.css">

    <style>
        .checkbox .bootstrap-tagsinput {
            border: 1px solid #ccc !important;
        }
    </style>
@stop
@section('body')
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Dashboard</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> ESF </a></li>
                    <li class="breadcrumb-item active">{{$page_heading}}</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
        </div>
    </div>
    <div class="container">
        <form method="post" action="{{url('admin/create-post')}}" enctype="multipart/form-data" class="category_form">
            <div class="row clearfix">
                <div class="col-lg-7 col-md-7 col-sm-12">
                    <div class="card">
                        <div class="body">
                            @csrf
                            <input type="hidden" name="post_format" value="{{$_GET['type']}}" />
                            <div class="form-group">
                                <label class="control-label">Title</label>
                                <input type="text" id="wr_input_post_title" class="form-control" name="title" placeholder="Title" value="" required="">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Slug <small>(If you leave it blank, it will be generated automatically.)</small>
                                </label>
                                <input type="text" class="form-control" name="title_slug" placeholder="Slug" value="">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Summary &amp; Description (Meta Tag)</label>
                                <textarea class="form-control text-area" name="summary" placeholder="Summary &amp; Description (Meta Tag)"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Keywords (Meta Tag)</label>
                                <input type="text" class="form-control" name="keywords" placeholder="Keywords (Meta Tag)" value="">
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="show_on_menu">
                                            <label><b>Visibility</b></label>
                                        </label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="visibility" class="" type="radio" id="radio1" value="1" checked >
                                            <label for="radio1">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="visibility" class="checkbox-inline" type="radio"  id="radio2" value="0">
                                            <label for="radio2">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label> <b>Tags</b></label>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="checkbox">
                                            <input type="text" name="tags" class="form-control" data-role="tagsinput" value="Amsterdam,Sydney,Cairo">

                                        </div>
                                        <small>(Type tag and hit enter)</small>

                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Summernote</label>
                                <textarea type="text" class="form-control summernote" name="blogcontent" placeholder="Keywords (Meta Tag)" value=""></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <div class="card">
                        <div class="body">
                            <div class="row">
                                @if($_GET['type'] == 'article')
                                    <div class="col-lg-12 col-md-12">
                                        <label> Image</label>
                                        <div class="input-group masked-input mb-3">
                                            <input type="file" class="form-control" name="image" placeholder="">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label">Image Description </label>
                                            <input type="text" class="form-control" name="image_description"
                                                   placeholder="Image description" value="">
                                        </div>
                                    </div>
                                @endif

                            </div>
                        </div>


                    </div>

                    <div class="card">
                        <div class="body">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-raised btn-success btn-round waves-effect">Submit</button>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </form>
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
    <script src="{{asset('assets/admin')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script> <!-- Bootstrap Tags Input Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
    <script src="{{asset('assets/admin')}}/assets/js/pages/tables/jquery-datatable.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/summernote/dist/summernote.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/dropify/js/dropify.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/js/pages/forms/dropify.js"></script>
    <script src="{{asset('assets/admin')}}/assets/js/pages/forms/advanced-form-elements.js"></script>


    <script>

    </script>
@stop
