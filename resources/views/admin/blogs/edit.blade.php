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
        <form method="post" action="{{url('admin/update-post')}}" class="category_form">
            <div class="row clearfix">
                <div class="col-lg-7 col-md-7 col-sm-12">
                    <div class="card">
                        <div class="body">
                            @csrf
                            <input type="hidden" name="post_format" value="{{$posts->post_format}}" />
                            <input type="hidden" name="id" value="{{$posts->id}}" />
                            <div class="form-group">
                                <label class="control-label">Title</label>
                                <input type="text" id="wr_input_post_title" class="form-control" name="title" placeholder="Title"
                                       value="{{$posts->title}}" required="">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Slug <small>(If you leave it blank, it will be generated automatically.)</small>
                                </label>
                                <input type="text" class="form-control" name="title_slug" placeholder="Slug"
                                       value="{{$posts->title_slug}}">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Summary &amp; Description (Meta Tag)</label>
                                <textarea class="form-control text-area" name="summary" placeholder="Summary &amp; Description (Meta Tag)">
                                    <?php echo $posts->summary;?>
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Keywords (Meta Tag)</label>
                                <input type="text" class="form-control" name="keywords" placeholder="Keywords (Meta Tag)"
                                       value="{{$posts->keywords}}">
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
                                            <input name="visibility" class="" type="radio" id="radio1" value="1" {{$posts->visibility == 1 ? 'checked' : ''}} >
                                            <label for="radio1">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="visibility" class="checkbox-inline" type="radio"  id="radio2" value="0"  {{$posts->visibility == 0 ? 'checked' : ''}}>
                                            <label for="radio2">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="show_on_homepage"><b>Show Right Column</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="show_right_column" type="radio" id="radio3" value="1"  {{$posts->show_right_column == 1 ? 'checked' : ''}} >
                                            <label for="radio3">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="show_right_column" type="radio" id="radio4" value="0"  {{$posts->show_right_column == 1 ? 'checked' : ''}}>
                                            <label for="radio4">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label> <b>Add to Featured</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="is_featured" class="" type="radio" id="radio5" value="1"  {{$posts->is_featured == 1 ? 'checked' : ''}} >
                                            <label for="radio5">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="is_featured" class="checkbox-inline" type="radio" id="radio6" value="0" {{$posts->is_featured == 0 ? 'checked' : ''}}>
                                            <label for="radio6">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label> <b>Add to Breaking</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="checkbox">
                                            <div class="radio radio-inline">
                                                <input name="is_breaking" class="" type="radio" id="radio7" value="1" {{$posts->is_breaking == 1 ? 'checked' : ''}}  >
                                                <label for="radio7">Yes</label>
                                            </div>
                                            <div class="radio radio-inline">
                                                <input name="is_breaking" class="checkbox-inline" type="radio" id="radio8" value="0" {{$posts->is_breaking == 0 ? 'checked' : ''}}>
                                                <label for="radio8">No</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label> <b>Add to Slider</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="is_slider" class="" type="radio" id="radio9" value="1" {{$posts->is_slider == 1 ? 'checked' : ''}}  >
                                            <label for="radio9">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="is_slider" class="checkbox-inline" type="radio" id="radio10" value="0" {{$posts->is_slider == 0 ? 'checked' : ''}}>
                                            <label for="radio10">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label> <b>Add to Recommended</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="is_recommended" class="" type="radio" id="radio11" value="1" {{$posts->is_recommended == 1 ? 'checked' : ''}}  >
                                            <label for="radio11">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="is_recommended" class="checkbox-inline" type="radio" id="radio12" value="0" {{$posts->is_recommended == 0 ? 'checked' : ''}}>
                                            <label for="radio12">No</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label> <b>Show Only to Registered Users</b></label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="radio radio-inline">
                                            <input name="need_auth" class="" type="radio" id="radio13" value="1" {{$posts->need_auth == 1 ? 'checked' : ''}}  >
                                            <label for="radio13">Yes</label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input name="need_auth" class="checkbox-inline" type="radio" id="radio14" value="0" {{$posts->need_auth == 0 ? 'checked' : ''}}>
                                            <label for="radio14">No</label>
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
                                            <input type="text" name="tags" class="form-control" data-role="tagsinput"
                                                   value="@if(!empty($posts->getTags))
                                                       @foreach($posts->getTags as $tags)
                                                       {{$tags->tag}},
@endforeach
                                                   @endif
                                                   "
                                            >

                                        </div>
                                        <small>(Type tag and hit enter)</small>

                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label">Optional URL</label>
                                <input type="text" class="form-control" name="optional_url" placeholder="Keywords (Meta Tag)"
                                       value="{{$posts->optional_url }} ">
                            </div>

                            <div class="form-group">
                                <label class="control-label">Summernote</label>
                                <textarea type="text" class="form-control summernote" name="content" placeholder="Keywords (Meta Tag)"><?php echo $posts->content;?></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <div class="card">
                        <div class="body">
                            <div class="card">
                                <div class="col-md-12">
                                    <label class="control-label">Main Post Image </label>
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            <a id="lfm" data-input="thumbnail" data-preview="holder"
                                               class="btn btn-primary text-white">
                                              <i class="fa fa-picture-o"></i> Main Post Image
                                            </a>
                                        </span>
                                        <input id="thumbnail" class="form-control" type="hidden" name="post_image_id">
                                    </div>
                                    @if(!empty($posts->image_big))
                                        <img src="{{$posts->image_big}}" style="margin-top:15px;max-height:100px; width:100%;">
                                    @else
                                        <div id="holder" style="margin-top:15px;max-height:100px; width:100%;"></div>
                                    @endif
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">or Add Image Url </label>
                                        <input type="text" class="form-control" name="image_url" placeholder="Add Image Url"
                                               value="{{$posts->image_url}}">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">Image Description </label>
                                        <input type="text" class="form-control" name="image_description"
                                               placeholder="Image description" value="{{$posts->image_description}}">
                                    </div>
                                </div>

                            </div>
                        </div>


                        </div>

                    <div class="card">
                        <div class="body">
                            <div class="card">
                                <div class="col-md-12">
                                    <label class="control-label">Files </label>
                                    <div class="input-group">
                                      <span class="input-group-btn">
                                        <a id="lfm2" data-input="thumbnail2" data-preview="holder2"
                                           class="btn btn-primary text-white">
                                          <i class="fa fa-picture-o"></i> Add Files
                                        </a>
                                      </span>
                                        <input id="thumbnail2" class="form-control" type="hidden" name="post_selected_file_id[]">
                                    </div>
                                    <div id="holder2" style="margin-top:15px;max-height:100px;"></div>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="card">
                        <div class="body">
                            <div class="card">
                                <div class="col-md-12">
                                    <label class="control-label">Categories </label>
                                    <select name="category_id" class="getcategories form-control show-tick ms select2" data-placeholder="Select">
                                        <option>Select</option>

                                    @if(!empty($category))
                                            @foreach($category as $categories)
                                                <option value="{{$categories->id}}" {{$posts->category_id == $categories->id ? 'selected' : ''}}>{{$categories->name}}</option>
                                            @endforeach
                                        @else
                                            <option>No category</option>
                                        @endif
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <label class="control-label">Subcategories </label>
                                    <select name="subcategory_id" class="getsubctegories show-tick ms form-control" >
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>


                    </div>


                    <div class="card">
                        <div class="body">
                            <div class="col-md-12">
                                <label class="control-label">Publish </label>

{{--                                <div class="form-group">--}}
{{--                                    <div class="row">--}}
{{--                                        <div class="col-md-6">--}}
{{--                                            <label> <b>Schedule Post</b></label>--}}
{{--                                        </div>--}}
{{--                                        <div class="col-md-6">--}}
{{--                                            <div class="radio radio-inline">--}}
{{--                                                <input name="scheduled_post" class="" type="radio" id="radio15" value="1" checked >--}}
{{--                                                <label for="radio15">Yes</label>--}}
{{--                                            </div>--}}
{{--                                            <div class="radio radio-inline">--}}
{{--                                                <input name="scheduled_post" class="checkbox-inline" type="radio" id="radio16" value="0">--}}
{{--                                                <label for="radio16">No</label>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}

                                <div class="col-md-12">
                                    <div class="col-md-12 mt-5">
{{--                                        <button type="submit" class="btn btn-raised btn-warning btn-round waves-effect">Save As Draft</button>--}}
                                        <button type="submit" class="btn btn-raised btn-success btn-round waves-effect">Submit</button>
                                    </div>
                                </div>
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
        var route_prefix = "/filemanager";
    </script>
    <script>
        {!! \File::get(base_path('vendor/unisharp/laravel-filemanager/public/js/stand-alone-button.js')) !!}
    </script>
    <script>
        $('#lfm').filemanager('image', {prefix: route_prefix});
        $('#lfm2').filemanager('file', {prefix: route_prefix});
    </script>

    <script>
        var lfm = function(id, type, options) {
            let button = document.getElementById(id);

            button.addEventListener('click', function () {
                var route_prefix = (options && options.prefix) ? options.prefix : '/filemanager';
                var target_input = document.getElementById(button.getAttribute('data-input'));
                var target_preview = document.getElementById(button.getAttribute('data-preview'));

                window.open(route_prefix + '?type=' + options.type || 'file', 'FileManager', 'width=900,height=600');
                window.SetUrl = function (items) {
                    var file_path = items.map(function (item) {
                        return item.url;
                    }).join(',');

                    // set the value of the desired input to image url
                    target_input.value = file_path;
                    target_input.dispatchEvent(new Event('change'));

                    // clear previous preview
                    target_preview.innerHtml = '';

                    // set or change the preview image src
                    items.forEach(function (item) {
                        let img = document.createElement('img')
                        img.setAttribute('style', 'height: 5rem')
                        img.setAttribute('src', item.thumb_url)
                        target_preview.appendChild(img);
                    });

                    // trigger change event
                    target_preview.dispatchEvent(new Event('change'));
                };
            });
        };

        lfm('lfm2', 'file', {prefix: route_prefix});
    </script>

    <script>
        $(document).ready(function () {
            $('.getcategories').on('change',function(e){
                // console.log(e);
                var cat_id = e.target.value;
                $.ajax({
                    method: "GET",
                    url: "{{url('/ajax-subcat?cat_id=')}}"+cat_id,
                    success: function(response) {
                        $('.getsubctegories').html('<option value="">-- Select Option --</option>');
                        $.each(response, function (key, value) {
                            $(".getsubctegories").append('<option value="' + value.id + '">' + value.name + '</option>');
                        });
                    },
                    error: function(error) {

                    }
                });
            });
        });
    </script>
@stop
