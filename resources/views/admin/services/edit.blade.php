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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.4-rc1/css/foundation.css">

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


    <style>
        .quote-imgs-thumbs {
            background: #eee;
            border: 1px solid #ccc;
            border-radius: 0.25rem;
            margin: 1.5rem 0;
            padding: 0.75rem;
        }
        .quote-imgs-thumbs--hidden {
            display: none;
        }
        .img-preview-thumb {
            background: #fff;
            border: 1px solid #777;
            border-radius: 0.25rem;
            box-shadow: 0.125rem 0.125rem 0.0625rem rgba(0, 0, 0, 0.12);
            margin-right: 1rem;
            max-width: 140px;
            padding: 0.25rem;
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
        <form class="form" action="{{url('admin/update-services')}}" method="post" enctype="multipart/form-data">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Update</strong> {{$page_heading}}</h2>
                        </div>
                        <div class="body">
                            <div class="row">

                                <div class="col-lg-12 col-md-12">
                                    <label>Service Category</label>
                                    <div class="input-group masked-input mb-3">
                                        <select class="form-control" name="service_category">
                                            <option value="none">None</option>

                                            @forelse($services as $services)
                                                <option value="{{$services->url_slug}}" {{$services->url_slug == $service->url_slug ? 'selected' : ''}}>{{$services->service_name}}</option>
                                            @empty
                                                No Category
                                            @endforelse
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <label>Banner Image</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="file" class="form-control" name="banner_image" placeholder="">
                                        @if(!empty($service->banner_image))
                                            <img src="{{asset(''.$services->banner_image)}}" style="width:100px;">
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password"> Service Name </label>
                                    <input type="text" class="form-control"
                                           name="service_name"
                                           value="{{$service->service_name}}"
                                    />
                                </div>

                                <div class="col-lg-12 col-md-12 mtb-10">
                                    <label class="control-label" for="password"> Service Summary </label>
                                    <textarea class="form-control" name="service_summary" > {{$service->service_summary}} </textarea>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <label>Service Image</label>
                                    <div class="input-group masked-input mb-3">
                                        <input type="file" class="form-control" name="service_image" placeholder="">
                                        @if(!empty($service->service_image))
                                            <img src="{{asset(''.$services->service_image)}}" style="width:100px;">
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <label>Content</label>
                                    <div class="input-group masked-input mb-3">
                                        <textarea  id='about' name="service_description" required class='form-control p-textarea summernote'> {{$service->service_description}}</textarea><br />
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
                        <div class="header">
                            <h2><strong>Add</strong> Block Row</h2>
                        </div>
                        <div class="body">

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="row">
                                        <h5 class="text-center">Block 1</h5>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Background Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_bg_image_1" placeholder="">
                                                @if(!empty($service->block_bg_image_1))
                                                    <img src="{{asset(''.$services->block_bg_image_1)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Icon Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_icon_image_1" placeholder="">
                                                @if(!empty($service->block_icon_image_1))
                                                    <img src="{{asset(''.$services->block_icon_image_1)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Text 1 </label>
                                            <input type="text" class="form-control" name="block_text_1" value="{{$services->block_text_1}}" />
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Summary 1</label>
                                            <textarea class="form-control" name="block_summary_1" > {{$services->block_summary_1}} </textarea>
                                        </div>


                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="row">
                                        <h5 class="text-center">Block 2</h5>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Background Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_bg_image_2" placeholder="">
                                                @if(!empty($service->block_bg_image_2))
                                                    <img src="{{asset(''.$services->block_bg_image_2)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Icon Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_icon_image_2" placeholder="">
                                                @if(!empty($service->block_icon_image_2))
                                                    <img src="{{asset(''.$services->block_icon_image_2)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Text 2 </label>
                                            <input type="text" class="form-control" name="block_text_2" value="{{$services->block_text_2}}" />
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Summary 2</label>
                                            <textarea class="form-control" name="block_summary_2" > {{$services->block_summary_2}} </textarea>
                                        </div>


                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="row">
                                        <h5 class="text-center">Block 3</h5>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Background Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_bg_image_3" placeholder="">
                                                @if(!empty($service->block_bg_image_3))
                                                    <img src="{{asset(''.$services->block_bg_image_3)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12">
                                            <label>Icon Image</label>
                                            <div class="input-group masked-input mb-3">
                                                <input type="file" class="form-control" name="block_icon_image_3" placeholder="">
                                                @if(!empty($service->block_icon_image_3))
                                                    <img src="{{asset(''.$services->block_icon_image_3)}}" style="width:100px;">
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Text 3 </label>
                                            <input type="text" class="form-control" name="block_text_3" value="{{$services->block_text_3}}" />
                                        </div>

                                        <div class="col-lg-12 col-md-12 mtb-10">
                                            <label class="control-label" for="password"> Block Summary 3</label>
                                            <textarea class="form-control" name="block_summary_3" > {{$services->block_summary_3}} </textarea>
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
                        <div class="header">
                            <h2><strong>Add</strong> Gallery </h2>
                        </div>
                        <div class="body">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <div class="row">

                                                <div class="col-md-12">
                                                    <h5>Multiple Image File Upload with Preview</h5>
                                                </div>
                                                <br>
                                                <div class="col-md-12">
                                                    <p>
                                                        <label for="upload_imgs" class="button hollow">Select Your Images +</label>
                                                        <input class="show-for-sr" type="file" id="upload_imgs" name="upload_gallery[]" multiple/>
                                                    </p>
                                                    <div class="quote-imgs-thumbs quote-imgs-thumbs--hidden" id="img_preview" aria-live="polite"></div>

                                                </div>
                                            </div>
                                            <?php $imagePaths = $service->upload_gallery;
                                            $imageArray = json_decode($imagePaths); // Convert the JSON string to an array

                                            ?>
                                            @foreach($imageArray as $imagePath)
                                                <div class="item">
                                                    <div class="blog-grid blog-rounded theme-blog">
                                                        <div class="post-media img-effect">
                                                            <a href="#" data-toggle="modal" data-target="#imageModal" data-slide-to="<?= $imagePath ?>">
                                                                <img src="{{asset('/'.$imagePath)}}" alt="" style="width:100px; float:left; margin:10px;">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach

                                        </div>

                                        <input type="hidden" name="id" value="{{$service->id}}" />

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

    <script>
        var imgUpload = document.getElementById('upload_imgs')
            , imgPreview = document.getElementById('img_preview')
            , imgUploadForm = document.getElementById('img-upload-form')
            , totalFiles
            , previewTitle
            , previewTitleText
            , img;

        imgUpload.addEventListener('change', previewImgs, false);
        imgUploadForm.addEventListener('submit', function (e) {
            e.preventDefault();
            alert('Images Uploaded! (not really, but it would if this was on your website)');
        }, false);

        function previewImgs(event) {
            totalFiles = imgUpload.files.length;

            if(!!totalFiles) {
                imgPreview.classList.remove('quote-imgs-thumbs--hidden');
                previewTitle = document.createElement('p');
                previewTitle.style.fontWeight = 'bold';
                previewTitleText = document.createTextNode(totalFiles + ' Total Images Selected');
                previewTitle.appendChild(previewTitleText);
                imgPreview.appendChild(previewTitle);
            }

            for(var i = 0; i < totalFiles; i++) {
                img = document.createElement('img');
                img.src = URL.createObjectURL(event.target.files[i]);
                img.classList.add('img-preview-thumb');
                imgPreview.appendChild(img);
            }
        }
    </script>

@stop
