@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/dropify/css/dropify.min.css">
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/multi-select/css/multi-select.css">
    <!-- Bootstrap Spinner Css -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/select2/select2.css" />
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">

    <style>
        .select2-container .select2-choice{
            border:unset;
        }
        .bootstrap-tagsinput{
            border:1px solid #ddd !important;
            width:100%;
        }
        label{
            font-weight: 800;
        }
    </style>
@stop
@section('body')
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>{{$page_heading}}</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i class="zmdi zmdi-home"></i> SAB </a></li>
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
        <form class="form" action="{{url('admin/save-team')}}" method="post" enctype="multipart/form-data">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Add</strong> {{$page_heading}}</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password"> Sequence </label>
                                    <input type="number" class="form-control" name="sequence" />
                                </div>

                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password"> Name </label>
                                    <input type="text" class="form-control" name="name" />
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <label>Phone</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" name="phone" placeholder="">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <label>Email</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" value="" name="email" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <label>Facebook</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" value="" name="fb" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <label>Instagram</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" value="" name="insta" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <label>Twitter</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" value="" name="twitter" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <label>Linkedin</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="text" class="form-control" value="" name="linkedin" placeholder="">
                                    </div>
                                </div>


                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password"> Designation </label>
                                    <select name="designation" class="form-control">
                                        <?php
                                            $role = \App\Models\Role::where('status','1')->get();
                                            foreach ($role as $roles){
                                        ?>
                                        <option value="{{$roles->name}}">{{$roles->name}}</option>
                                        <?php } ?>
                                    </select>
{{--                                    <input type="text" class="form-control" name="designation" />--}}
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <label>Photo</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="file" class="form-control" name="photo" placeholder="">
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <label>About</label>
                                    <div class="input-group masked-input mb-3">

                                        <textarea  id='about' name="about" required class='form-control p-textarea summernote' placeholder='Write your hobby..'></textarea><br />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="body">
                            @if (Auth::check())
                                <input type="hidden" name="userid" value="{{Auth::user()->id}}"/>
                            @endif
                            @csrf
                            <button class="btn btn-raised btn-primary waves-effect" type="submit">SUBMIT</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
@endsection
@section('js')
    <script src="{{asset('assets/admin')}}/assets/plugins/dropify/js/dropify.min.js"></script>
    <script src="{{asset('assets/admin')}}/assets/js/pages/forms/dropify.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/summernote/dist/summernote.js"></script>
    <script src="{{asset('assets/admin')}}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script> <!-- Bootstrap Colorpicker Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script> <!-- Input Mask Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/multi-select/js/jquery.multi-select.js"></script> <!-- Multi Select Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/jquery-spinner/js/jquery.spinner.js"></script> <!-- Jquery Spinner Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script> <!-- Bootstrap Tags Input Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/nouislider/nouislider.js"></script> <!-- noUISlider Plugin Js -->
    <script src="{{asset('assets/admin')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
    <script src="{{asset('assets/admin')}}/assets/js/pages/forms/advanced-form-elements.js"></script>

    <script>
        $(document).ready(function(){
            $('#dropify-event').on('change',function(){
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
    </script>

@stop
