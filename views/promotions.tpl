<div id="promotions">
	<div class="row main-image">
		<img src="{{ page.main_image.getImage() }}" alt="kitten pic">
	</div>
	<div class="container">
		<div class="row body-content">
			{{ page.body_text }}
		</div>
		<div class=" row promo-offers">
			{{ each promo as deal sort by deal.sort_order }}
			<div class="row promo-detail">
				<div class="col-md-4">
					<span class="pull-right"><img src="{{ deal.promo_image.getImage() }}"></span>
				</div>
				<div class="col-md-8">
					<div>{{ deal.promo_title }}</div>
					<div>{{ deal.promo_description }}</div>
					<div>Promo code: {{ deal.promo_code }}</div>
				  <a href"{{ deal.promo_print_coupon }}" target="blank">Click for printable coupon</a>
				</div>
			</div>
			{{ end-each }}
		</div>
	</div>
</div>
