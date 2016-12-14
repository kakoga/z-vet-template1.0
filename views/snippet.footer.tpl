<!-- Clients Aside -->


<!-- Contact Section -->
<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-md-3 basic text-center">
				<p>{{ contact_us.first().address_one }}</p>
				<p>{{ contact_us.first().address_two }}</p>
				<p>{{ contact_us.first().address_three }}</p>
				<br>
				<p>{{ contact_us.first().general_info_one }}</p>
				<p>{{ contact_us.first().phone_number_one}}</p>
				<br>
				<p>{{ contact_us.first().general_info_two }}<p>
				<p>{{ contact_us.first().phone_number_two }}<p>
			</div>
			<div class="col-md-3 basic">
				{{ each hours_of_operation as hours sort by hours.sort_order}}
				<p>{{ hours.day_of_week}} {{hours.open}}am - {{ hours.close}}pm</p>
				{{ end-each }}
			</div>
			<div class="col-md-6 text-center">
				{{ contact_us.first().google_map_embed }}
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
