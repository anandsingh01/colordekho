<?php $getCommonSetting = getCommonSetting();?>
<div class="navbar-brand">
    <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
    <a href=""><img src="{{asset(''.$getCommonSetting->logo_header)}}" alt="{{$getCommonSetting->site_title}}"></a>
</div>
<div class="menu">
    <ul class="list">

        <li><a href="{{url('admin/dashboard')}}" class=" waves-effect waves-block">
                <i class="zmdi zmdi-book-image"></i><span>Dashboard</span></a></li>

        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
                <i class="zmdi zmdi-apps"></i><span>Add Banner</span></a>
            <ul class="ml-menu">
                <li><a href="{{url('admin/all-banner')}}"><span>All Banner</span></a></li>
                <li><a href="{{url('admin/add-banner')}}"><span>Add Banner</span></a></li>
            </ul>
        </li>

        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
                <i class="zmdi zmdi-apps"></i>
                <span>Cars</span></a>
            <ul class="ml-menu">
                <li><a href="{{url('admin/all-cars')}}"><span>Cars Manufacture</span></a></li>
                <li><a href="{{url('admin/all-cars-color')}}"><span>All Cars Colors</span></a></li>
                <li><a href="{{url('admin/all-cars-variations')}}"><span>All Cars Variations</span></a></li>
            </ul>
        </li>

        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
                <i class="zmdi zmdi-apps"></i>
                <span>Bikes</span></a>
            <ul class="ml-menu">
                <li><a href="{{url('admin/all-bikes')}}"><span>Bikes Manufacture</span></a></li>
                <li><a href="{{url('admin/all-bikes-color')}}"><span>All Bikes Colors</span></a></li>
                <li><a href="{{url('admin/all-bikes-variations')}}"><span>All Bikes Variations</span></a></li>
            </ul>
        </li>


        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
{{--                <i class="zmdi zmdi-apps"></i><span>Category</span></a>--}}
{{--            <ul class="ml-menu">--}}
{{--                <li><a href="{{url('admin/categories?type=product')}}"><span> Categories</span></a></li>--}}
{{--                <li><a href="{{url('admin/categories?type=brands')}}"><span> Brands</span></a></li>--}}
{{--            </ul>--}}
{{--        </li>--}}

        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block"><i class="zmdi zmdi-apps"></i>--}}
        {{--                <span>About Us</span></a>--}}
        {{--            <ul class="ml-menu">--}}
        {{--                <li><a href="{{url('admin/who-we-are')}}"><span>Who we are</span></a></li>--}}
        {{--                <li><a href="{{url('admin/our-mission')}}"><span>Our Mission, Vision</span></a></li>--}}
        {{--                <li><a href="{{url('admin/core-compentancy')}}"><span>Core compentancy</span></a></li>--}}
        {{--            </ul>--}}
        {{--        </li>--}}

{{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
{{--                <i class="zmdi zmdi-apps"></i>--}}
{{--                <span>Offers & Discount</span></a>--}}
{{--            <ul class="ml-menu">--}}
{{--                <li><a href="{{url('admin/offers')}}"><span>All Offers</span></a></li>--}}
{{--            </ul>--}}
{{--        </li>--}}

        <li class="{{ strpos($_SERVER['REQUEST_URI'], "products") ? 'active' : '' }}
            || {{ strpos($_SERVER['REQUEST_URI'], "product") ? 'active' : '' }}
            || {{ strpos($_SERVER['REQUEST_URI'], "attributes") ? 'active' : '' }}
            "><a href="javascript:void(0);" class="menu-toggle"><i class="zmdi zmdi-shopping-cart"></i><span>Products</span></a>
            <ul class="ml-menu">
                <li class="{{ request()->is('add-products') ? 'active' : ''}}"><a href="{{url('admin/add-products')}}">Add Products</a></li>
                <li class="{{ request()->is('all-products') ? 'active' : ''}}"><a href="{{url('admin/all-products')}}">All Products</a></li>
            </ul>
        </li>
        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
        {{--                <i class="zmdi zmdi-apps"></i>--}}
        {{--                <span>Social Impacts</span></a>--}}
        {{--            <ul class="ml-menu">--}}
        {{--                <li><a href="{{url('admin/social-impacts?type=csr')}}"><span>CSR</span></a></li>--}}
        {{--                <li><a href="{{url('admin/social-impacts?type=sab-csr')}}"><span>SAB CSR Policy</span></a></li>--}}
        {{--            </ul>--}}
        {{--        </li>--}}



{{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
{{--                <i class="zmdi zmdi-apps"></i><span>Blog</span></a>--}}
{{--            <ul class="ml-menu">--}}
{{--                <li><a href="{{url('admin/add-posts?type=article')}}" class=" waves-effect waves-block"><span>Add Posts</span></a></li>--}}
{{--                <li><a href="{{url('admin/all-post?type=all-posts')}}" class=" waves-effect waves-block"><span>Posts</span></a></li>--}}

{{--            </ul>--}}
{{--        </li>--}}

        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">
                <i class="zmdi zmdi-apps"></i><span>Orders</span></a>
            <ul class="ml-menu">
                <li><a href="{{url('admin/all-orders')}}" class=" waves-effect waves-block"><span>All Orders</span></a></li>

{{--                <li><a href="{{url('admin/all-post?type=all-posts')}}" class=" waves-effect waves-block"><span>Posts</span></a></li>--}}

            </ul>
        </li>

{{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
{{--                <i class="zmdi zmdi-apps"></i><span>Return & Refunds</span></a>--}}
{{--            <ul class="ml-menu">--}}
{{--                <li><a href="{{url('admin/return-refunds')}}" class=" waves-effect waves-block"><span>Return & Refunds</span></a></li>--}}
{{--                --}}{{--                <li><a href="{{url('admin/all-post?type=all-posts')}}" class=" waves-effect waves-block"><span>Posts</span></a></li>--}}

{{--            </ul>--}}
{{--        </li>--}}
{{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
{{--                <i class="zmdi zmdi-apps"></i><span>Enquiry</span></a>--}}
{{--            <ul class="ml-menu">--}}
{{--                <li><a href="{{url('admin/enquiry')}}" class=" waves-effect waves-block"><span>Enquiry</span></a></li>--}}
{{--                --}}{{--                <li><a href="{{url('admin/all-post?type=all-posts')}}" class=" waves-effect waves-block"><span>Posts</span></a></li>--}}

{{--            </ul>--}}
{{--        </li>--}}

        {{--        --}}{{--    Previously Projects Menu    --}}
        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
        {{--                <i class="zmdi zmdi-apps"></i><span>Metals</span></a>--}}
        {{--            <ul class="ml-menu">--}}
        {{--                <li><a href="{{url('admin/all-metals')}}"><span>All Metals</span></a></li>--}}
        {{--                <li><a href="{{url('admin/add-metals')}}"><span>Add Metals</span></a></li>--}}
        {{--            </ul>--}}
        {{--        </li>--}}
        {{--        --}}{{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block">--}}
        {{--        --}}{{--                <i class="zmdi zmdi-apps"></i><span>Projects Details</span></a>--}}
        {{--        --}}{{--            <ul class="ml-menu">--}}
        {{--        --}}{{--                <li><a href="{{url('admin/all-projects-details')}}"><span>All Projects details</span></a></li>--}}
        {{--        --}}{{--                <li><a href="{{url('admin/add-project-details')}}"><span>Add Projects details</span></a></li>--}}
        {{--        --}}{{--            </ul>--}}
        {{--        --}}{{--        </li>--}}
        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block"><i class="zmdi zmdi-apps"></i><span>All Collaborations</span></a>--}}
        {{--            <ul class="ml-menu">--}}
        {{--                <li><a href="{{url('admin/all-collaborations?type=collaboration')}}"><span>All collaborations</span></a></li>--}}
        {{--                <li><a href="{{url('admin/add-collaborations?type=collaboration')}}"><span>Add collaborations</span></a></li>--}}
        {{--                <li><a href="{{url('admin/all-collaborations?type=certificate')}}"><span>All Certificate</span></a></li>--}}
        {{--                <li><a href="{{url('admin/add-collaborations?type=certificate')}}"><span>Add Certificate</span></a></li>--}}

        {{--            </ul>--}}
        {{--        </li>--}}
        {{--        <li><a href="javascript:void(0);" class="menu-toggle waves-effect waves-block"><i class="zmdi zmdi-apps"></i><span>Our Team</span></a>--}}
        {{--            <ul class="ml-menu">--}}
        {{--                --}}{{--                <li><a href="{{url('admin/founders-note')}}"><span>Founder's Note</span></a></li>--}}
        {{--                <li><a href="{{url('admin/our-team')}}"><span>Our Team</span></a></li>--}}
        {{--                <li><a href="{{url('admin/our-role')}}"><span>Role</span></a></li>--}}
        {{--            </ul>--}}
        {{--        </li>--}}

        {{--                <li><a href="{{url('admin/support-us')}}" class=" waves-effect waves-block"><i class="zmdi zmdi-book-image"></i><span>Support Us</span></a></li>--}}
        <li><a href="{{url('admin/common-settings')}}" class=" waves-effect waves-block"><i class="zmdi zmdi-book-image"></i><span>Common Settings</span></a></li>
        <li><a href="{{url('admin/all-users')}}" class=" waves-effect waves-block"><i class="zmdi zmdi-book-image"></i><span>Users</span></a></li>

    </ul>
</div>
