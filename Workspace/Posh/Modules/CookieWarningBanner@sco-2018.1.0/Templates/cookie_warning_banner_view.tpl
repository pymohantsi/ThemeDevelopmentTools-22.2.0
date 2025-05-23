{{#if showBanner}}
	<div class="cookie-warning-banner alert" role="alert">
		<div>
			{{{cookieMessage}}}
			{{#if showLink}}
			 <a href="https://system.netsuite.com{{linkHref}}" data-toggle="show-in-modal" data-page-header="{{linkContent}}">{{linkContent}}</a>
			{{/if}}
		</div>
		{{#if closable}}
			<button class="cookie-warning-banner-view-close-button" data-action="close-message" type="button" data-dismiss="alert">&times;</button>
		{{/if}}
	</div>
{{/if}}




{{!----
Use the following context variables when customizing this template: 
	
	showBanner (Boolean)
	cookieMessage (String)
	showLink (Boolean)
	linkHref (String)
	linkContent (String)
	closable (Boolean)

----}}

