{{#unless isStandalone}}
	{{#if showActions}}
		<a
			class="order-history-item-actions-reorder"
			data-action="add-to-cart"
			data-line-id="{{lineId}}"
			data-item-id="{{itemId}}"
			data-item-quantity="{{line.quantity}}"
			data-partial-quantity="{{line.partial_quantity}}"
			data-parent-id="{{itemParentId}}"
			data-item-options="{{lineFormatOptions}}">
			{{translate 'Reorder'}}
		</a>
	{{/if}}
{{/unless}}

{{!----
Use the following context variables when customizing this template:

line (Object)
line.item (Object)
line.item.internalid (Number)
line.item.type (String)
line.quantity (Number)
line.internalid (String)
line.options (Array)
line.options.0 (Object)
line.options.0.cartOptionId (String)
line.options.0.itemOptionId (String)
line.options.0.label (String)
line.options.0.type (String)
line.options.0.value (Object)
line.options.0.value.internalid (String)
line.shipaddress (undefined)
line.shipmethod (undefined)
line.location (String)
line.fulfillmentChoice (String)
lineId (String)
showActions (Boolean)
itemURL (String)
itemSKU (String)
itemId (Number)
isQuantityGreaterThan1 (Boolean)

----}}

