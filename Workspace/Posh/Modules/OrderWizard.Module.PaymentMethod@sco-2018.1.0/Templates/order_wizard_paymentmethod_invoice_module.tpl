<div class="order-wizard-paymentmethod-invoice-module">
	<div class="order-wizard-paymentmethod-invoice-module-row">
		<div class="order-wizard-paymentmethod-invoice-module-terms">
			<p class="order-wizard-paymentmethod-invoice-module-terms-label">
				{{translate 'Terms'}}
			</p>
			<p class="order-wizard-paymentmethod-invoice-module-terms-value">
				{{termsName}}
			</p>
		</div>
		<div class="order-wizard-paymentmethod-invoice-module-balance">
			<p class="order-wizard-paymentmethod-invoice-module-balance-label">
				{{translate 'Available Balance'}}
			</p>
			<p class="order-wizard-paymentmethod-invoice-module-balance-value">
				{{balanceAvailable}}
			</p>
		</div>
	</div>

	{{#if showTerms}}
	<p class="order-wizard-paymentmethod-invoice-module-conditions">
		{{translate 'I agree to pay with my current Invoice <a data-toggle="show-terms" href="#">Terms & Conditions</a>'}}
	</p>
	{{/if}}
</div>



{{!----
Use the following context variables when customizing this template:

termsName (String)
showTerms (Boolean)
balanceAvailable (String)

----}}

