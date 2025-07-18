<div id="layout" class="myaccount-layout">
	<header id="site-header" class="myaccount-layout-header header-custom-class" data-view="Header"></header>

	<div id="main-container" class="myaccount-layout-container">

		<div class="myaccount-layout-breadcrumb" data-view="Global.Breadcrumb" data-type="breadcrumb"></div>
		<div class="myaccount-layout-notifications">
			<div data-view="Notifications"></div>
		</div>
		<div class="myaccount-layout-error-placeholder"></div>

		<h1 class="myaccount-layout-title">{{translate 'My Account'}}</h1>
		<div class="myaccount-layout-row">
			<nav id="side-nav" class="myaccount-layout-side-nav" data-view="MenuTree"></nav>

			<div id="content" class="myaccount-layout-main"></div>
		</div>

		<div id="banner-myaccount-bottom-full" class="myaccount-bottom-banner">
			<div data-cms-area="global_myaccount-bottom-full" data-cms-area-filters="global"></div>
		</div>

	</div>

	<footer id="site-footer" class="myaccount-layout-footer" data-view="Footer"></footer>

</div>



{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}

