@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/dropify/css/dropify.min.css">
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/summernote/dist/summernote.css"/>
{{--    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/multi-select/css/multi-select.css">--}}
    <!-- Bootstrap Spinner Css -->
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css">

    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/select2/select2.css" />
{{--    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />--}}
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/css/dropzone.css"/>
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

        .preview-images-zone {
            width: 100%;
            border: 1px solid #ddd;
            min-height: 100px;
            /* display: flex; */
            padding: 5px 5px 0px 5px;
            position: relative;
            overflow:auto;
        }
        .preview-images-zone > .preview-image:first-child {
            height: 100px;
            width: 100px;
            position: relative;
            margin-right: 5px;
        }
        .preview-images-zone > .preview-image {
            height: 90px;
            width: 90px;
            position: relative;
            margin-right: 5px;
            float: left;
            margin-bottom: 5px;
        }
        .preview-images-zone > .preview-image > .image-zone {
            width: 100%;
            height: 100%;
        }
        .preview-images-zone > .preview-image > .image-zone > img {
            width: 100%;
            height: 100%;
        }
        .preview-images-zone > .preview-image > .tools-edit-image {
            position: absolute;
            z-index: 100;
            color: #fff;
            bottom: 0;
            width: 100%;
            text-align: center;
            margin-bottom: 10px;
            display: none;
        }
        .preview-images-zone > .preview-image > .image-cancel {
            font-size: 18px;
            position: absolute;
            top: 0;
            right: 0;
            font-weight: bold;
            margin-right: 10px;
            cursor: pointer;
            display: none;
            z-index: 100;
        }
        .preview-image:hover > .image-zone {
            cursor: move;
            opacity: .5;
        }
        .preview-image:hover > .tools-edit-image,
        .preview-image:hover > .image-cancel {
            display: block;
        }
        .ui-sortable-helper {
            width: 90px !important;
            height: 90px !important;
        }

        input#product-gallery {
            height: 200px;
        }
        img.img-thumbnail.m-1 {
            width: 100px;
            height: 100px;
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
        <form method="post" action="{{url('admin/save-products')}}" enctype="multipart/form-data">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Add</strong> Product</h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password">Product Title</label>
                                    <input type="text" class="form-control" name="title" placeholder="Enter Product Title"/>
                                </div>

                                <div class="col-md-12">
                                    <label class="">Product Description</label>
                                    <textarea class="summernote" name="product_desc"></textarea>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group mtb-10">
                                        <label class="control-label " for="password">Offer Price:</label>
                                        <input type="text" name="product_selling_price" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group mtb-10">
                                        <label class="control-label " for="password">Final Price:</label>
                                        <input type="text" name="product_actual_price" class="form-control">
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="body">
                            <div class="form-group mtb-10">
                                <label class="control-label " for="password">Product Photo 1</label>
                                <input type="file"  class="form-control" name="photo1">
                                <span id="error-message" class="validation-error-label">File Should Not be above 2MB</span><br>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="card">
                        <div class="body">
                            <div class="form-group mtb-10">
                                <label class="control-label " for="password">Product Photo 2</label>
                                <input type="file" class="form-control" name="photo2">
                                <span id="error-message" class="validation-error-label">File Should Not be above 2MB</span><br>
                            </div>

                        </div>

                    </div>
                </div>

            </div>


            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Product</strong> SEO</h2>
                        </div>
                        <div class="body">

                            <div class="panel-group" id="accordion_1" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-primary">
                                    <div class="panel-heading" role="tab" id="headingThree_1">
                                        <h4 class="panel-title">
                                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_1" href="#collapseThree_1" aria-expanded="false"
                                               aria-controls="collapseThree_1"> SEO <span class="text-right">+</span>
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree_1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree_1">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 mtb-10">
                                                    <label class="control-label " for="password">Meta Title </label>
                                                    <input type="text" name="meta_title" class="form-control">
                                                </div>
                                                <div class="col-lg-12 col-md-12 mtb-10">
                                                    <label class="control-label " for="password">Meta Description </label>
                                                    <input type="text" name="meta_desc" class="form-control">
                                                </div>

                                                <div class="col-lg-12 col-md-12 mtb-10">
                                                    <label class="control-label " for="password">Meta Keywords </label>
                                                    <input type="text" class="form-control tags_border" data-role="tagsinput" name="meta_keywords" value="Amsterdam,Sydney,Cairo">
                                                </div>


                                            </div>
                                        </div>
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
                            <input type="submit" class="btn btn-raised btn-primary waves-effect" value="Save & Continue" />
                        </div>
                    </div>
                </div>
            </div>

        </form>

    </div>
@endsection
@section('js')
    <script src="{{asset('/assets/admin/')}}/assets/plugins/dropify/js/dropify.min.js"></script>
    <script src="{{asset('/assets/admin/')}}/assets/js/pages/forms/dropify.js"></script>
    <script src="{{asset('/assets/admin/')}}/assets/plugins/summernote/dist/summernote.js"></script>

    <script src="{{asset('/assets/admin/')}}/assets/plugins/multi-select/js/jquery.multi-select.js"></script> <!-- Multi Select Plugin Js -->
    <script src="{{asset('/assets/admin/')}}/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script> <!-- Bootstrap Tags Input Plugin Js -->
    <script src="{{asset('/assets/admin/')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
    <script src="{{asset('/assets/admin/')}}/assets/js/pages/forms/advanced-form-elements.js"></script>


    <script>
        $('.section_id').change(function(){
            var section_id = $(this).val();
            $('.subparent_cat_div .select2-chosen').html('Please Select An Option');

            $.ajax({
                type:'get',
                url: '{{url("admin/getcategoriesBySectionOnProduct")}}',
                data: {section_id: section_id},
                beforeSend: function( xhr ) {
                    $(".parent_cat_div .spinner").addClass("fab-spinner fab-spin");
                    $('#parent_id').append('<option value="">Please Select</option>');

                },
                success:function(response){
                    $("#parent_id").empty();
                    $("#subparent_id").empty();

                    $('.parent_cat_div .select2-chosen').html('Please Select An Option');


                    $('#parent_id').append('<option value="">Please Select An Option</option>');

                    $.each(response, function(key, value) {
                        // console.log(value.title);

                        $('#parent_id').append('<option value="'+ value.id +'">'+ value.title +'</option>');

                        $('#parent_id').val(2).trigger('change.select2');
                    });

                }
                ,error:function(){
                    alert('Error');
                }
            });
        });

        $('#parent_id').change(function(){

            // alert('ad');
            var parent_id = $(this).val();
            // alert(parent_id);return false;
            $('.subparent_cat_div  .select2-chosen').html('Please Select An Option');

            // alert(parent_id); return false;
            $.ajax({
                type:'get',
                url: '{{url("admin/getSubcategoriesByCategoriesOnProduct")}}',
                data: {parent_id: parent_id},
                success:function(response){
                    console.log(response);

                    $("#subparent_id").empty();

                    // Without parent div of select2 , don't change
                    $('.subparent_cat_div #select2-chosen-2').html('Please Select An Option');

                    $.each(response, function(key, value) {
                        console.log(value.title);
                        $('#subparent_id').append('<option value="'+ value.id +'">'+ value.title +'</option>');
                    });
                }
                ,error:function(){
                    alert('Error');
                }
            });
        });
    </script>
    <script>
        // Function to handle the file input change event
        document.getElementById('product-gallery').addEventListener('change', function () {
            // Get the file input element
            const input = this;

            // Get the image preview container
            const imagePreviewContainer = document.getElementById('imagePreview');

            // Clear any previous previews
            imagePreviewContainer.innerHTML = '';

            // Loop through selected files
            for (let i = 0; i < input.files.length; i++) {
                const file = input.files[i];

                // Create a new image element
                const img = document.createElement('img');
                img.classList.add('img-thumbnail', 'm-1'); // Add any CSS classes for styling

                // Set the image source to the selected file
                img.src = URL.createObjectURL(file);

                // Create a remove button for each image
                const removeBtn = document.createElement('button');
                removeBtn.textContent = 'Remove';
                removeBtn.classList.add('btn', 'btn-danger', 'btn-sm', 'm-1');
                removeBtn.addEventListener('click', function () {
                    // Remove the corresponding preview image and button
                    img.remove();
                    removeBtn.remove();
                });

                // Append the image and remove button to the preview container
                imagePreviewContainer.appendChild(img);
                imagePreviewContainer.appendChild(removeBtn);
            }
        });
    </script>
@stop
