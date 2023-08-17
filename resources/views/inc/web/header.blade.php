
<div class="topbar bg-primary text-white">
    <div class="container">
        <div class="row d-flex justify-content-between">
            <div class="topbar-left">
                <ul class="top-author-link">
                    <li><a href="{{url('about-sab')}}">About</a></li>
{{--                    <li><a href="faq.html">FAQ,s</a></li>--}}
                    <li><a href="{{url('contact-us')}}">Contact</a></li>
                    <li><i class="ti-email m-r5"></i> {{$getCommonSetting->contact_email}}</li>
                </ul>
            </div>
            <div class="topbar-right topbar-social">
                <ul>
                    <li><a href="{{$getCommonSetting->facebook_url}}" class="site-button sharp-sm white facebook hover"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="{{$getCommonSetting->twitter_url}}" class="site-button sharp-sm white twitter hover"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="{{$getCommonSetting->instagram_url}}" class="site-button sharp-sm white instagram hover"><i class="fa fa-instagram"></i></a></li>
                    <li><a href="{{$getCommonSetting->linkedin_url}}" class="site-button sharp-sm white linkedin hover"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- main header -->
<div class="header-sticky menu-bar-content navbar-expand-lg">
    <div class="main-bar clearfix ">
        <div class="container clearfix">
            <!-- website logo -->
            <div class="daz-logo">
                <a href="{{url('/')}}"><img src="{{asset($getCommonSetting->logo_header)}}" alt=""></a>
            </div>
            <!-- nav toggle button -->
            <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarLeft" aria-controls="navbarLeft" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
                <span></span>
                <span></span>
            </button>
            <!-- extra nav -->
            <div class="secondary-nav">
                <div class="secondary-cell">
                    <button id="daz-search-btn" type="button" class="site-button-link"><i class="fa fa-search"></i></button>

                </div>
            </div>
            <!-- Quik search -->
            <div class="daz-search bg-primary ">
                <form action="#">
                    <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                    <span id="daz-search-remove"><i class="flaticon-cancel"></i></span>
                </form>
            </div>
            <!-- main nav -->
            <div class="header-nav navbar-collapse collapse justify-content-end" id="navbarLeft">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="{{url('/')}}">Home</a>
                    </li>
                    <li>
                        <a href="#">About Us <i class="fa fa-chevron-down"></i></a>
                        <ul class="sub-menu">
                            <li><a href="{{url('about-sab')}}" class="dez-page">About SAB</a></li>
                            <li><a href="{{url('our-mission-vision')}}" class="dez-page"> Mission & Vision</a></li>
                            <li><a href="{{url('leadership-and-board')}}" class="dez-page">Leadership Team & Board</a></li>
                        </ul>
                    </li>
                    <?php $get_services = get_services(); ?>


                    <li><a href="#">Services <i class="fa fa-chevron-down"></i></a>
                        <ul class="sub-menu">
                            @forelse($get_services as $get_service)
                            <li>
                                <a class="dez-page" href="{{url('service/'.$get_service->url_slug)}}"> {{$get_service->service_name}} </a>
                                @php
                                    $get_subservices = get_subservices($get_service->url_slug);
                                @endphp

                                @if ($get_subservices->count() > 0)
                                    <ul class="sub-menu">
                                        @foreach ($get_subservices as $get_subservice)
                                            <li><a href="{{url('service/'.$get_subservice->url_slug)}}" class="dez-page">{{ $get_subservice->service_name }}</a></li>
                                        @endforeach
                                    </ul>
                                @endif
                            </li>
                                @empty
                            @endforelse
                        </ul>
                    </li>
                    <li>
                        <a href="#">Sustainability <i class="fa fa-chevron-down"></i></a>
                        <ul class="sub-menu">
                            <li><a href="{{url('offers/overview')}}" class="dez-page">Overview</a></li>
                            <li><a href="{{url('offers/approach')}}" class="dez-page">Approach  & Strategy</a></li>
                            <li><a href="{{url('offers/stewardship')}}" class="dez-page">Responsible Stewardship </a></li>
                            <li><a href="{{url('offers/strong-relation')}}" class="dez-page">Building Strong Relation </a></li>
                            <li><a href="{{url('offers/sharing-value')}}" class="dez-page">Adding & Sharing Values </a></li>
                            <li><a href="{{url('offers/community-impact')}}" class="dez-page">Community Impact </a></li>

                        </ul>
                    </li>
                    <li>
                        <a href="#">Social Impact <i class="fa fa-chevron-down"></i></a>
                        <ul class="sub-menu">
                            <li><a href="{{url('social-impact/csr')}}" class="dez-page">CSR</a></li>
                            <li><a href="{{url('social-impact/sab-csr')}}" class="dez-page">SAB - CSR</a></li>
                        </ul>
                    </li>


                    <li><a href="{{url('contact-us')}}" class="dez-page">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- main header END -->
