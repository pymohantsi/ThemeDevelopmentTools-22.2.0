{{!-- Edited for Posh Theme --}}

<div class="facets-item-cell-grid" data-type="item" data-item-id="{{itemId}}" itemprop="itemListElement" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">

	<div class="facets-item-cell-grid-image-wrapper">
		<div data-view="ItemThumbnail"></div>
		<a class="facets-item-cell-grid-link-image" href="{{url}}">
			<img class="facets-item-cell-grid-image" src="{{resizeImage thumbnail.url 'thumbnail'}}" alt="{{thumbnail.altimagetext}}" itemprop="image"/>
		</a>
		{{#if isEnvironmentBrowser}}
			<div class="facets-item-cell-grid-quick-view-wrapper">
				<a href="{{url}}" class="facets-item-cell-grid-quick-view-link" data-toggle="show-in-modal">
					<i class="facets-item-cell-grid-quick-view-icon"></i>
					{{translate 'Quick View'}}
				</a>
			</div>
		{{/if}}
	</div>

	<div class="facets-item-cell-grid-details">
		<a class="facets-item-cell-grid-title" href="{{url}}">
			<span itemprop="name">{{name}}</span>
		</a>

		{{#if showPrice}}
		<div class="facets-item-cell-grid-price" data-view="ItemViews.Price"></div>
		{{/if}}

		<div data-view="Cart.QuickAddToCart"></div>

		{{#if showOptions}}
		<div data-view="ItemDetails.Options"></div>
		{{/if}}

		{{#if showStock}}
		<div class="facets-item-cell-grid-stock">
			<div data-view="ItemViews.Stock" class="facets-item-cell-grid-stock-message"></div>
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

