<div class="nav-mobile-inner">
{{--    <div class="row">--}}
{{--        <div class="col-sm-12 mobile-nav-buttons">--}}
{{--            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal-login" class="btn btn-custom btn-mobile-nav close-menu-click btn_open_login_modal m-r-5"><i class="icon-login"></i>Login</a>--}}
{{--            <a href="register.html" class="btn btn-custom btn-mobile-nav"><i class="icon-user-plus-o"></i>Register</a>--}}
{{--        </div>--}}
{{--    </div>--}}
    <div class="row">
        <div class="col-sm-12">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a href="{{url('/')}}" class="nav-link">
                        HOME
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('INTERNATIONAL')}}" class="nav-link">
                        INTERNATIONAL
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('NATIONAL')}}" class="nav-link">
                        NATIONAL
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{url('POLITICS')}}" class="nav-link">
                        POLITICS
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        STATES<i class="icon-arrow-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <?php
                            $get_menu = get_subcategories_by_id('3');
                            if(!empty($get_menu)){
                                foreach($get_menu as $get_menus){
                                ?>
                            <li class="nav-item">
                                <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                            </li>
                        <?php
                        }
                            }
                        ?>


                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        CITIES                                            <i class="icon-arrow-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('9');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>


                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        BUSINESS                                            <i class="icon-arrow-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('4');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>


                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        SPORTS                                            <i class="icon-arrow-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('5');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>


                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{url('MOVIES')}}" class="nav-link">
                        MOVIES
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        ASTROLOGY<i class="icon-arrow-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('109');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        DEBATE                                            <i class="icon-arrow-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('130');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{url('VIDEOS')}}" class="nav-link">
                        VIDEOS
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        MORE
                        <i class="icon-arrow-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <?php
                        $get_menu = get_subcategories_by_id('8');
                        if(!empty($get_menu)){
                        foreach($get_menu as $get_menus){
                            ?>
                        <li class="nav-item">
                            <a href="{{url($get_menus->name_slug)}}" class="nav-link">{{$get_menus->name}}</a>
                        </li>
                            <?php
                        }
                        }
                        ?>
                    </ul>
                </li>
                <li class="nav-item">
                    <form action="https://24x7liveindia.com/vr-switch-mode" method="post" accept-charset="utf-8">
                        <input type="hidden" name="60f2aeb62ce44_csrf_token" value="11425ba98e68380f838c0be65bf51cea" />
                        <button type="submit" name="dark_mode" value="1" class="btn-switch-mode-mobile">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-moon-fill dark-mode-icon" viewBox="0 0 16 16">
                                <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
                            </svg>
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="nav-mobile-footer">
    <ul class="mobile-menu-social">
        <!--Include social media links-->
        <!--if facebook url exists-->
        <li>
            <a class="facebook" href="https://www.facebook.com/BMG24x7LiveIndia/"
               target="_blank"><i class="icon-facebook"></i></a>
        </li>
        <!--if twitter url exists-->
        <li>
            <a class="twitter" href="https://twitter.com/24x7Live_India"
               target="_blank"><i class="icon-twitter"></i></a>
        </li>
        <!--if pinterest url exists-->
        <!--if instagram url exists-->
        <li>
            <a class="instagram" href="https://www.instagram.com/24x7liveindia"
               target="_blank"><i class="icon-instagram"></i></a>
        </li>
        <!--if linkedin url exists-->
        <li>
            <a class="linkedin" href="{{url('/')}}"
               target="_blank"><i class="icon-linkedin"></i></a>
        </li>
        <!--if vk url exists-->
        <!--if telegram url exists-->
        <!--if youtube url exists-->
        <li>
            <a class="youtube" href="https://www.youtube.com/channel/UCCmAyPWbSfDO46n0qWn3zAQ/videos"
               target="_blank"><i class="icon-youtube"></i></a>
        </li>
        <!--if rss active-->
{{--        <li>--}}
{{--            <a class="rss" href="rss-feeds.html"><i class="icon-rss"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
    </ul>
</div>
