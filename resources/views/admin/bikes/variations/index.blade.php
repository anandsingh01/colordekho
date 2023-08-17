@extends('layouts.admin')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/admin')}}/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css"/>

    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/bootstrap-select/css/bootstrap-select.css" />


    <link rel="stylesheet" href="{{asset('/assets/admin/')}}/assets/plugins/select2/select2.css" />
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
@stop
@section('body')
    <div class="block-header">

        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Dashboard</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('admin/')}}"><i class="zmdi zmdi-home"></i> Admin</a></li>
                    <li class="breadcrumb-item active">{{$page_heading}}</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-lg-5 col-md-5 col-sm-12">
            <div class="card">
{{--                <form method="post" action="{{url('admin/uploadCategoryContent')}}" enctype="multipart/form-data" class="category_form">--}}
{{--                    @csrf--}}

{{--                    <div class="form-group">--}}
{{--                        <label for="category_name"><b>CSV File</b></label>--}}
{{--                        <input name="csv_file" type="file" id="csv_file" class="form-control" >--}}
{{--                    </div>--}}


{{--                    <div class="col-md-12 mt-5">--}}
{{--                        <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Submit</button>--}}
{{--                    </div>--}}
{{--                </form>--}}

                <div class="body">
                    <form method="post" action="{{url('admin/save-bikes-variations')}}" class="category_form"
                    enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="category_name"><b> Variations </b></label>
                            <select name="variation" class="form-control ms select2">
                                <option value="1ltr">1 Ltr</option>
                                <option value="100ml">100ml</option>
                                <option value="500ml">500ml</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="category_name"><b> Color </b></label>
                            <select name="color_id" class="form-control ms select2">
                                @forelse($bike_colors as $bike_color)
                                    <option value="{{$bike_color->id}}">{{$bike_color->color}}</option>
                                @empty
                                @endforelse
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="category_name"><b> Price </b></label>
                            <input name="price" type="number" id="price" class="form-control" placeholder="">
                        </div>

                        <div class="form-group">
                            <label for="category_name"><b> MRP </b></label>
                            <input name="mrp" type="number" id="mrp_price" class="form-control" placeholder="">
                        </div>

                        <button type="submit" class="btn btn-raised btn-primary btn-round waves-effect">Submit</button>


                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-7 col-md-7 col-sm-12">
            <div class="card">
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                            <tr>
                                <th>Variation</th>
                                <th>Color</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Variation</th>
                                <th>Color</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            @if(!empty($all_bike_variations))
                                @foreach($all_bike_variations as $all_bike_variation)
                                    <tr>
                                        <td>{{$all_bike_variation->variation}}</td>
                                        <td>{{$all_bike_variation->get_colors[0]->color ?? ''}}</td>
                                        <td>{{$all_bike_variation->price}}</td>

                                        <td>
                                        @if($all_bike_variation->status == 1)
                                            <span class="badge badge-info text-white" >Current status : Active</span><br>
                                            <span class="badge badge-danger">
                                                <a href="javascript:void(0)" data-id="{{$all_bike_variation->id}}" data-status="0" class="status">
                                                    Change to : Inactive
                                                </a>
                                            </span>
                                        @else
                                            <span class="badge badge-danger">Current status : Inactive</span><br>
                                            <span class="badge badge-info">
                                                <a href="javascript:void(0)" data-id="{{$all_bike_variation->id}}" data-status="1" class="text-white status">
                                                    Change to : Active
                                                </a>
                                            </span>
                                        @endif

                                    </td>
                                    <td>
                                        <a href="{{url('admin/edit-bikes-variations/'.$all_bike_variation->id)}}" class="btn btn-success btn-sm btn-icon">
                                            <i class="zmdi zmdi-edit"></i></a>
                                        <button class="btn btn-sm btn-danger btn-icon" onclick="deleteConfirmation({{$all_bike_variation->id}})">
                                            <i class="zmdi zmdi-delete"></i></button>
                                    </td>
                                </tr>
                                @endforeach
                            @else
                            <h3>No Data Found</h3>

                            @endif


{{--                            {{ $all_bike_variations->links() }}--}}
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
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
    <script src="{{asset('assets/admin')}}/assets/js/pages/tables/jquery-datatable.js"></script>
    <script src="{{asset('/assets/admin/')}}/assets/plugins/select2/select2.min.js"></script> <!-- Select2 Js -->
    <script src="{{asset('/assets/admin/')}}/assets/js/pages/forms/advanced-form-elements.js"></script>

    <script>

        $(function() {
            $('.status').click(function() {
                var status = $(this).data('status');
                var id = $(this).data('id');
                // alert(id);

                var table = 'categories';
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '{{url("admin/update-bikes-variations-Status")}}',
                    data: {'status': status, 'id': id,'table' : table},
                    success: function(data){
                        // location.reload();
                        swal("Status Changed!");
                        location.reload();
                        console.log(data.success)
                    }
                });
            })
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
                        url: "{{url('admin/delete-bikes-variations')}}/" + id,
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
