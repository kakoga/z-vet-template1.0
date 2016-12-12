 <!-- Clients Aside -->


    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{clippings.site_name}}</h2>
                </div>
                <div class="row">
					        <div class="col-md-6 basic">
						        {{ contact_us.first().body_text }}
					        </div>
					        <div class="col-md-6">
						        {{ contact_us.first().google_map_embed }}
					        </div>
				        </div>
            </div>
            <div class="row">
                <div class="col-lg-12">

                </div>
            </div>
        </div>
    </section>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">

                <span class="copyright">&copy; {{site.date(Y)}} {{clippings.footer_text}}</span>
            </div>
            <div class="col-md-4">
                <ul class="list-inline social-buttons">
                    {{each social_links as social}}
		            <li class="social-{{social.font_awesome_icon}}">
		                <a href="{{social.url}}"><i class="fa fa-{{social.font_awesome_icon}}"></i></a>
		            </li>
		            {{end-each}}
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="list-inline quicklinks">
                    <li><a href="/privacy-policy/">Privacy Policy</a>
                    </li>
                    <li><a href="/terms-of-use/">Terms of Use</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
