
<a class="header-mini-cart-menu-cart-link {{#if showLines}}header-mini-cart-menu-cart-link-enabled{{/if}}" data-type="mini-cart" title="{{translate 'Cart'}}" data-touchpoint="{{cartTouchPoint}}" data-hashtag="#cart" href="#">
	
<div class="header-minicart-new">
	
	<span>

	<i class="header-mini-cart-menu-cart-icon">
		<svg xmlns="http://www.w3.org/2000/svg" width="22.793" height="22.793" viewBox="0 0 22.793 22.793">
  			<g id="Group_148" data-name="Group 148" transform="translate(1 1)">
    			<path id="Path_869" data-name="Path 869" d="M19.559,22.119A1.559,1.559,0,1,0,18,20.559,1.559,1.559,0,0,0,19.559,22.119Z" transform="translate(-1.366 -1.326)"/>
    			<path id="Path_869_-_Outline" data-name="Path 869 - Outline" d="M19.559,23.119a2.559,2.559,0,1,1,2.559-2.559A2.562,2.562,0,0,1,19.559,23.119Zm0-3.119a.559.559,0,1,0,.559.559A.56.56,0,0,0,19.559,20Z" transform="translate(-1.366 -1.326)"/>
    			<path id="Path_870" data-name="Path 870" d="M9.559,22.119A1.559,1.559,0,1,0,8,20.559,1.559,1.559,0,0,0,9.559,22.119Z" transform="translate(-1.762 -1.326)"/>
    			<path id="Path_870_-_Outline" data-name="Path 870 - Outline" d="M9.559,23.119a2.559,2.559,0,1,1,2.559-2.559A2.562,2.562,0,0,1,9.559,23.119Zm0-3.119a.559.559,0,1,0,.559.559A.56.56,0,0,0,9.559,20Z" transform="translate(-1.762 -1.326)"/>
    			<path id="Path_871" data-name="Path 871" d="M20.714,16.515H7.2a1,1,0,0,1-.984-.821L4.143,4.3A2.05,2.05,0,0,0,2,3,1,1,0,0,1,2,1,4.133,4.133,0,0,1,5.78,3.079H22.793a1,1,0,0,1,.984,1.179L21.7,15.694A1,1,0,0,1,20.714,16.515Zm-12.681-2H19.879l1.716-9.436H6.317Z" transform="translate(-2 -2)"/>
    			<path id="Path_872" data-name="Path 872" d="M20.174,20.159H5.339a4.419,4.419,0,0,1-2.718-.767,2.946,2.946,0,0,1,0-4.625A4.419,4.419,0,0,1,5.339,14H20.694a1,1,0,1,1,0,2H5.339c-1.22,0-1.839.363-1.839,1.079s.619,1.079,1.839,1.079H20.174a1,1,0,1,1,0,2Z" transform="translate(-1.98 -1.485)"/>
  			</g>
		</svg>
	</i>
	{{!-- <div class="header-mini-cart-side-content"> --}}
		

	<span class="header-mini-cart-menu-cart-legend">
		{{#if isLoading}}
		<span class="header-mini-cart-summary-cart-ellipsis"></span>
		{{else}}
				{{translate '$(0)' itemsInCart}}
		{{/if}}
	</span>
	</span>

	<span class="header-minicart-text-content-heading">
			<span>{{translate 'My Cart'}}</span>
			<span>{{formatCurrency priceCount}}</span>
	</span>
	
		

</div>

</a>

<div class="header-mini-cart">
	 {{#if showLines}} 
	 	<div data-view="Header.MiniCartItemCell" class="header-mini-cart-container"></div>
		<div class="header-mini-cart-subtotal">
			<div class="header-mini-cart-subtotal-items">
				{{#if showPluraLabel}}
					{{translate '$(0) items' itemsInCart}}
				{{else}}
					{{translate '1 item'}}
				{{/if}}
			</div>

			{{#if isPriceEnabled}}
			<div class="header-mini-cart-subtotal-amount">
				{{translate 'SUBTOTAL: $(0)' subtotalFormatted}}
			</div>
			{{/if}}
			<div data-view="MiniCart.Subtotal"></div>
		</div>

		<div class="header-mini-cart-buttons" data-view="MiniCart.Actions">
			<div class="header-mini-cart-buttons-left">
				<a href="#" class="header-mini-cart-button-view-cart" data-touchpoint="{{cartTouchPoint}}" data-hashtag="#cart" >
					{{translate 'View Cart'}}
				</a>
			</div>
			<div class="header-mini-cart-buttons-right">
				<a href="#" class="header-mini-cart-button-checkout" data-touchpoint="checkout" data-hashtag="#" >
					{{translate 'Checkout'}}
				</a>
			</div>
		</div>

		{{else}} 
		<div class="header-mini-cart-empty">
			<a href="#" data-touchpoint="{{cartTouchPoint}}" data-hashtag="#cart">
				{{#if isLoading}}
					{{translate 'Your cart is loading'}}
				{{else}}
					{{translate 'Your cart is empty'}}
				{{/if}}
			</a>
		</div>
	{{/if}} 
</div>





{{!----
Use the following context variables when customizing this template: 
	
	model (Object)
	model.addresses (Array)
	model.addresses.0 (Object)
	model.addresses.0.zip (String)
	model.addresses.0.country (String)
	model.addresses.0.company (undefined)
	model.addresses.0.internalid (String)
	model.shipmethods (Array)
	model.lines (Array)
	model.paymentmethods (Array)
	model.internalid (String)
	model.confirmation (Object)
	model.confirmation.addresses (Array)
	model.confirmation.shipmethods (Array)
	model.confirmation.lines (Array)
	model.confirmation.paymentmethods (Array)
	model.multishipmethods (Array)
	model.lines_sort (Array)
	model.latest_addition (undefined)
	model.promocodes (Array)
	model.ismultishipto (Boolean)
	model.shipmethod (undefined)
	model.billaddress (undefined)
	model.shipaddress (String)
	model.isPaypalComplete (Boolean)
	model.touchpoints (Object)
	model.touchpoints.logout (String)
	model.touchpoints.customercenter (String)
	model.touchpoints.serversync (String)
	model.touchpoints.viewcart (String)
	model.touchpoints.login (String)
	model.touchpoints.welcome (String)
	model.touchpoints.checkout (String)
	model.touchpoints.continueshopping (String)
	model.touchpoints.home (String)
	model.touchpoints.register (String)
	model.touchpoints.storelocator (String)
	model.agreetermcondition (Boolean)
	model.summary (Object)
	model.summary.discounttotal_formatted (String)
	model.summary.taxonshipping_formatted (String)
	model.summary.taxondiscount_formatted (String)
	model.summary.itemcount (Number)
	model.summary.taxonhandling_formatted (String)
	model.summary.total (Number)
	model.summary.tax2total (Number)
	model.summary.discountedsubtotal (Number)
	model.summary.taxtotal (Number)
	model.summary.discounttotal (Number)
	model.summary.discountedsubtotal_formatted (String)
	model.summary.taxondiscount (Number)
	model.summary.handlingcost_formatted (String)
	model.summary.taxonshipping (Number)
	model.summary.taxtotal_formatted (String)
	model.summary.totalcombinedtaxes_formatted (String)
	model.summary.handlingcost (Number)
	model.summary.totalcombinedtaxes (Number)
	model.summary.giftcertapplied_formatted (String)
	model.summary.shippingcost_formatted (String)
	model.summary.discountrate (Number)
	model.summary.taxonhandling (Number)
	model.summary.tax2total_formatted (String)
	model.summary.discountrate_formatted (String)
	model.summary.estimatedshipping (Number)
	model.summary.subtotal (Number)
	model.summary.shippingcost (Number)
	model.summary.estimatedshipping_formatted (String)
	model.summary.total_formatted (String)
	model.summary.giftcertapplied (Number)
	model.summary.subtotal_formatted (String)
	model.options (Object)
	itemsInCart (Number)
	showPluraLabel (Boolean)
	showLines (Boolean)
	isLoading (Boolean)
	subtotalFormatted (String)
	cartTouchPoint (String)
	isPriceEnabled (Boolean)

----}}

