{{!-- Edited for Posh Theme --}}

<section class="facets-browse-category-heading-list-header 12345">
	<div class="facets-browse-category-heading-main-description">
		<h1 class="facets-header-123456">{{pageheading}}</h1>
		{{#if showDescription}}	
			<p>{{{description}}}</p>
		{{/if}}
	</div>
	{{#if hasBanner}}
		<div class="facets-browse-category-heading-main-image">
			<img src="{{resizeImage banner 'categorybanner'}}" alt="{{pageheading}}" />
		</div>
	{{/if}}
    <hr class="facets-browse-category-heading-divider-mobile" />
</section>




{{!----
Use the following context variables when customizing this template: 
	
	name (String)
	banner (String)
	description (String)
	pageheading (String)
	hasBanner (Boolean)
	showDescription (Boolean)

----}}

