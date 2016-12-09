 <!-- Clients Aside -->
    

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">{{clippings.form_title}}</h2>
                    <h3 class="section-subheading text-muted">{{clippings.form_text}}</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" method="post" action="/thank-you/" id="contactForm" data-toggle="validator" role="form">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="first_name" placeholder="Your First Name *" id="first_name" required>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="tel" class="form-control" name="last_name" placeholder="Your Last Name *" id="last_name" required>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                              <div class="col-md-4">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" placeholder="Your Email *" id="email" required>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            {{if {clippings.form_webhook} }}
                            <input type="hidden" name="_zesty_webhook" value="{{clippings.form_webhook}}" />
							{{end-if}}
							(** zesty hidden inputs **)
							<input name="zlf" value="1" type="hidden" />
							<input name="zcf" value="1" type="hidden" />

                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">{{clippings.form_button_text}}</button>

                            </div>
                        </div>
                    </form>
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
