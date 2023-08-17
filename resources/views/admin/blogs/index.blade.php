@extends('layouts.admin')
@section('css')

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
    <div class="container-fluid">
        <div class="row clearfix">
        <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="card w_data_1">
                <div class="body">
                    <a href="{{url('admin/add-posts?type=article')}}">
                        <div class="w_icon green"><i class="zmdi zmdi-bug"></i></div>
                        <h4 class="mt-3 mb-0">Articles</h4>
                        <span class="text-muted">An article with images and embed videos</span>
{{--                        <div class="w_description text-success">--}}
{{--                            <i class="zmdi zmdi-trending-up"></i>--}}
{{--                            <span>An article with images and embed videos</span>--}}
{{--                        </div>--}}
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="card w_data_1">
                <div class="body">
                    <a href="{{url('admin/add-posts?type=video')}}">
                        <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>
                        <h4 class="mt-3 mb-0">Video</h4>
                        <span class="text-muted">A collection of images </span>
                    </a>
                </div>
            </div>
        </div>
{{--        <div class="col-lg-4 col-md-4 col-sm-6">--}}
{{--            <div class="card w_data_1">--}}
{{--                <div class="body">--}}
{{--                    <a href="{{url('admin/add-posts?type=article')}}">--}}
{{--                        <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>--}}
{{--                        <h4 class="mt-3 mb-0">Articles</h4>--}}
{{--                        <span class="text-muted">An article with images and embed videos</span>--}}
{{--                        <div class="w_description text-success">--}}
{{--                            <i class="zmdi zmdi-trending-up"></i>--}}
{{--                            <span>An article with images and embed videos</span>--}}
{{--                        </div>--}}
{{--                    </a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-lg-4 col-md-4 col-sm-6">--}}
{{--            <div class="card w_data_1">--}}
{{--                <div class="body">--}}
{{--                    <a href="{{url('admin/add-posts?type=article')}}">--}}
{{--                        <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>--}}
{{--                        <h4 class="mt-3 mb-0">Articles</h4>--}}
{{--                        <span class="text-muted">An article with images and embed videos</span>--}}
{{--                        <div class="w_description text-success">--}}
{{--                            <i class="zmdi zmdi-trending-up"></i>--}}
{{--                            <span>An article with images and embed videos</span>--}}
{{--                        </div>--}}
{{--                    </a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-lg-4 col-md-4 col-sm-6">--}}
{{--            <div class="card w_data_1">--}}
{{--                <div class="body">--}}
{{--                    <a href="{{url('admin/add-posts?type=article')}}">--}}
{{--                        <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>--}}
{{--                        <h4 class="mt-3 mb-0">Articles</h4>--}}
{{--                        <span class="text-muted">An article with images and embed videos</span>--}}
{{--                        <div class="w_description text-success">--}}
{{--                            <i class="zmdi zmdi-trending-up"></i>--}}
{{--                            <span>An article with images and embed videos</span>--}}
{{--                        </div>--}}
{{--                    </a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div class="col-lg-4 col-md-4 col-sm-6">--}}
{{--            <div class="card w_data_1">--}}
{{--                <div class="body">--}}
{{--                    <a href="{{url('admin/add-posts?type=article')}}">--}}
{{--                        <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>--}}
{{--                        <h4 class="mt-3 mb-0">Articles</h4>--}}
{{--                        <span class="text-muted">An article with images and embed videos</span>--}}
{{--                        <div class="w_description text-success">--}}
{{--                            <i class="zmdi zmdi-trending-up"></i>--}}
{{--                            <span>An article with images and embed videos</span>--}}
{{--                        </div>--}}
{{--                    </a>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
    </div>
@stop
@section('js')

@stop
