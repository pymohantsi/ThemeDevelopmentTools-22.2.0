<form class="newsletter-suscription-form" data-action="newsletter-subscribe" novalidate>

	<div data-validation="control-group">

		<h4 class="newsletter-subscription-form-label" for="login-email">{{translate 'Email Sign Up'}}</h4>

		<div class="newsletter-subscription-form-container {{#if showErrorMessage}}error{{/if}}" data-validation="control">
			<input
				name="email"
				id="email"
				type="email"
				class="newsletter-subscription-form-input"
				placeholder="{{translate 'username@domain.com'}}"
			>
			
			<button type="submit" class="newsletter-subscription-form-button">
				{{translate 'Subscribe'}}
			</button>

			<div class="newsletter-alert-placeholder" data-type="alert-placeholder" >
				{{#if isFeedback}}
				<div data-view="GlobalMessageFeedback"></div>
				{{/if}}
			</div>
		</div>
	</div>
</form>



{{!----
Use the following context variables when customizing this template:

	isFeedback (Boolean)
	model (Object)

----}}

