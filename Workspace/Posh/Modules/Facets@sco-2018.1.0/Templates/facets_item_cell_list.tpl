{{!-- Edited for Posh Theme --}}

<div class="facets-item-cell-list" itemprop="itemListElement" data-item-id="{{itemId}}" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">
	<div class="facets-item-cell-list-left">
		<div class="facets-item-cell-list-image-wrapper">
			<div data-view="ItemThumbnail"></div>
			{{#if itemIsNavigable}}
				<a class="facets-item-cell-list-anchor" href='{{url}}'>
					<img class="facets-item-cell-list-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image">
				</a>
			{{else}}
				<img class="facets-item-cell-list-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image">
			{{/if}}
			{{#if isEnvironmentBrowser}}
				<div class="facets-item-cell-list-quick-view-wrapper">
					<a href="{{url}}" class="facets-item-cell-list-quick-view-link" data-toggle="show-in-modal">
						<i class="facets-item-cell-list-quick-view-icon"></i>
						{{translate 'Quick View'}}
					</a>
				</div>
			{{/if}}
		</div>
	</div>
	<div class="facets-item-cell-list-right">
		<h2 class="facets-item-cell-list-title">
			{{#if itemIsNavigable}}
				<a class="facets-item-cell-list-name" href='{{url}}'>
					<span itemprop="name">
						{{name}}
					</span>
				</a>
			{{else}}
				<span itemprop="name">
					{{name}}
				</span>
			{{/if}}
		</h2>

		{{#if showPrice}}
		<div class="facets-item-cell-list-price">
			<div data-view="ItemViews.Price"></div>
		</div>
		{{/if}}

		<div data-view="Cart.QuickAddToCart"></div>

		{{#if showRating}}
		<div class="facets-item-cell-list-rating" itemprop="aggregateRating" data-view="GlobalViews.StarRating">
		</div>
		{{/if}}

		{{#if showOptions}}
		<div data-view="ItemDetails.Options"></div>
		{{/if}}

		{{#if showStock}}
		<div class="facets-item-cell-list-stock">
			<div data-view="ItemViews.Stock" class="facets-item-cell-list-stock-message"></div>
		</div>
		{{/if}}

		{{#if showStockDescription}}
		<div data-view="StockDescription"></div>
		{{/if}}
	</div>
</div>




{{!----
Use the following context variables when customizing this template: 
	
	itemId (Number)
	name (String)
	url (String)
	sku (String)
	isEnvironmentBrowser (Boolean)
	thumbnail (Object)
	thumbnail.url (String)
	thumbnail.altimagetext (String)
	itemIsNavigable (Boolean)
	showRating (Boolean)
	rating (Number)

----}}

