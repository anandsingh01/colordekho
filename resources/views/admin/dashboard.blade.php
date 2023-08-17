@extends('layouts.admin')

@section('css')
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
@stop
@section('body')
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Dashboard</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}"><i class="zmdi zmdi-home"></i> Admin </a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ul>
                <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
                <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="card">

                    <div class="body">
                <h2>Sales Report</h2>

                <form id="report-form">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="start_date">Start Date:</label>
                                <input type="date" name="start_date" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="end_date">End Date:</label>
                                <input type="date" name="end_date" class="form-control" required>
                            </div>
                        </div>


                        <button type="submit" class="btn btn-primary">Generate Report</button>
                    </div>




                </form>
                    </div>
                </div>

            </div>
        </div>

        <div class="card">

            <div class="body">
        <div class="row">
            <table class="table dataTable js-exportable">
                <thead>
                <tr>
                    <td>Product name</td>
                    <td>Total Sales</td>
                </tr>
                </thead>
                <tbody>
                @foreach ($bestSellingProducts as $product)
                    <tr>
                        @php
                            $productDetails = \App\Models\Product::find($product->product_id);
                        @endphp


                        <td> {{ $productDetails->title ?? 'Unknown Product' }} </td>
                        <td> {{ $product->total_sales }} </td>
                    </tr>
                @endforeach
                </tbody>

            </table>
            <div class="col-md-6">


                <!-- Display Best Selling Products Chart -->
                <div>
                    <h2>Best Selling Products</h2>
                    <canvas id="bestSellingChart" width="400" height="200"></canvas>
                </div>
            </div>

                            <div class="col-md-6">
                                <h2>Revenue Generated</h2>
                                <!-- Display Revenue Generated Chart -->
                                <div>
                                    <canvas id="revenueChart" width="400" height="200"></canvas>
                                </div>

                            </div>
        </div>
            </div>
        </div>




    </div>

    </div>
@stop

@section('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#report-form').submit(function (e) {
                e.preventDefault();

                const formData = $(this).serialize();

                $.get('{{ route("sales.report") }}', formData, function (response) {
                    console.log(response);
                    const bestSellingProductNames = response.bestSellingProductNames;
                    const bestSellingProductSales = response.bestSellingProductSales;
                    const revenueDates = response.revenueDates;
                    const revenueAmounts = response.revenueAmounts;

                    // Best Selling Products Chart
                    var bestSellingChart = new Chart(document.getElementById('bestSellingChart'), {
                        type: 'bar',
                        data: {
                            labels: bestSellingProductNames,
                            datasets: [{
                                label: 'Total Sales',
                                data: bestSellingProductSales,
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true,
                                    title: {
                                        display: true,
                                        text: 'Total Sales'
                                    }
                                },
                                x: {
                                    title: {
                                        display: true,
                                        text: 'Product Name'
                                    }
                                }
                            }
                        }
                    });

                    // Revenue Generated Chart
                    var revenueChart = new Chart(document.getElementById('revenueChart'), {
                        type: 'line',
                        data: {
                            labels: revenueDates,
                            datasets: [{
                                label: 'Revenue',
                                data: revenueAmounts,
                                borderColor: 'rgba(255, 99, 132, 1)',
                                borderWidth: 1,
                                fill: false
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true,
                                    title: {
                                        display: true,
                                        text: 'Revenue'
                                    }
                                },
                                x: {
                                    title: {
                                        display: true,
                                        text: 'Date'
                                    }
                                }
                            }
                        }
                    });
                });
            });
        });
    </script>


@stop
