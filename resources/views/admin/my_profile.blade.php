@extends('layouts.admin')
@section('css')
    <style>
        .field-icon {
            float: right;
            margin-left: -25px;
            margin-top: -25px;
            position: relative;
            z-index: 2;
        }
    </style>
@stop
@section('body')
    <div class="block-header">
        <div class="alert alert-warning" role="alert">
            <strong>Bootstrap</strong> Better check yourself, <a target="_blank" href="https://getbootstrap.com/docs/4.2/components/forms/">View More</a>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
            </button>
        </div>
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Dashboard</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> Aero</a></li>
                    <li class="breadcrumb-item active">Profile</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
                <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-lg-7 col-md-6 col-sm-12">
        <div class="card">
            <div class="body">
                <form method="post" action="{{url('admin/update-profile')}}">
                    @csrf
                    <label for="password">Password</label>
                    <div class="form-group">
                        <input type="password" name="password" id="password-field" class="form-control" value="{{$password}}" placeholder="Enter your password">
                        <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                    </div>

                    <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Change Password</button>
                </form>
            </div>
        </div>
        </div>
    </div>

@stop

@section('js')
    <script>
        $(".toggle-password").click(function() {

            $(this).toggleClass("fa-eye fa-eye-slash");
            var input = $($(this).attr("toggle"));
            if (input.attr("type") == "password") {
                input.attr("type", "text");
            } else {
                input.attr("type", "password");
            }
        });
    </script>
@stop
