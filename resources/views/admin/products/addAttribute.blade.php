@extends('layouts.admin')
@section('css')

    <link rel="stylesheet" href="{{asset('/')}}assets/plugins/select2/select2.css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
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
                            <h2><strong>All</strong> Size, Price, Qty </h2>
                            <ul class="header-dropdown">
                                <li>
                                    <button type="button" class="btn bg-light-green waves-effect"
                                            data-toggle="modal" data-target="#largeModal">Add Size Attribute</button>
                                </li>
                            </ul>
                        </div>
                        <div class="table-responsive">
                            <table class="table dataTable js-exportable">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Image</th>
                                    <th>Size</th>
                                    <th>Price</th>
                                    <th>Qty</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>No.</th>
                                    <th>Image</th>
                                    <th>Size</th>
                                    <th>Price</th>
                                    <th>Qty</th>
                                    <th>Action</th>
                                </tr>
                                </tfoot>
                                <tbody>

                                @if(!empty($productsize))
                                    @foreach($productsize as $key =>  $productsizes)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td><img src="{{asset($productsizes->image)}}" width="100"/></td>
                                            <td>{{$productsizes->size}}</td>
                                            <td>{{$productsizes->price}}</td>
                                            <td>{{$productsizes->qty}}</td>
                                            <td class="" style="">
                                                <a href="{{url('admin/product/attribute/default-edit-value/'.$productsizes->id)}}" class="btn btn-primary waves-effect waves-float btn-sm waves-green"><i class="zmdi zmdi-edit"></i></a>
                                                <a href="javascript:void(0);" onclick="deleteConfirmation({{$productsizes->id}})" class="btn btn-primary waves-effect waves-float btn-sm waves-red"><i class="zmdi zmdi-delete"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

{{--            <div class="col-lg-12">--}}
{{--                @if(Session::has('success'))--}}
{{--                    <div class="alert alert-success" role="alert">--}}
{{--                        <strong>Congrats</strong> {{Session::get('success')}}--}}
{{--                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">--}}
{{--                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>--}}
{{--                        </button>--}}
{{--                    </div>--}}
{{--                @endif--}}
{{--                @if(Session::has('error'))--}}
{{--                    <div class="alert alert-success" role="alert">--}}
{{--                        <strong>Sorry</strong> {{Session::get('error')}}--}}
{{--                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">--}}
{{--                            <span aria-hidden="true"><i class="zmdi zmdi-close"></i></span>--}}
{{--                        </button>--}}
{{--                    </div>--}}
{{--                @endif--}}
{{--                <div class="card">--}}

{{--                    <div class="body">--}}
{{--                        <div class="header">--}}
{{--                            <h2><strong>All</strong> Additional Attributes </h2>--}}
{{--                            <ul class="header-dropdown">--}}
{{--                                <li>--}}
{{--                                    <button type="button" class="btn bg-light-green waves-effect"--}}
{{--                                            data-toggle="modal" data-target="#addtionalModal">Add Additional Attribute</button>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                        </div>--}}
{{--                        <div class="table-responsive">--}}
{{--                            <table class="table dataTable js-exportable">--}}
{{--                                <thead>--}}
{{--                                <tr>--}}
{{--                                    <th>No.</th>--}}
{{--                                    <th>Attribute</th>--}}
{{--                                    <th>Value</th>--}}
{{--                                    <th>Action</th>--}}
{{--                                </tr>--}}
{{--                                </thead>--}}
{{--                                <tfoot>--}}
{{--                                <tr>--}}
{{--                                    <th>No.</th>--}}
{{--                                    <th>Attribute</th>--}}
{{--                                    <th>Value</th>--}}
{{--                                    <th>Action</th>--}}
{{--                                </tr>--}}
{{--                                </tfoot>--}}
{{--                                <tbody>--}}

{{--                                @if(!empty($addtionalProductAttrList))--}}
{{--                                    @foreach($addtionalProductAttrList as $key =>  $addtionalProductAttrLists)--}}
{{--                                        <tr>--}}
{{--                                            <td>{{$key+1}}</td>--}}
{{--                                            <td>{{$addtionalProductAttrLists->attr_title}}</td>--}}
{{--                                            <td>{{$addtionalProductAttrLists->attr_val}}</td>--}}
{{--                                            <td class="" style="">--}}
{{--                                                <a href="{{url('product/attribute/additional-edit-value/'.$addtionalProductAttrLists->id)}}" class="btn btn-primary waves-effect waves-float btn-sm waves-green"><i class="zmdi zmdi-edit"></i></a>--}}
{{--                                                <a href="javascript:void(0);" onclick="deleteAddtionalAttrConfirmation({{$addtionalProductAttrLists->id}})" class="btn btn-primary waves-effect waves-float btn-sm waves-red"><i class="zmdi zmdi-delete"></i></a>--}}
{{--                                            </td>--}}
{{--                                        </tr>--}}
{{--                                    @endforeach--}}
{{--                                @endif--}}
{{--                                </tbody>--}}
{{--                            </table>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}

        </div>
    </div>

    <div class="modal fade"  id="largeModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="title" id="defaultModalLabel">Add Size, Qty Attribute</h4>
                </div>
                <div class="modal-body">
                    <form action="{{url("admin/products/save/productSizeAttribute/".$product_details->id)}}"
                          method="post" enctype="multipart/form-data">
                        <div class="row">
                            @csrf
                            <input type="hidden" name="product_id" value="{{$product_details->id}}"/>
                            <input type="hidden" name="is_default" value="yes"/>

{{--                            <div class="col-lg-6 col-md-4 mtb-10">--}}
{{--                                <label class="">SKU</label>--}}
{{--                                <input type="text" name="sku" placeholder="eg. PRODUCT001-SM, PRODUCT002-L, " class="form-control"/>--}}
{{--                            </div>--}}
                            <div class="col-lg-6 col-md-12 mtb-10">
                                <label class="control-label" for="Status">Size</label>
                                <input type="text" name="size" placeholder="eg. 5oz, 10oz " class="form-control"/>
                            </div>
                            <div class="col-lg-6 col-md-4 mtb-10">
                                <label class="">Qty (in pcs)</label>
                                <input type="text" name="qty" placeholder="eg.10,20" class="form-control"/>
                            </div>

                            <div class="col-lg-6 col-md-4 mtb-10">
                                <label class="">Price</label>
                                <input type="text" name="price" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>
                            </div>



{{--                            <div class="col-lg-6 col-md-4 mtb-10">--}}
{{--                                <label class="">Max Selling Price</label>--}}
{{--                                <input type="text" name="msp" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>--}}
{{--                            </div>--}}


                            <div class="col-lg-6 col-md-4 mtb-10">
                                <label class="">Product Image</label>
                                <input type="file" name="image" placeholder="" class="form-control"/>
                            </div>

                            <div class="col-lg-6 col-md-4 mtb-10">
                                <label class="">Flash</label>
                                <select name="flash_sale" class="form-control ms">
                                    <option value="no">No</option>
                                    <option value="yes">Yes</option>
                                </select>
                            </div>


                            <div class="col-lg-6 col-md-4 mtb-10">
                                <label class="">Flash Price</label>
                                <input type="text" name="flash_price" placeholder="eg. 1000, 1200 , 1500" class="form-control"/>
                            </div>


                            <div class="col-lg-4 col-md-4 mtb-10">
                                <label class="">Length</label>
                                <input type="text" name="length" placeholder="10,20" class="form-control"/>
                            </div>

                            <div class="col-lg-4 col-md-4 mtb-10">
                                <label class="">Width</label>
                                <input type="text" name="width"  placeholder="10,20"  class="form-control"/>
                            </div>

                            <div class="col-lg-4 col-md-4 mtb-10">
                                <label class="">Height</label>
                                <input type="text" name="height"  placeholder="10,20" class="form-control"/>
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

{{--    <div class="modal fade"  id="addtionalModal" tabindex="-1" role="dialog">--}}
{{--        <div class="modal-dialog modal-lg" role="document">--}}
{{--            <div class="modal-content">--}}
{{--                <div class="modal-header">--}}
{{--                    <h4 class="title" id="defaultModalLabel">Add Additional Attribute</h4>--}}
{{--                </div>--}}
{{--                <div class="modal-body">--}}
{{--                    <form action="{{url("admin/products/save/productAttribute/".$product_details->id)}}" method="post">--}}
{{--                        <div class="row">--}}
{{--                            @csrf--}}
{{--                            <input type="hidden" name="product_id" value="{{$product_details->id}}"/>--}}

{{--                            <input type="hidden" name="is_default" value="no"/>--}}

{{--                            <div class="col-lg-12 col-md-12 mtb-10">--}}
{{--                                <label class="control-label" for="Status">Attributes</label>--}}
{{--                                <select name="attribute_id" class="form-control show-tick ms select2 removeSpace addtional_attribute_id" id="attribute_id" data-placeholder="Select">--}}
{{--                                    <option>Select</option>--}}
{{--                                    @if(!empty($getAttributes))--}}
{{--                                        @foreach($getAttributes as $section)--}}
{{--                                            <option value="{{$section->id}}">{{$section->title}}</option>--}}
{{--                                        @endforeach--}}
{{--                                    @endif--}}
{{--                                </select>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-12 col-md-12 mtb-10 parent_cat_div">--}}
{{--                                <label class="">Attribute Value</label>--}}
{{--                                <select name="attribute_value" class="form-control show-tick ms select2 removeSpace" id="additional_attribute_value" data-placeholder="Select">--}}
{{--                                    <option>Please Select An Option </option>--}}
{{--                                </select>--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="modal-footer">--}}
{{--                            <button type="submit" class="btn btn-default btn-round waves-effect">SAVE CHANGES</button>--}}
{{--                            <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">CLOSE</button>--}}
{{--                        </div>--}}
{{--                    </form>--}}
{{--                </div>--}}

{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
@endsection
@section('js')
{{--    <script src="{{asset('/')}}assets/bundles/datatablescripts.bundle.js"></script>--}}
{{--    <script src="{{asset('/')}}assets/plugins/dropify/js/dropify.min.js"></script>--}}
{{--    <script src="{{asset('/')}}assets/js/pages/forms/dropify.js"></script>--}}
{{--    <script src="{{asset('/')}}assets/plugins/summernote/dist/summernote.js"></script>--}}
{{--    <script src="{{asset('/')}}assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->--}}
{{--    <script src="{{asset('/')}}assets/js/pages/forms/advanced-form-elements.js"></script>--}}
{{--    <script src="{{asset('/')}}assets/dist/imageuploadify.min.js"></script>--}}

    <script>
        $(document).ready(function(){
            $('#filesizecheck').on('change',function(){
                for(var i=0; i< $(this).get(0).files.length; ++i){
                    var file1 = $(this).get(0).files[i].size;
                    if(file1){
                        var file_size = $(this).get(0).files[i].size;
                        if(file_size > 2000000){
                            $('#error-message').htoz("File upload size is larger than 2MB");
                            $('#error-message').css("display","block");
                            $('#error-message').css("color","red");
                        }else{
                            $('#error-message').css("display","none");
                        }
                    }
                }
            });
        });

        $(function() {
            $('.toggle-class').change(function() {
                var status = $(this).prop('checked') == true ? 1 : 0;
                var category_id = $(this).data('id');

                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '{{url("admin/update-categories-Status")}}',
                    data: {'status': status, 'category_id': category_id},
                    success: function(data){
                        console.log(data.success)
                    }
                });
            })
        });

        $('.attribute_id').change(function(){
            var attribute_id = $(this).val();
            $.ajax({
                type:'get',
                url: '{{url("admin/products/getAttrValueFromOptions")}}',
                data: {attribute_id: attribute_id},
                success:function(response){
                    console.log(response);

                    $("#attribute_value").empty();

                    $('#attribute_value').append(response);
                }
                ,error:function(){
                    alert('Error');
                }
            });
        });

        $('.addtional_attribute_id').change(function(){
            var attribute_id = $(this).val();
            $.ajax({
                type:'get',
                url: '{{url("admin/products/getAttrValueFromOptions")}}',
                data: {attribute_id: attribute_id},
                success:function(response){
                    console.log(response);

                    $("#additional_attribute_value").empty();

                    $('#additional_attribute_value').append(response);
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
                        url: "{{url('admin/product/delete-product-size')}}/" + id,
                        data: {_token: CSRF_TOKEN},
                        dataType: 'JSON',
                        success: function (results) {

                            console.log(results);
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

        function deleteAddtionalAttrConfirmation(id) {
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
                        url: "{{url('admin/product/deleteProductAddtionalAttr')}}/" + id,
                        data: {_token: CSRF_TOKEN},
                        dataType: 'JSON',
                        success: function (results) {

                            console.log(results);
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
