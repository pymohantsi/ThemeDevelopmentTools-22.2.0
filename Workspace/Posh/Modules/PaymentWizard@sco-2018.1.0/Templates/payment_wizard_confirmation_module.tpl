<div class="payment-wizard-confirmation-module alert fade in">
	<h2 class="payment-wizard-confirmation-module-title">{{translate 'Thank you!'}}</h2>
	{{#if showLinkConfirmation}}
		<p class="payment-wizard-confirmation-module-body">
			<a href="/transactionhistory/customerpayment/{{confirmationId}}" data-touchpoint="customercenter" data-hashtag="#transactionhistory/customerpayment/{{confirmationId}}" data-action="update-layout">{{translate 'Payment #$(0)' tranId}}</a>
		</p>
	{{else}}
		<p class="payment-wizard-confirmation-module-body">{{translate 'A Deposit/Credit Memo Application was generated.'}}</p>
		<p class="payment-wizard-confirmation-module-body">{{translate 'You can see the details in <a href="/transactionhistory" data-action="update-layout">Transaction History</a> page.'}}</p>
	{{/if}}
	<p class="payment-wizard-confirmation-module-body">{{translate 'You will receive an email with your payment confirmation.'}}</p>

	{{#if isConfirmationCreated}}
		<a href="{{{dwonloadPDFURL}}}" target="_blank" class="payment-wizard-confirmation-module-download" >
			{{translate 'Download as PDF'}}
		</a>
	{{/if}}

	<a href="/invoices" class="payment-wizard-confirmation-module-payment" data-action="update-layout" >{{translate 'Back to Invoices'}} </a>
</div>




{{!----
Use the following context variables when customizing this template:

tranId (String)
isConfirmationCreated (Boolean)
showLinkConfirmation (Boolean)
confirmationId (String)
isInvoiceLengthGreaterThan0 (Boolean)
dwonloadPDFURL (String)

----}}

