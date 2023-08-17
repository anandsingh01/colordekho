@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('/')}}/assets/plugins/select2/select2.css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        i.zmdi.zmdi-plus-circle-o {
            color: #fff !important;
        }
        label.btn.btn-danger.active.toggle-off, label.btn.btn-success.toggle-on {
            margin-top: 3px;
            background: transparent;
            font-size: 11px;
            font-weight: 600;
        }
        span.toggle-handle.btn.btn-default {
            padding: 10px;
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
        <div class="row clearfix">

            <div class="col-lg-12">
                @if(Session::has('success'))
                    <div class="alert alert-success" role="alert">
                        <strong>Congrats</strong> {{Session::get('success')}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
                        </button>
                    </div>
                @endif
                @if(Session::has('error'))
                    <div class="alert alert-success" role="alert">
                        <strong>Sorry</strong> {{Session::get('error')}}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>
                        </button>
                    </div>
                @endif
                <div class="card">

                    <div class="body">
                        <div class="header">
                            <h2><strong>Update</strong> Size, Qty Attributes </h2>

                        </div>
                        <form action="{{url("admin/products/update/productSizeAttribute/".$attr_id)}}"
                              method="post"
                              enctype="multipart/form-data"
                        >
                            <div class="row">
                                @csrf
                                <input type="hidden" name="product_id" value="{{$product_details->id}}"/>

                                <input type="hidden" name="is_default" value="yes"/>

{{--                                <div class="col-lg-6 col-md-4 mtb-10">--}}
{{--                                    <label class="">SKU</label>--}}
{{--                                    <input type="text" value="{{$attr_details->sku}}" name="sku" placeholder="eg. PRODUCT001-SM, PRODUCT002-L, " class="form-control"/>--}}
{{--                                </div>--}}
                                <div class="col-lg-6 col-md-12 mtb-10">
                                    <label class="control-label" for="Status">Size</label>
                                    <input type="text" value="{{$attr_details->size}}" name="size" placeholder="eg.10oz , 20oz" class="form-control"/>
                                </div>
                                <div class="col-lg-6 col-md-4 mtb-10">
                                    <label class="">Qty (in pcs)</label>
                                    <input type="text" value="{{$attr_details->qty}}" name="qty" placeholder="eg. 10, 20 , 30" class="form-control"/>
                                </div>
{{--                                <div class="col-lg-6 col-md-4 mtb-10">--}}
{{--                                    <label class="">Max Selling Price</label>--}}
{{--                                    <input type="text" value="{{$attr_details->msp}}" name="msp" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>--}}
{{--                                </div>--}}
                                <div class="col-lg-6 col-md-4 mtb-10">
                                    <label class="">Price</label>
                                    <input type="text" value="{{$attr_details->price}}" name="price" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>
                                </div>


                                <div class="col-lg-6 col-md-4 mtb-10">
                                    <label class="">Product Image</label>
                                    <input type="file" name="image" placeholder="" class="form-control"/>
                                    @if(!empty($attr_details->image))
                                        <img src="{{asset($attr_details->image)}}" width="100">
                                        @endif
                                </div>

                                <div class="col-lg-6 col-md-4 mtb-10">
                                    <label class="">Flash</label>
                                    <select name="flash_sale" class="form-control ms">
                                        <option value="no" {{$attr_details->flash_sale == 'no' ? 'selected' : ''}}>No</option>
                                        <option value="yes" {{$attr_details->flash_sale == 'yes' ? 'selected' : ''}}>Yes</option>
                                    </select>
                                </div>


                                <div class="col-lg-6 col-md-4 mtb-10">
                                    <label class="">Flash Price</label>
                                    <input type="text" value="{{$attr_details->flash_price}}" name="flash_price" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>
                                </div>



                                <div class="col-lg-4 col-md-4 mtb-10">
                                    <label class="">Length</label>
                                    <input type="text" value="{{$attr_details->length}}" name="length" placeholder="10,20" class="form-control"/>
                                </div>

                                <div class="col-lg-4 col-md-4 mtb-10">
                                    <label class="">Width</label>
                                    <input type="text" value="{{$attr_details->width}}" name="width"  placeholder="10,20"  class="form-control"/>
                                </div>

                                <div class="col-lg-4 col-md-4 mtb-10">
                                    <label class="">Height</label>
                                    <input type="text" value="{{$attr_details->height}}" name="height"  placeholder="10,20" class="form-control"/>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-default btn-round waves-effect">SAVE CHANGES</button>
                                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">CLOSE</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('js')
{{--    <script src="{{asset('/')}}assets/bundles/datatablescripts.bundle.js"></script>--}}
{{--    <script src="{{asset('/')}}/assets/plugins/dropify/js/dropify.min.js"></script>--}}
{{--    <script src="{{asset('/')}}/assets/js/pages/forms/dropify.js"></script>--}}
{{--    <script src="{{asset('/')}}/assets/plugins/summernote/dist/summernote.js"></script>--}}
{{--    <script src="{{asset('/')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->--}}
{{--    <script src="{{asset('/')}}/assets/js/pages/forms/advanced-form-elements.js"></script>--}}
{{--    <script src="{{asset('/')}}/assets/dist/imageuploadify.min.js"></script>--}}

    <script>
        $('.attribute_id').change(function(){
            var attribute_id = $(this).val();
            $.ajax({
                type:'get',
                url: '{{url("/products/getAttrValueFromOptions")}}',
                data: {attribute_id: attribute_id},
                success:function(response){
                    console.log(response);

                    $("#attribute_value").empty();

                    $('#attribute_value').append(response);
                    // // Without parent div of select2 , don't change
                    // $('.parent_cat_div #select2-chosen-2').htoz('Please Select An Option');
                    //
                    // $.each(response, function(key, value) {
                    //     console.log(value.title);
                    //     $('#parent_id').append('<option value="'+ value.id +'">'+ value.title +'</option>');
                    // });
                }
                ,error:function(){
                    alert('Error');
                }
            });
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
                        url: "{{url('/delete-categories')}}/" + id,
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
