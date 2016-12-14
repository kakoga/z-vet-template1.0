<div id="about">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-9" >
					<h1>{{ page.page_title }}</h1>
					{{ page.body_text }}
					<!-- {{ if page.path_part = {/about-us/careers/} }}
					{{ each career_opportunities as job sort by job.sort_order}}
					<p>{{ job.job_title }}</p>
					<p>{{ job.job_description }}</p>
					<p>{{ job.job_location }}</p>
					{{ end-if }} -->
				</div>
				<div class="col-md-3" >
					{{ include inner-page-sidebar }}
				</div>
			</div>
		</div>
	</div>
</div>
