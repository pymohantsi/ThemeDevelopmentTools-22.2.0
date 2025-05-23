{{!-- Edited for Posh Theme --}}

{{#if hasCategories}}
	<div class="facets-faceted-navigation-facet-group">
		<div class="facets-faceted-navigation-title">
			{{translate 'Shop: $(0)' categoryItemId}}
		</div>
		<div class="facets-faceted-navigation-category-wrapper">
			<div data-type="facet" data-facet-id="category"></div>
		</div>
	</div>
{{/if}}

{{#if hasFacetsOrAppliedFacets}}
    <div class="facets-faceted-navigation-title-container">
        <h3 class="facets-faceted-navigation-title">{{translate 'Filter'}}</h3>

        <h4 class="facets-faceted-navigation-results">
            {{#if keywords}}
                {{#if isTotalProductsOne}}
                    {{translate '1 Result for <span class="facets-faceted-navigation-title-alt">$(0)</span>' keywords}}
                {{else}}
                    {{translate '$(0) Results for <span class="facets-faceted-navigation-title-alt">$(1)</span>' totalProducts keywords}}
                {{/if}}
            {{else}}
                {{#if isTotalProductsOne}}
                    {{translate '1 Product'}}
                {{else}}
                    {{translate '$(0) Products' totalProducts}}
                {{/if}}
            {{/if}}
        </h4>

        {{#if hasAppliedFacets}}
            <a href="{{clearAllFacetsLink}}" class="facets-faceted-navigation-facets-clear">
                <span>{{translate 'Clear All'}}</span>
                {{!-- <i class="facets-faceted-navigation-facets-clear-icon"></i> --}}
            </a>
        {{/if}}
    </div>

	<div data-view="Facets.FacetedNavigationItems"></div>
{{/if}}



{{!----
Use the following context variables when customizing this template:

	totalProducts (Number)
	isTotalProductsOne (Boolean)
	keywords (undefined)
	clearAllFacetsLink (String)
	hasCategories (Boolean)
	hasItems (Number)
	hasFacets (Number)
	hasCategoriesAndFacets (Boolean)
	appliedFacets (Array)
	hasAppliedFacets (Boolean)
	hasFacetsOrAppliedFacets (Number)

----}}

