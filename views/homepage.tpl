  <!-- Header -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<div class="slick-slider-container" >
    <div id="slick-hero"  >
        {{ each homepage_slides as slide sort by slide.sort_order }}
        {{ if {slide.background_video} }}
        <div class=""  >

            <header  data-vide-bg="mp4: {{ slide.background_video.getMediaURL() }}{{if {slide.background_image} }}, poster: {{slide.background_image.getMediaURL()}}{{ end-if }}" data-vide-options=" loop: true, muted: true, position: 50% 50%">
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">{{slide.title}}</div>
                        <div class="intro-heading">{{slide.second_line}}</div>
                        <a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
                    </div>
                </div>
            </header>
        </div>
        {{ else }}
        <div class=""  >

            <header style="background-image:url('{{slide.background_image.getImage(2500)}}')">
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">{{slide.title}}</div>
                        <div class="intro-heading">{{slide.second_line}}</div>
                        <a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
                    </div>
                </div>
            </header>
        </div>
        {{ end-if }}
        {{ end-each }}
    </div>
</div>
<script type="text/javascript">
        $(document).ready(function(){
            $('#slick-hero').slick({
                autoplay: true,
                arrows: false,
                fade: false,
                infinite: true,
                slidesToShow: 1,
                adaptiveHeight: true,
                speed: 300,
                dots: true,
                autoplaySpeed: 6700,
                pauseOnHover: false,
                pauseOnFocus: false,
            });
        });
    </script>
{{ include script-bg-vid }}
    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{page.title2}}</h2>
                    <h4>
                        <a class="hashtag-popopen" href="https://twitter.com/home?status=%23{{clippings.global_hashtag.substr(1,100)}} ">
                            {{clippings.global_hashtag}}

                        </a>
                        {{ page.body_text_2 }}
                    </h4>
                    <br>
                </div>
            </div>
            <div class="row">


            </div>
            <div class="row">
                <div class="col-lg-12">

                </div>
            </div>
        </div>
    </section>

    <!-- Timeline Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{page.title3}}</h2>
                    <h3 class="section-subheading text-muted">{{page.sub_title3}}</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        {{each home_page_about_timeline as timeline}}
                        {{if {index} % 2 = 0}}
                        <li class="timeline-inverted">
                        {{else}}
                        <li>
                        {{end-if}}
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="{{timeline.image.getImage(400,400,crop)}}" alt="{{timeline.title}} Image">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>{{timeline.timeframe}}</h4>
                                    <h4 class="subheading">{{timeline.title}}</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">{{timeline.short_blurb}}</p>
                                </div>
                            </div>
                        </li>
                        {{end-each}}

                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>{{page.button_text_3}}</h4>
                                <ul class="list-inline social-buttons">
                                    <li>
                                        <!-- <a class="hashtag-popopen" href="https://www.facebook.com/sharer/sharer.php?">
                                            <i class="fa fa-facebook"></i>
                                        </a> -->
                                    </li>
                                    <li>
                                        <!-- <a class="hashtag-popopen" href="https://twitter.com/home?status=%23{{clippings.global_hashtag.substr(1,100)}} ">
                                            <i class="fa fa-twitter"></i>
                                        </a> -->
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{page.title4}}</h2>
                    <h3 class="section-subheading text-muted">{{page.sub_title4}}</h3>
                </div>
            </div>
               <div class="row">
                {{each people as person limit 3}}
                <div class="col-sm-4">
                    <div class="team-member">
                        <a href="{{person.getUrl()}}">
                        <img src="{{person.image.getImage(500,500,crop)}}" class="img-responsive img-circle" alt="{{person.name}} image">
                        </a>
                        <h4><a href="{{person.getUrl()}}">{{person.name}}</a></h4>
                        <p class="text-muted">{{person.title}}</p>
                        (**<ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                        **)
                    </div>
                </div>
                {{end-each}}
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="{{influencers_page.first().getUrl()}}" class="page-scroll btn btn-xl">{{page.button_text_4}}</a>
                </div>
            </div>
        </div>
    </section>
