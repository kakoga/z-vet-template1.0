<div id="office-tour">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="row body-content">
			{{ page.body_text }}
			{{ if {page.youtube_id} }}
			<iframe id="ytplayer" type="text/html" width="100%" src="https://www.youtube.com/embed/{{ page.youtube_id }}?rel=0" frameborder="0"></iframe>
			{{ end-if }}
		</div>
	</div>
</div>
