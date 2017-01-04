<div id="breeder-questions">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-9" >
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					{{ each breeder_q as question sort by question.sort_order }}
					<div class="row">
						<p>{{ question.question }}</p>
						<p>{{ question.answer }}</p>
						<hr>
					</div>
					{{end-each }}
				</div>
				<div class="col-md-3" >
					{{ include sectionlinks }}
					{{ include inner-page-sidebar }}
				</div>
			</div>
		</div>
	</div>
</div>
