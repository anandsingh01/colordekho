@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/dropify/css/dropify.min.css">
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/multi-select/css/multi-select.css">
    <!-- Bootstrap Spinner Css -->
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">

    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/select2/select2.css" />
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
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i class="zmdi zmdi-home"></i> Admin </a></li>
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
        <form class="form" action="{{url('admin/products/update-attributes/'.$attribute->id)}}" method="post" enctype="multipart/form-data">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Add</strong> attribute</h2>
                        </div>
                        <div class="body">
                            <div class="row">

                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password">attribute Title</label>
                                    <input type="text" class="form-control" value="{{$attribute->title}}" name="title" />
                                </div>
                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="Status">Status</label>
                                    <select class="form-control show-tick ms select2 removeSpace" name="status" data-placeholder="Select">
                                        <option value="active"  {{$attribute->status == 'active' ? 'selected' : ''}}>Active</option>
                                        <option value="inactive"  {{$attribute->status == 'inactive' ? 'selected' : ''}}>Inactive</option></select>
                                </div>

                            </div>


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
    <script src="{{asset('/')}}/assets/plugins/dropify/js/dropify.min.js"></script>
    <script src="{{asset('/')}}/assets/js/pages/forms/dropify.js"></script>
    <script src="{{asset('/')}}/assets/plugins/summernote/dist/summernote.js"></script>

    <script src="{{asset('/')}}/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script> <!-- Bootstrap Colorpicker Js -->
    <script src="{{asset('/')}}/assets/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script> <!-- Input Mask Plugin Js -->
    <script src="{{asset('/')}}/assets/plugins/multi-select/js/jquery.multi-select.js"></script> <!-- Multi Select Plugin Js -->
    <script src="{{asset('/')}}/assets/plugins/jquery-spinner/js/jquery.spinner.js"></script> <!-- Jquery Spinner Plugin Js -->
    <script src="{{asset('/')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script> <!-- Bootstrap Tags Input Plugin Js -->
    <script src="{{asset('/')}}/assets/plugins/nouislider/nouislider.js"></script> <!-- noUISlider Plugin Js -->
    <script src="{{asset('/')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
    <script src="{{asset('/')}}/assets/js/pages/forms/advanced-form-elements.js"></script>

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

    <script>
        $('.section_id').change(function(){
            var section_id = $(this).val();
            // alert(section_id);return false;
            $.ajax({
                type:'get',
                url: '{{url("/getBycategoriesBySection")}}',
                data: {section_id: section_id},
                success:function(response){
                    console.log(response);
                    $('#parent_id').empty();
                    $("#parent_id").select2("val", "Please Select An Option");

                    $('#parent_id').append('<option value="0"> Please Select An Option </option>');
                    $.each(response, function(key, value) {
                        console.log(value.title);
                        $('#parent_id').append('<option value="'+ value.id +'">'+ value.title +'</option>');
                    });                },error:function(){
                    alert('Error');
                }
            });
        });

        {{--$('.category_id').change(function(){--}}
        {{--    var category_id = $(this).val();--}}
        {{--    // alert(category_id);return false;--}}
        {{--    $.ajax({--}}
        {{--        type:'get',--}}
        {{--        url: '{{url("/getBysubcategoriesByCategories")}}',--}}
        {{--        data: {category_id: category_id},--}}
        {{--        success:function(response){--}}
        {{--            console.log(response);--}}
        {{--            $('#subcategory_id').empty();--}}
        {{--            $("#subcategory_id").select2("val", "Please Select An Option");--}}

        {{--            $('#subcategory_id').append('<option value="0"> Please Select An Option </option>');--}}
        {{--            $.each(response, function(key, value) {--}}
        {{--                console.log(value.title);--}}
        {{--                $('#subcategory_id').append('<option value="'+ value.id +'">'+ value.title +'</option>');--}}
        {{--            });                },error:function(){--}}
        {{--            alert('Error');--}}
        {{--        }--}}
        {{--    });--}}
        {{--});--}}

    </script>

@stop
