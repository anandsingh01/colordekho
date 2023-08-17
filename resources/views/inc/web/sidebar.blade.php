<?php
    $showAds = get_ad_codes('sidebar_top');
?>
@include('inc.web.ad', ['ad_space' => 'sidebar_top'])



{{--<div class="col-sm-12 col-xs-12 bn-lg-sidebar p-b-30">--}}
{{--    <div class="row">--}}
{{--        <a href="#"><img src="../sbnews.24x7liveindia.com/uploads/blocks/block_62061eb9d9d44.png" alt=""></a>                    </div>--}}
{{--</div>--}}
{{--<section class="col-sm-12 col-xs-12 bn-sm p-b-30">--}}
{{--    <div class="row">--}}
{{--        <a href="#"><img src="../sbnews.24x7liveindia.com/uploads/blocks/block_62061eb9d9d441.png" alt=""></a>                </div>--}}
{{--</section>--}}
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Custom-->
        <!--Widget: Custom-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">IPL LIVE SCORE</h4>
            </div>
            <div class="widget-body">
                <p><iframe style="width: 100%; min-height: 450px;" src="https://widget.crictimes.org/" frameborder="0" scrolling="yes"></iframe></p>    </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Popular Posts-->
        <!--Widget: Tags-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">Follow Us</h4>
            </div>
            <div class="widget-body">
                <ul class="widget-follow">
                    <!--if facebook url exists-->
                    <li>
                        <a class="facebook" href="https://www.facebook.com/BMG24x7LiveIndia/"
                           target="_blank"><i class="icon-facebook"></i><span>Facebook</span></a>
                    </li>
                    <!--if twitter url exists-->
                    <li>
                        <a class="twitter" href="https://twitter.com/24x7Live_India"
                           target="_blank"><i class="icon-twitter"></i><span>Twitter</span></a>
                    </li>
                    <!--if instagram url exists-->
                    <li>
                        <a class="instagram" href="https://www.instagram.com/24x7liveindia"
                           target="_blank"style="/* width: 100px; */ /* height:100px; */
         background: #f09433;
         background: -moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
         background: -webkit-linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%);
         background: linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%);
         filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );"><i class="icon-instagram"></i><span>Instagram</span></a>
                    </li>
                    <!--if pinterest url exists-->
                    <!--if linkedin url exists-->
                    <li>
                        <a class="linkedin" href="{{url('/')}}"
                           target="_blank"><i class="icon-linkedin"></i><span>Linkedin</span></a>
                    </li>
                    <li>
                        <a class="linkedin" href="#"
                           target="_blank"><i class="icon-whatsapp"></i><span>Whatsapp</span></a>
                    </li>
                    <!--if vk url exists-->
                    <!--if telegram url exists-->
                    <!--if youtube url exists-->
                    <li>
                        <a class="youtube" href="https://www.youtube.com/channel/UCCmAyPWbSfDO46n0qWn3zAQ/videos"
                           target="_blank"><i class="icon-youtube"></i><span>Youtube</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Comments-->
        <!--Widget: Our Picks-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">Voting Poll</h4>
            </div>
            <div class="widget-body">
                <?php
                $polls = get_polls();
                foreach ($polls as $poll): ?>
                    <?php if ($poll->status == 1): ?>

                    <?php if ($poll->vote_permission == "all"): ?>
                <div id="poll_<?php echo $poll->id; ?>" class="poll">

                    <div class="question">
                        <form data-form-id="<?php echo $poll->id; ?>" class="poll-form" method="post">
                            <input type="hidden" name="poll_id" value="<?php echo $poll->id; ?>">
                            <input type="hidden" name="vote_permission" value="<?php echo $poll->vote_permission; ?>">
                            <h5 class="title"><?php echo $poll->question; ?></h5>
                                <?php
                            for ($i = 1; $i <= 10; $i++):
                                $option = "option" . $i;

                            if (!empty($poll->$option)): ?>
                            <p class="option">
                                <label class="custom-checkbox custom-radio">
                                    <input type="radio" name="option" id="option<?php echo $poll->id; ?>-<?php echo $i; ?>" value="<?php echo $option; ?>">
                                    <span class="checkbox-icon"><i class="icon-check"></i></span>
                                    <span class="label-poll-option"><?php echo  $poll->$option; ?></span>
                                </label>
                            </p>
                            <?php
                            endif;
                            endfor; ?>

                            <p class="button-cnt">
                                <button type="submit" class="btn btn-sm btn-custom"><?php echo trans("vote"); ?></button>
                                <a onclick="view_poll_results('<?php echo $poll->id; ?>');" class="a-view-results"><?php echo trans("view_results"); ?></a>
                            </p>
                            <div id="poll-required-message-<?php echo $poll->id; ?>" class="poll-error-message">
                                    <?php echo trans("please_select_option"); ?>
                            </div>
                            <div id="poll-error-message-<?php echo $poll->id; ?>" class="poll-error-message">
                                    <?php echo trans("voted_message"); ?>
                            </div>
                        </form>
                    </div>

                    <div class="result" id="poll-results-<?php echo $poll->id; ?>">
                        <h5 class="title">{{$poll->question}}</h5>

                            <?php $total_vote = calculate_total_vote_poll_option($poll); ?>

                        <p class="total-vote"><?php echo trans("total_vote"); ?>&nbsp;<?php echo $total_vote; ?></p>

                            <?php for ($i = 1; $i <= 10; $i++):
                            $option = "option" . $i;
                            $param_vote_count = "option" . $i . "_vote_count";
                            $percent = 0;
                        if (!empty($poll->$option)):
                            $option_vote = $poll->$param_vote_count;
                            if ($total_vote > 0) {
                                $percent = round(($option_vote * 100) / $total_vote, 1);
                            } ?>

                        <span class="m-b-10 display-block"><?php echo $poll->$option; ?></span>

                            <?php if ($percent == 0): ?>
                        <div class="progress">
                            <span><?php echo $percent; ?>&nbsp;%</span>
                            <div class="progress-bar progress-bar-0" role="progressbar" aria-valuenow="<?php echo $total_vote; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $percent; ?>%"></div>
                        </div>
                        <?php else: ?>
                        <div class="progress">
                            <span><?php echo $percent; ?>&nbsp;%</span>
                            <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $total_vote; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $percent; ?>%"></div>
                        </div>
                        <?php endif;
                        endif;
                        endfor; ?>
                        <p>
                            <a onclick="view_poll_options('<?php echo $poll->id; ?>');" class="a-view-results m-0"><?php echo trans("view_options"); ?></a>
                        </p>
                    </div>

                </div>
                <?php else: ?>
                <div id="poll_<?php echo $poll->id; ?>" class="poll">

                    <div class="question">
                        <form data-form-id="<?php echo $poll->id; ?>" class="poll-form" method="post">
                            <input type="hidden" name="poll_id" value="<?php echo $poll->id; ?>">
                            <input type="hidden" name="vote_permission" value="<?php echo $poll->vote_permission; ?>">
                            <h5 class="title"><?php echo $poll->question; ?></h5>
                                <?php
                            for ($i = 1; $i <= 10; $i++):
                                $option = "option" . $i;

                            if (!empty($poll->$option)): ?>
                            <p class="option">
                                <label class="custom-checkbox custom-radio">
                                    <input type="radio" name="option" id="option<?php echo $poll->id; ?>-<?php echo $i; ?>" value="<?php echo $option; ?>">
                                    <span class="checkbox-icon"><i class="icon-check"></i></span>
                                    <span class="label-poll-option"><?php echo $poll->$option; ?></span>
                                </label>
                            </p>
                            <?php
                            endif;
                            endfor; ?>

                                <?php if ($this->auth_check): ?>
                            <p class="button-cnt">
                                <button type="submit" class="btn btn-sm btn-custom"><?php echo trans("vote"); ?></button>
                                <a onclick="view_poll_results('<?php echo $poll->id; ?>');" class="a-view-results"><?php echo trans("view_results"); ?></a>
                            </p>
                            <?php else: ?>
                            <p class="button-cnt">
                                <button type="button" class="btn btn-sm btn-custom" data-toggle="modal" data-target="#modal-login"><?php echo trans("vote"); ?></button>
                                <a href="#" class="a-view-results" data-toggle="modal" data-target="#modal-login"><?php echo trans("view_results"); ?></a>
                            </p>
                            <?php endif; ?>
                            <div id="poll-required-message-<?php echo $poll->id; ?>" class="poll-error-message">
                                    <?php echo trans("please_select_option"); ?>
                            </div>
                            <div id="poll-error-message-<?php echo $poll->id; ?>" class="poll-error-message">
                                    <?php echo trans("voted_message"); ?>
                            </div>
                        </form>

                    </div>

                    <div class="result" id="poll-results-<?php echo $poll->id; ?>">
                        <h5 class="title"><?php echo $poll->question ?></h5>

                            <?php $total_vote = calculate_total_vote_poll_option($poll); ?>

                        <p class="total-vote"><?php echo trans("total_vote"); ?>&nbsp;<?php echo $total_vote; ?></p>

                            <?php for ($i = 1; $i <= 10; $i++):
                            $option = "option" . $i;
                            $param_vote_count = "option" . $i . "_vote_count";
                            $percent = 0;
                        if (!empty($poll->$option)):
                            $option_vote = $poll->$param_vote_count;
                            if ($total_vote > 0) {
                                $percent = round(($option_vote * 100) / $total_vote, 1);
                            } ?>
                        <span class="m-b-10 display-block"><?php echo $poll->$option; ?></span>
                            <?php if ($percent == 0): ?>
                        <div class="progress">
                            <span><?php echo $percent; ?>&nbsp;%</span>
                            <div class="progress-bar progress-bar-0" role="progressbar" aria-valuenow="<?php echo $total_vote; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $percent; ?>%"></div>
                        </div>
                        <?php else: ?>
                        <div class="progress">
                            <span><?php echo $percent; ?>&nbsp;%</span>
                            <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $total_vote; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $percent; ?>%"></div>
                        </div>
                        <?php endif;
                        endif;
                        endfor; ?>
                        <p>
                            <a onclick="view_poll_options('<?php echo $poll->id; ?>');" class="a-view-results m-0"><?php echo trans("view_options"); ?></a>
                        </p>
                    </div>
                </div>
                <?php endif; ?>

                <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Custom-->
        <!--Widget: Custom-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">24x7 Live India News Live</h4>
            </div>
            <div class="widget-body">
                <p><iframe width="350" height="250" src="https://www.youtube.com/embed/ZGgch2sm-I4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"></iframe></p>    </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Random Slider-->
        <!--Widget: Random Slider-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">Random Posts</h4>
            </div>
            <div class="widget-body">
                <div class="random-slider-container">
                    <div id="random-slider" class="random-slider">
                        <!--Print Random Posts-->
                        <!--Post row item-->
                        <?php
                            $getRand = random_posts();
                            if(!empty($getRand)){
                                foreach($getRand as $getRandom){

                        ?>
                        <div class="post-item">
                            <a href="{{$getRandom->getCategory->name_slug}}">
                                <span class="category-label category-label-random-slider" style="background-color: #de0f02">{{$getRandom->getCategory->name}}</span>
                            </a>
                            <div class="post-item-image">
                                <a href="{{$getRandom->title_slug}}">
                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWgAAADXAQMAAAANwFmCAAAAA1BMVEVHcEyC+tLSAAAAAXRSTlMAQObYZgAAACBJREFUGBntwTEBAAAAwiD7p14KP2AAAAAAAAAAAABwESaiAAGA8Fz0AAAAAElFTkSuQmCC" alt="bg" class="img-responsive img-bg" width="360" height="215"/>
                                    <div class="img-container">
                                        <img src="{{asset($getRandom->image_big)}}" data-lazy="{{asset($getRandom->image_big)}}" alt="{{$getRandom->title}}" class="img-cover" width="360" height="215"/>
                                    </div>
                                </a>
                            </div>
                            <h3 class="title title-random-slider">
                                <a href="{{$getRandom->title_slug}}">
                                    {{$getRandom->title}}         </a>
                            </h3>
                            <p class="post-meta">
                                <a href="{{url('/')}}">24x7liveindia</a>
                                <span>{{ date('M d, Y', strtotime($getRandom->created_at)) }}</span>
                                <span><i class="icon-comment"></i>0</span>
                                <span class="m-r-0"><i class="icon-eye"></i>3</span>
                            </p>
                            <p class="description">
                                {{ \Illuminate\Support\Str::limit($getRandom->summary, 30, $end='...') }}
                            </p>
                        </div>
                        <?php

                        }
                        }
                        ?>
                        <!--Post row item-->
                    </div>
                    <div id="random-slider-nav" class="slider-nav random-slider-nav">
                        <button class="prev"><i class="icon-arrow-left"></i></button>
                        <button class="next"><i class="icon-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Our Picks-->
        <!--Widget: Recommended Posts-->
        <div class="sidebar-widget">
            <div class="widget-head">
                <h4 class="title">Recommended Posts</h4>
            </div>
            <div class="widget-body">
                <ul class="recommended-posts">
                    <!--Print Picked Posts-->
                    <?php $count = 0;
                    $recommended_posts = get_recommended_posts();
                    if (!empty($recommended_posts)){
                    foreach ($recommended_posts as $post){
                    if ($count == 0){ ?>

                    <li class="recommended-posts-first">
                        <div class="post-item-image">
                            <a href="{{$post->title_slug}}">
                                <img src="{{asset('assets')}}/web/assets/img/img_bg_md.png"
                                     data-src="https://24x7liveindia.com/uploads/images/2023/01/image_380x226_63cf46f162022.jpg"
                                     alt="{{$post->title}}" class="lazyload img-responsive img-post" width="1" height="1"/>
                            </a>
                        </div>
                        <div class="caption">
                            <a href="{{$post->getCategory->name_slug}}">
                                <span class="category-label" style="background-color: #de0f02">{{$post->getCategory->name}}</span>
                            </a>
                            <h3 class="title">
                                <a href="{{$post->title_slug}}">
                                    {{$post->title}}
                                </a>
                            </h3>
                            <p class="small-post-meta">
                                <a href="{{url('/')}}">24x7liveindia</a>
                                <span>{{ date('M d, Y', strtotime($post->created_at)) }}</span>
                                <span><i class="icon-comment"></i>0</span>
                                <span class="m-r-0"><i class="icon-eye"></i>3</span>
                            </p>
                        </div>
                    </li>
                    <?php
                    }
                    }
                    } else{
                    if (!empty($recommended_posts)){
                    foreach ($recommended_posts as $post){
                    if ($count == 0){
                        ?>
                    <li>
                        <div class="post-item-small">
                            <div class="left">
                                <a href="{{$post->title_slug}}">
                                    <img src="{{asset($post->image_big)}}" data-src="{{asset($post->image_big)}}"
                                         alt="{{$post->title}}" class="lazyload img-responsive img-post" width="1" height="1"/>
                                </a>
                            </div>
                            <div class="right">
                                <h3 class="title">
                                    <a href="{{$post->title_slug}}">
                                        {{$post->title}}
                                    </a>
                                </h3>
                                <p class="small-post-meta">
                                    <a href="{{url('/')}}">24x7liveindia</a>
                                    <span>{{ date('M d, Y', strtotime($getRandom->created_at)) }}</span>
                                    <span><i class="icon-comment"></i>0</span>
                                    <span class="m-r-0"><i class="icon-eye"></i>3</span>
                                </p>
                            </div>
                        </div>
                    </li>
                    <?php
                    }
                    }
                    }
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <!--Include Widget Popular Posts-->
        <!--Widget: Popular Posts-->
        <div class="sidebar-widget widget-popular-posts">
            <div class="widget-head">
                <h4 class="title">Popular Posts</h4>
            </div>
            <div class="widget-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a class="btn-nav-tab" data-toggle="tab" data-date-type="week" data-lang-id="1">This Week</a></li>
                    <li><a class="btn-nav-tab" data-toggle="tab" data-date-type="month" data-lang-id="1">This Month</a></li>
                    <li><a class="btn-nav-tab" data-toggle="tab" data-date-type="year" data-lang-id="1">All Time</a></li>
                </ul>
                <div class="tab-content">
                    <div id="tab_popular_posts_response" class="tab-pane fade in active">
                        <ul class="popular-posts">
                    <?php $popular_posts = get_popular_posts('week', 1);
                    foreach ($popular_posts as $popular_postss){
                    ?>
                            <li>
                                <!--Post item small-->
                                <div class="post-item-small">
                                    <div class="left">
                                        <a href="{{$popular_postss->title_slug}}">
                                            <img src="" data-src="" alt="{{$popular_postss->title}}" class="lazyload img-responsive img-post" width="1" height="1"/>
                                        </a>
                                    </div>
                                    <div class="right">
                                        <h3 class="title">
                                            <a href="{{$popular_postss->title_slug}}">
                                                {{$popular_postss->title}}        </a>
                                        </h3>
                                        <p class="small-post-meta">
                                            <a href="/">24x7liveindia</a>
                                            <span>{{date('M d, Y', strtotime($popular_postss->created_at))}}</span>
                                            <span><i class="icon-comment"></i>0</span>
                                            <span class="m-r-0"><i class="icon-eye"></i>{{$popular_postss->pageiews}}</span>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <?php }?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Include banner-->

<?php
$showAds = get_ad_codes('sidebar_bottom');
?>
@include('inc.web.ad', ['ad_space' => 'sidebar_bottom'])


{{--<div class="col-sm-12 col-xs-12 bn-lg-sidebar ">--}}
{{--    <div class="row">--}}
{{--        <script async src="../pagead2.googlesyndication.com/pagead/js/f43c5.txt?client=ca-pub-5717057742090128"--}}
{{--                crossorigin="anonymous"></script>--}}
{{--        <!-- sidebar square -->--}}
{{--        <ins class="adsbygoogle"--}}
{{--             style="display:block"--}}
{{--             data-ad-client="ca-pub-5717057742090128"--}}
{{--             data-ad-slot="8794774843"--}}
{{--             data-ad-format="auto"--}}
{{--             data-full-width-responsive="true"></ins>--}}
{{--        <script>--}}
{{--            (adsbygoogle = window.adsbygoogle || []).push({});--}}
{{--        </script>--}}
{{--        <script async src="../pagead2.googlesyndication.com/pagead/js/f43c5.txt?client=ca-pub-5717057742090128"--}}
{{--                crossorigin="anonymous"></script>--}}
{{--        <!-- single sidebar -->--}}
{{--        <ins class="adsbygoogle"--}}
{{--             style="display:inline-block;width:200px;height:1050px"--}}
{{--             data-ad-client="ca-pub-5717057742090128"--}}
{{--             data-ad-slot="9557192178"></ins>--}}
{{--        <script>--}}
{{--            (adsbygoogle = window.adsbygoogle || []).push({});--}}
{{--        </script>                    </div>--}}
{{--</div>--}}
{{--<section class="col-sm-12 col-xs-12 bn-sm ">--}}
{{--    <div class="row">--}}
{{--        <a href="#"><img src="../sbnews.24x7liveindia.com/uploads/blocks/block_62061c116d7061.png" alt=""></a>                </div>--}}
{{--</section>--}}
