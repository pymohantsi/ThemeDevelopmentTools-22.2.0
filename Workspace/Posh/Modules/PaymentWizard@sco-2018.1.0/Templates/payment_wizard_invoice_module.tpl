<div data-view="ListHeader.View"></div>

<div class="payment-wizard-invoice-module-payment-list">
	{{#if isInvoiceLengthGreaterThan0}}
	<div class="payment-wizard-invoice-module-list-subheader">
		<table class="payment-wizard-invoice-module-table">
			<thead class="payment-wizard-invoice-module-table-header">
			<tr>
				<th class="payment-wizard-invoice-module-table-invoice-number">
					<span>{{translate 'Invoice No.'}}</span>
				</th>
				<th class="payment-wizard-invoice-module-table-invoice-due-date">
					<span>{{translate 'Due date'}}</span>
				</th>
				<th class="payment-wizard-invoice-module-table-invoice-amount">
					<span>{{translate 'Amount Due'}}</span>
				</th>
				<th class="payment-wizard-invoice-module-table-invoice-action">
					&nbsp;
				</th>
			</tr>
			</thead>
			<tbody class="payment-wizard-invoice-module-table-body" data-view="Invoices.Collection"></tbody>
		</table>
	</div>
	{{else}}
	<p class="payment-wizard-invoice-module-list-empty">
	<h5>{{translate 'No invoices selected'}}</h5>
	</p>
	{{/if}}
</div>




{{!----
Use the following context variables when customizing this template:

isInvoiceLengthGreaterThan0 (Boolean)

----}}

