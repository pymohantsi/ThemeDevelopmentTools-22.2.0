<div class="global-views-star-rating" data-validation="control-group">
	<div class="global-views-star-rating-container">
		{{#if showLabelRating}}
			<div class="global-views-star-rating-content-rating">
				<span class="global-views-star-rating-label-visible">
					{{translate 'Rating'}}
				</span>
			</div>
		{{/if}}

		{{#if showLabel}}
			<div class="global-views-star-rating-content-label">
				<span class="global-views-star-rating-label" for="{{name}}">
					{{label}}
				</span>
			</div>
		{{/if}}

		<div id="{{name}}" class="global-views-star-rating-area" data-toggle='rater' data-validation="control" data-name="{{name}}" data-max="{{maxValue}}" data-value="{{value}}">

			{{#if isWritable}}
				<div class="global-views-star-rating-area-writable{{className}}">
					{{#each buttons}}
						<button type="button" data-action="rate" name="{{name}}" value="{{@indexPlusOne}}"></button>
					{{/each}}
				</div>
			{{/if}}

			<div class="global-views-star-rating-area-empty">
				<div class="global-views-star-rating-area-empty-content">
					{{#each buttons}}
						<i class="global-views-star-rating-empty{{className}}"></i>
					{{/each}}
				</div>
			</div>

			<div class="global-views-star-rating-area-fill" data-toggle='ratting-component-fill' style="width: {{filledBy}}%">
				<div class="global-views-star-rating-area-filled">
					{{#each buttons}}
						<i class="global-views-star-rating-filled{{className}}"></i>
					{{/each}}
				</div>
			</div>
		</div>

		{{#if showValue}}
			<span class="global-views-star-rating-value">
				{{value}}
			</span>
		{{else}}

		{{/if}}

		{{#if showRatingCount}}
			<span class="global-views-star-rating-review-total">

				{{#if ratingCountGreaterThan0}}
					<span class="global-views-star-rating-review-total-number">{{ratingCount}}</span>
					{{#if hasOneReview}}
						<span class="global-views-star-rating-review-total-review">{{ translate ' Review'}}</span>
					{{else}}
						<span class="global-views-star-rating-review-total-review">{{ translate ' Reviews'}}</span>
					{{/if}}
				{{else}}
					<span class="global-views-star-rating-review-total-empty-number">({{ratingCount}})</span>
					<span class="global-views-star-rating-review-total-no-review">{{ translate ' No Reviews yet'}}</span>
				{{/if}}
			</span>
		{{/if}}
	</div>
</div>



{{!----
Use the following context variables when customizing this template:

	showLabelRating (Boolean)
	showLabel (Boolean)
	label (String)
	name (String)
	maxValue (Number)
	value (Number)
	fillValue (Number)
	filledBy (Number)
	isWritable (Boolean)
	buttons (Array)
	showValue (Boolean)
	showRatingCount (Boolean)
	ratingCount (Number)
	className (String)
	ratingCountGreaterThan0 (Boolean)
	hasOneReview (Boolean)

----}}

