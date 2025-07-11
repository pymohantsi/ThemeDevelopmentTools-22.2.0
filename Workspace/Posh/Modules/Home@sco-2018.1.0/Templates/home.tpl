<div class="home">
	<div data-cms-area="home_cms_area_1" data-cms-area-filters="path"></div>

	<div class="home-slider-container home-slider-btn-change">
		<div class="home-image-slider">
			<ul data-slider id="home-image-slider-list" class="home-image-slider-list">
				{{#if extraHomeView.isReady}}
				{{#if extraHomeView.showCarousel}}
				{{#each extraHomeView.carousel}}
				<li
					class="{{#if text}}caption-on{{/if}} {{#if title}}caption-on{{/if}} {{#if linktext}}caption-on{{/if}}">
					<div class="home-slide-main-container
										{{#if imageBehaviour}}
											use-image
										{{else}}
											{{#if backgroundCrop}}
													{{backgroundCrop}}
											{{/if}}
										{{/if}}">
						{{#if isAbsoluteUrl}}
						<div class="home-slide-image-container use-image" style="background-image:url('{{image}}');">
							<a{{objectToAtrributes item}} class="home-slide-wrap-link">
								<img src="{{image}}" class="home-slide-image" />
								</a>
						</div>
						{{else}}
						<div class="home-slide-image-container
											{{#if imageBehaviour}}
												use-image
											{{else}}
												{{#if backgroundCrop}}
														{{backgroundCrop}}
												{{/if}}
											{{/if}}" style="background-image:url('{{getThemeAssetsPathWithDefault image 'img/posh-carousel-home-1.jpg'}}');">
							<a{{objectToAtrributes item}} class="home-slide-wrap-link">
								<img src="
															{{#if isAbsoluteUrl}}
																	{{image}}
															{{else}}
																	{{getThemeAssetsPathWithDefault image 'img/posh-carousel-home-1.jpg'}}
															{{/if}}" class="home-slide-image {{#if imageMobile}}hide-small{{/if}}" />
								{{#if imageMobile}}
								<img src="{{imageMobile}}" class="home-slide-image-mobile" />
								{{/if}}
								</a>
						</div>
						{{/if}}

						<div
							class="home-slide-caption-container {{#if isAbsoluteUrl}}carousel-center-box{{/if}} {{#if class}}{{class}}{{else}}carousel-center{{/if}} {{#if text}}caption-display{{/if}} {{#if title}}caption-display{{/if}} {{#if linktext}}caption-display{{/if}}">
							<div class="home-slide-caption {{captionTextAlign}}">
								{{#if title}}<h1 class="home-info-title" style="color:{{captionColor}}">{{title}}</h1>
								{{/if}}
								{{#if text}}<h2 class="home-info-text" style="color:{{captionColor}}">{{{text}}}</h2>
								{{/if}}
								{{#if linktext}}
								<div class="home-slide-caption-button-container">
									<a{{objectToAtrributes item}} class="home-slide-caption-button">{{#if
										text}}{{linktext}}{{else}}{{translate 'Shop now'}}{{/if}}</a>
								</div>
								{{/if}}
							</div>
						</div>
					</div>
				</li>
				{{/each}}
				{{else}}
				{{#each carouselImages}}
				<li>
					<div class="home-slide-main-container
						{{#if imageBehaviour}}
							use-image
						{{else}}
							{{#if backgroundCrop}}
									{{backgroundCrop}}
							{{/if}}
						{{/if}}">
						<div class="home-slide-image-container">
							<img src="{{this}}" alt="" />
						</div>

						<div class="home-slide-caption">
							<h2 class="home-slide-caption-title">SAMPLE HEADLINE</h2>
							<p>Example descriptive text displayed on multiple lines.</p>
							<div class="home-slide-caption-button-container">
								<a href="/search" class="home-slide-caption-button">Shop Now</a>
							</div>
						</div>
					</div>
				</li>
				{{/each}}
				{{/if}}
				{{/if}}
			</ul>
		</div>
	</div>

	<!-- <div class="separator-line"><div class="separator-box"></div></div> -->

	<!-- CMS ZONE -->
	<div data-cms-area="home_cms_area_2" data-cms-area-filters="path"></div>

	<!-- CMS MERCHANDISING ZONE -->
	<div class="home-merchandizing-zone">
		<div class="home-merchandizing-zone-content">
			<div data-cms-area="home_merchandizing_zone" data-cms-area-filters="path"></div>
		</div>
	</div>


	<!-- Promo Area -->
	{{#if extraHomeView.promo}}
	<div class="home-promo">
		<div class="home-promo-image" {{#if extraHomeView.promo.image}}
			style="background-image:url('{{getThemeAssetsPathWithDefault extraHomeView.promo.image 'img/posh-freetextimage.jpg'}}');"
			{{/if}}>{{#if extraHomeView.promo.image}}<img
				src="{{getThemeAssetsPathWithDefault extraHomeView.promo.image 'img/posh-freetextimage.jpg'}}" />{{/if}}
		</div>
		<div class="home-promo-text">
			<div class="home-promo-text-content">
				{{#if extraHomeView.promo.title}}<h1>{{extraHomeView.promo.title}}</h1>{{/if}}
				{{#if extraHomeView.promo.subtitle}}<h2>{{extraHomeView.promo.subtitle}}</h2>{{/if}}
				<div class="separator-line">
					<div class="separator-box"></div>
				</div>
				{{#if extraHomeView.promo.text}}{{{extraHomeView.promo.text}}}{{/if}}
				{{#if extraHomeView.promo.linklocation}}
				<a href="{{extraHomeView.promo.linklocation}}">{{#if
					extraHomeView.promo.linktext}}{{extraHomeView.promo.linktext}}{{else}}{{translate 'Learn
					More'}}{{/if}}</a>
				{{/if}}
			</div>
		</div>
	</div>
	{{/if}}

		<section class="home-top-deals-container">

			<div data-view="Home.TopDeals.Slider"></div> 
		</section>


				{{!-- featured Producrt section --}}
		<section class="featured-Product-custom-container">
			<div data-view="Featured.Product.Custom"></div>
		</section>

	<!-- CMS ZONE -->
	<div data-cms-area="home_cms_area_3" data-cms-area-filters="path"></div>

	<!-- INFOBLOCKS -->
	{{!-- {{#if extraHomeView.showInfoblocks}}
	<div class="home-infoblock-layout">
		{{#each extraHomeView.infoBlocks}}
		<div class="home-infoblock{{#if span}} home-infoblock-span2{{/if}}">
			<a{{objectToAtrributes item}} class="home-infoblock-link">
				<img class="home-infoblock-image" src="{{getThemeAssetsPathWithDefault image}}" alt="{{title}}" />
				{{#if title}}<div class="home-infoblock-text">{{title}}</div>{{/if}}
				</a>
		</div>
		{{/each}}
	</div>
	{{/if}} --}}
	<div data-cms-area="home_cms_area_4" data-cms-area-filters="path"></div>
	<div data-cms-area="home_cms_area_5" data-cms-area-filters="path"></div>
	<div data-cms-area="home_cms_area_6" data-cms-area-filters="path"></div>
	<div data-cms-area="home_cms_area_7" data-cms-area-filters="path"></div>
	<div data-cms-area="home_cms_area_8" data-cms-area-filters="path"></div>

	{{!-- <div class="shop-by">
		<div class="text-heading-conrtainer">
			<h2>
				<span class="black-content">
					<div data-cms-area="home_shop_by_black_container" data-cms-area-filters="path"></div>

				</span>
				<span class="blue-content">
					<div data-cms-area="home_shop_by_blue_container" data-cms-area-filters="path"></div>
				</span>
			</h2>
		</div>
		<div class="toggle">
			<button class="active">Category</button>
			<button>Brands</button>
		</div>

		<div class="categories-grid">
			<a data-touchpoint="home" data-hashtag="#/shop-by-category" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="61.793"
					height="61.651" viewBox="0 0 61.793 61.651">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_120" data-name="Rectangle 120" width="61.793" height="61.651"
								transform="translate(0 0)" fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1033" data-name="Group 1033" transform="translate(0 0)" clip-path="url(#clip-path)">
						<path id="Path_913" data-name="Path 913"
							d="M49.868,29.93c-2.359,0-4.394-.073-5.73-.2a6.34,6.34,0,0,1-4.918-4.1c-.656-2.146-.6-9.134-.388-12.279.194-2.828,1.556-4.963,3.737-5.855,1.072-.439,4.077-.7,8.036-.7,2.072,0,3.823.069,4.771.134a6.481,6.481,0,0,1,6.234,4.893,47.181,47.181,0,0,0,.049,6.269,38.607,38.607,0,0,1-.027,6.713,6.283,6.283,0,0,1-5.442,4.924c-1.58.126-3.943.2-6.322.2m-5.757-5.313H56.52V12.208H44.111Z"
							fill="#050605" />
						<path id="Path_914" data-name="Path 914"
							d="M49.871,61.651c-2.36,0-4.4-.073-5.733-.205a6.34,6.34,0,0,1-4.918-4.094c-.656-2.147-.6-9.135-.388-12.28.194-2.829,1.556-4.963,3.737-5.855,1.072-.439,4.075-.7,8.033-.7,2.074,0,3.826.07,4.774.134a6.487,6.487,0,0,1,6.247,4.938V56.54a6.268,6.268,0,0,1-5.432,4.911c-1.58.125-3.942.2-6.319.2Zm-5.76-5.313H56.52V43.929H44.111Z"
							fill="#050605" />
						<path id="Path_915" data-name="Path 915"
							d="M18.237,61.617c-2.606,0-5-.074-5.952-.186C9,61.048,7.3,57.929,7.111,55.193a88.513,88.513,0,0,1,0-10.12c.258-3.769,2.391-6.03,6.008-6.367,1.4-.131,3.351-.2,5.5-.2,1.824,0,3.66.053,5.038.147,2.777.189,5.917,1.93,6.251,5.305a85.067,85.067,0,0,1-.018,12.328,6.23,6.23,0,0,1-4.322,4.977A47.3,47.3,0,0,1,18.237,61.617ZM12.39,56.338H24.8V43.929H12.39Z"
							fill="#050605" />
						<path id="Path_916" data-name="Path 916"
							d="M10.115,29.865c-1.624,0-3.046-.044-4.347-.134a6.126,6.126,0,0,1-5.6-5.286A87.641,87.641,0,0,1,.149,13.922C.261,10.9.376,7.773.23,4.827A6.545,6.545,0,0,1,4.946,0H25.138a6.409,6.409,0,0,1,4.74,5.1c-.152,2.954-.047,6.061.056,9.068a91.919,91.919,0,0,1-.022,10.116A6.128,6.128,0,0,1,24.8,29.7c-.986-.044-2.031-.066-3.191-.066-1.913,0-3.876.061-5.775.118s-3.834.117-5.718.117M5.286,24.617H24.8V5.1H5.286Z"
							fill="#050605" />
					</g>
				</svg>
				
				<span>
					
					<div data-cms-area="home_shop_by_category_text_1" data-cms-area-filters="path"></div>
					
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/radios" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="67.908"
					height="67.846" viewBox="0 0 67.908 67.846">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_119" data-name="Rectangle 119" width="67.908" height="67.847"
								fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1032" data-name="Group 1032" transform="translate(0 0)">
						<g id="Group_1031" data-name="Group 1031" transform="translate(0 0)"
							clip-path="url(#clip-path)">
							<path id="Path_906" data-name="Path 906"
								d="M76.947,43.764a2.478,2.478,0,0,1-2.487-2.586c-.327-4.168.422-5.4.759-5.741a2.259,2.259,0,0,1,1.631-.678A2.439,2.439,0,0,1,79.3,36.966a29.489,29.489,0,0,1-.058,5.021,2.237,2.237,0,0,1-2.3,1.777"
								transform="translate(-11.471 -5.36)" fill="#050605" />
							<path id="Path_907" data-name="Path 907"
								d="M2.4,43.77A2.485,2.485,0,0,1,0,41.993V36.576A2.594,2.594,0,0,1,2.369,34.76a2.616,2.616,0,0,1,2.465,2.731,26.587,26.587,0,0,1-.04,4.019,2.368,2.368,0,0,1-2.4,2.26"
								transform="translate(0 -5.361)" fill="#050605" />
							<path id="Path_908" data-name="Path 908"
								d="M27.17,67.847a2.279,2.279,0,0,1-2.295-2.036V1.932C24.95,1.121,25.5.5,26.649,0h1.171a2.762,2.762,0,0,1,1.893,2.81l0,62.264a2.722,2.722,0,0,1-.727,2.021,2.554,2.554,0,0,1-1.814.752"
								transform="translate(-3.836 0)" fill="#050605" />
							<path id="Path_909" data-name="Path 909"
								d="M39.638,58.218A2.323,2.323,0,0,1,37.405,56.7c-.244-8.369-.207-16.917-.171-25.186.022-5.1.045-10.379,0-15.564a2.609,2.609,0,0,1,1.705-1.966,3.97,3.97,0,0,1,.664-.058,2.341,2.341,0,0,1,2.462,2.173L42.06,56.036a2.361,2.361,0,0,1-2.422,2.181"
								transform="translate(-5.738 -2.147)" fill="#050605" />
							<path id="Path_910" data-name="Path 910"
								d="M14.8,53.408a2.424,2.424,0,0,1-2.449-2.433l.009-27.9a2.6,2.6,0,0,1,1.966-2.189,2.93,2.93,0,0,1,.457-.036,2.379,2.379,0,0,1,2.409,2.288l-.01,28.128A2.321,2.321,0,0,1,14.8,53.408"
								transform="translate(-1.905 -3.216)" fill="#050605" />
							<path id="Path_911" data-name="Path 911"
								d="M52.091,48.6c-1.118,0-2.366-.732-2.52-2.787a78.671,78.671,0,0,1-.017-8.191c.079-2.428.16-4.938.043-7.334A2.59,2.59,0,0,1,51.788,27.8a2,2,0,0,1,.256-.015,2.406,2.406,0,0,1,2.368,2.131,71.735,71.735,0,0,1,.022,8.818c-.1,2.672-.2,5.433-.047,8.032a2.248,2.248,0,0,1-2.3,1.829"
								transform="translate(-7.627 -4.285)" fill="#050605" />
							<path id="Path_912" data-name="Path 912"
								d="M64.528,58.219a2.4,2.4,0,0,1-2.413-2.185l.006-40.086a2.522,2.522,0,0,1,1.7-1.97,3.772,3.772,0,0,1,.621-.054,2.386,2.386,0,0,1,2.506,2.285l-.007,39.735a2.372,2.372,0,0,1-2.417,2.273"
								transform="translate(-9.58 -2.147)" fill="#050605" />
						</g>
					</g>
				</svg>
				<span>
					<div data-cms-area="home_shop_by_category_text_2" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/antennas" class="category">
				<svg id="Group_1045" data-name="Group 1045" xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" width="58.042" height="102.584"
					viewBox="0 0 58.042 102.584">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_135" data-name="Rectangle 135" width="58.042" height="102.584"
								fill="none" />
						</clipPath>
					</defs>
					<rect id="Rectangle_125" data-name="Rectangle 125" width="3.411" height="3.409"
						transform="translate(27.318 13.777)" fill="#050605" />
					<rect id="Rectangle_126" data-name="Rectangle 126" width="3.411" height="3.411"
						transform="translate(27.318 20.596)" fill="#050605" />
					<rect id="Rectangle_127" data-name="Rectangle 127" width="3.411" height="3.411"
						transform="translate(27.318 27.417)" fill="#050605" />
					<rect id="Rectangle_128" data-name="Rectangle 128" width="3.411" height="3.411"
						transform="translate(27.318 51.291)" fill="#050605" />
					<rect id="Rectangle_129" data-name="Rectangle 129" width="3.411" height="3.411"
						transform="translate(8.562 20.596)" fill="#050605" />
					<rect id="Rectangle_130" data-name="Rectangle 130" width="3.411" height="3.411"
						transform="translate(8.562 27.417)" fill="#050605" />
					<rect id="Rectangle_131" data-name="Rectangle 131" width="3.411" height="3.411"
						transform="translate(8.562 44.47)" fill="#050605" />
					<rect id="Rectangle_132" data-name="Rectangle 132" width="3.411" height="3.411"
						transform="translate(46.074 20.596)" fill="#050605" />
					<rect id="Rectangle_133" data-name="Rectangle 133" width="3.411" height="3.411"
						transform="translate(46.074 27.417)" fill="#050605" />
					<rect id="Rectangle_134" data-name="Rectangle 134" width="3.411" height="3.411"
						transform="translate(46.074 44.47)" fill="#050605" />
					<g id="Group_1044" data-name="Group 1044">
						<g id="Group_1043" data-name="Group 1043" clip-path="url(#clip-path)">
							<path id="Path_934" data-name="Path 934"
								d="M57.913,78.135l-9.932-10.1c-.611-1.072.429-2.848-1.8-3.106a46.839,46.839,0,0,0-7.238.017c-.478.075-1.4.715-1.4,1.16v3.943H34.138V61.521c.857.154,3.412.032,3.412-1.172V48.734a2.116,2.116,0,0,0,3.408,0v4.8c0,.7,1.192,1.128,1.8,1.183a70.57,70.57,0,0,0,10.44-.023,1.641,1.641,0,0,0,1.3-1.043l.082-38.473A1.621,1.621,0,0,0,53.2,13.789l-11.188.081c-2.616,1.734.744,6.087-2.837,7.563-.444-.474-1.508-1.2-1.623-1.8l-.1-11.624c-.582-1.4-2.058-1.025-3.314-1.055V1.306c0-.444-.918-1.085-1.4-1.159A45.9,45.9,0,0,0,25.709.123c-.611.056-1.8.481-1.8,1.183V6.954c-1.254.03-2.729-.348-3.314,1.055l-.1,11.624c-.117.6-1.179,1.327-1.624,1.8-3.579-1.476-.222-5.829-2.836-7.563L4.844,13.789a1.621,1.621,0,0,0-1.386,1.384l.084,38.473a1.638,1.638,0,0,0,1.3,1.043,70.58,70.58,0,0,0,10.441.023c.61-.055,1.8-.481,1.8-1.183v-4.8a2.121,2.121,0,0,0,3.412,0V60.349c0,1.2,2.554,1.327,3.409,1.172v8.527H20.5V66.106c0-.445-.921-1.085-1.4-1.16a46.848,46.848,0,0,0-7.239-.017c-2.133.248-1.2,1.854-1.794,2.894C7.466,71,2.935,74.1.564,77.292a1.738,1.738,0,0,0,0,2.565c1.288,1.729,9.516,8.907,9.7,9.911.144.793-.243,1.877.861,2.337,1.518.633,6.309-.237,8.2.107.369.037,1.177-.965,1.177-1.166V87.1h3.409v14.388a3.148,3.148,0,0,0,1.179.954,55.118,55.118,0,0,0,7.68.016c.5-.066,1.373-.752,1.373-1.181V87.1H37.55v4.157c0,.076.885.974,1.176.954,1.782-.337,6.824.515,8.2-.1,1.053-.477.651-1.85,1.055-2.568l9.828-9.78a1.9,1.9,0,0,0,.106-1.624M44.37,17.185h6.82V51.29H44.37ZM37.55,24.86a2.115,2.115,0,0,0,3.408,0V43.725a11.8,11.8,0,0,1-1.628,1.583,7.376,7.376,0,0,1-1.78-1.583ZM13.677,51.29H6.857V17.185h6.82ZM20.5,43.725a11.9,11.9,0,0,1-1.629,1.583,7.393,7.393,0,0,1-1.784-1.583V24.86a2.119,2.119,0,0,0,3.412,0ZM10.266,84.544,4.313,78.652l5.954-6.047Zm6.819,4.263H13.678V68.344h3.408Zm6.821-5.115H20.5V73.46h3.408ZM27.318,3.545h3.41V6.954h-3.41Zm3.41,95.493h-3.41V61.521h3.41ZM23.907,10.365H34.138V58.113H23.907ZM37.55,83.691H34.138V73.46H37.55Zm6.82,5.115H40.958V68.344H44.37Zm3.408-4.05V72.819l5.953,5.891Z"
								transform="translate(0 0)" fill="#050605" />
						</g>
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_3" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a  data-touchpoint="home" data-hashtag="#/shop-by-category/cable-solutions" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="63.651"
					height="82.517" viewBox="0 0 63.651 82.517">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_140" data-name="Rectangle 140" width="63.651" height="82.517"
								fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1068" data-name="Group 1068" clip-path="url(#clip-path)">
						<path id="Path_937" data-name="Path 937"
							d="M63.6,14.87a3.937,3.937,0,0,0-1.691-2.877,24.366,24.366,0,0,1-.056-5.228,2.04,2.04,0,0,0-2.3-2.291l-2.106.045L57.5,2.2C57.411,1.169,57.252.118,56.019,0H54.73C53.6.112,53.438,1.324,53.4,2.258l.062,2.252q-4.416-.735-4.564,2.6.145,2.456.075,4.88a3.718,3.718,0,0,0-1.644,2.437q-.006,8.013-.14,16.031a5.036,5.036,0,0,0,1.792,4.3,27.493,27.493,0,0,0,.168,5.333c2.237,5.1-1.517,11.163-4.635,15.2l-5.753,7.072a12.958,12.958,0,0,0-1.923,3.874l.322-1.165V42.1l-.322-.112c.634-.1,1.283-1.8,1.386-2.46q.035-2.476.017-4.936a3.727,3.727,0,0,0,1.644-2.439q.026-8.181.118-16.366A4.016,4.016,0,0,0,38.252,12q0-2.888,0-5.791c-.172-.584-.926-2.044-1.487-1.377l-.23-.322H33.774C33.952,3.15,34.133,0,32.328,0H31.2c-1.223.114-1.377,1.188-1.476,2.211l.045,2.316-2.009-.056a2.046,2.046,0,0,0-2.387,2.179,43.346,43.346,0,0,1,.024,5.2,4.663,4.663,0,0,0-1.753,2.718V32.01A4.844,4.844,0,0,0,25.38,34.7q.087,2.672.118,5.374c.11.557.563,1.977,1.188,1.751l-.322.2V65.068l.322,1.171a21.285,21.285,0,0,0-4.048-6.778c-4.266-4.324-7.418-8.742-8.744-14.679a5.756,5.756,0,0,1,.606-4.7,26.238,26.238,0,0,0,.215-5.5A3.884,3.884,0,0,0,16.372,32q.058-8.426.041-16.849a3.754,3.754,0,0,0-1.68-3.137q.006-2.872-.041-5.753c-.176-.61-.941-2.16-1.461-1.425L13,4.513H10.244C10.422,3.15,10.6,0,8.8,0H7.669C6.436.118,6.277,1.169,6.184,2.2L6.24,4.519l-2.1-.037c-1.912.185-2.28.647-2.347,2.564a22.772,22.772,0,0,1,.021,4.9C.342,13.037.06,14.112,0,15.93q.064,8.107.131,16.209A4.767,4.767,0,0,0,1.852,34.7a21.8,21.8,0,0,1-.015,4.152,5.59,5.59,0,0,0,1,3.21c.064,10.035,5.447,17.9,11.84,25.1a21.688,21.688,0,0,1,4.794,13.549c.077.922.372,1.728,1.414,1.811H42.8c1.081-.1,1.24-1.248,1.347-2.138a20.754,20.754,0,0,1,2.512-9.919c1.457-3.15-1.689-5.108-3.657-1.792-1.049,1.766-3.262,8.813-2.656,10.282.009.019.017.039.028.058a.281.281,0,0,0-.06-.037c-.142-.064-2.813-.034-3.163,0l.2-.415a28.819,28.819,0,0,1,6.771-16.727c3.752-3.81,6.876-7.878,8.548-13.048.249-.771,1.274-4.356.967-4.912l.043-.03.23.322H56.8l.183-.322-.408.75A28.662,28.662,0,0,1,52.4,56.311c-1.85,2.467,1.218,5,3.167,2.478,3.279-4.25,4.7-11.075,5.177-16.325,1.281-2.181,1.171-4.169.982-6.629l.092-1.109a4.964,4.964,0,0,0,1.73-2.594Q63.72,23.5,63.6,14.87M5.413,8.058h5.641V11.6H5.413ZM3.8,14.988h9.025v16.6H3.8ZM5.413,39.243V34.812h5.641v4.431a2.216,2.216,0,0,1-.958,1.137,13.7,13.7,0,0,1-3.559,0c-.4-.1-1.124-.759-1.124-1.132M23.141,79.293A27.527,27.527,0,0,0,17.954,65.22c-1.468-2.046-3.253-3.606-4.8-5.514A31.015,31.015,0,0,1,6.541,43.837h3.707a25.617,25.617,0,0,0,5.486,13.289c1.835,2.381,4.04,4.268,5.765,6.805a31.054,31.054,0,0,1,5.187,15.362Zm5.8-71.235h5.641V11.6H28.943Zm4.674,71.235H30.071V43.837h3.546Zm.967-40.051c0,1.506-3.116,1.326-4.113,1.214-.664-.075-1.528-.69-1.528-1.373V34.812h5.641Zm1.773-7.654H27.331v-16.6h9.025ZM52.634,8.058h5.641V11.6H52.634Zm5.641,31.025c0,.716-.845,1.291-1.528,1.373-.993.118-4.113.286-4.113-1.214V34.812h5.641Zm1.612-7.5H50.862v-16.6h9.025Z" />
						<path id="Path_938" data-name="Path 938"
							d="M224.311,287.379a1.678,1.678,0,0,1,.891,3.152c-2.39,1.142-3.466-2.912-.891-3.152"
							transform="translate(-174.942 -225.62)" />
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_4" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/fiber" class="category">
				<svg id="Group_1067" data-name="Group 1067" xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" width="80" height="79.746" viewBox="0 0 80 79.746">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_139" data-name="Rectangle 139" width="80" height="79.746" fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1066" data-name="Group 1066" clip-path="url(#clip-path)">
						<path id="Path_936" data-name="Path 936"
							d="M73.863,10.743C75.128,5.873,71.672.174,66.449,0H39.971C29.756,0,19.777,5.161,12.633,12.276S.279,29.35.254,39.562c-.8,12.516.6,25.87,0,38.471C.364,79.1.7,79.615,1.811,79.746H37.635c.735-.05,2.174-.991,1.558-1.636l.312-.191c.1-11.713.1-23.814,0-35.522,0-.077-.189-.11-.312-.11l.32-.168c.669-2.787,2.569-3.092,5.225-3.1,4.641-.021,9.275.1,13.914.251,2.38.073,4.754-.031,7.127-.168a8.966,8.966,0,0,0,8.031-11.167c3.2-.829,6.025-3.67,6.191-7.061V17.912c-.141-3.456-3.015-6.2-6.137-7.169m-9-6.031c4.517-.37,5.819,6.122,1.587,7.514-5.472,1.8-7.154-7.059-1.587-7.514m-12.46,0c4.517-.37,5.819,6.122,1.587,7.514-5.472,1.8-7.154-7.059-1.587-7.514M11.156,75.074H4.926L4.918,41.969A38.617,38.617,0,0,1,20.986,11.777a39.214,39.214,0,0,1,23.97-7.1,11.025,11.025,0,0,0-.623,6.074A32.234,32.234,0,0,0,11.159,40.419Zm4.673,0-.006-33.105a30.662,30.662,0,0,1,1.915-9.144,27.4,27.4,0,0,1,20.751-16.94c-.062.818-.461,1.57-.54,2.419a9.1,9.1,0,0,0,1.088,5.368A19.619,19.619,0,0,0,23.611,41.034l.006,34.04ZM42.7,33.954c-3.452,0-8.178,3.827-8.178,7.4V75.074h-6.23L28.283,42.28c-.3-6.2,6.612-14.244,12.857-14.244h3.192a10.065,10.065,0,0,0,.623,5.919Zm3-18.342c5.528-.887,6.2,6.886,1.479,7.553-5.3.75-6-6.828-1.479-7.553m7.867,18.3c-5.5.881-6.253-6.878-1.479-7.553,5.3-.75,6,6.828,1.479,7.553m5.024-10.712c-4.44-.345-4.538-6.934-.43-7.593,6-.962,6.16,8.037.43,7.593m7.437,10.712c-5.5.881-6.253-6.878-1.479-7.553,5.3-.75,6,6.828,1.479,7.553m5.024-10.712c-4.44-.345-4.538-6.934-.43-7.593,6-.962,6.16,8.037.43,7.593"
							transform="translate(0 0)" />
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_5" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/networking-hardware" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="73.857"
					height="73.813" viewBox="0 0 73.857 73.813">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_123" data-name="Rectangle 123" width="73.857" height="73.813"
								fill="none" stroke="#000" stroke-width="0.7" />
						</clipPath>
					</defs>
					<g id="Group_1040" data-name="Group 1040" transform="translate(0 0)">
						<g id="Group_1039" data-name="Group 1039" transform="translate(0 0)"
							clip-path="url(#clip-path)">
							<path id="Path_921" data-name="Path 921"
								d="M73.72,48.713c-.113-1.177-1.81-3.618-2.94-3.618H61.292V38.886A4.979,4.979,0,0,0,60.237,37.6H38.8V33.849H49.7c1.627,0,2.391-3.394.219-3.734l-37.244,0-1.279-.246V19.208l.353-.352H62.113l.35.352V29.866c-1.584.726-6.009-.454-7.034.813a1.968,1.968,0,0,0,1.11,3.121,32.326,32.326,0,0,0,5.789.028,4.648,4.648,0,0,0,3.832-3.2,80.505,80.505,0,0,0,.055-11.894c-.078-.686-.619-1.564-.619-1.876s.538-.956.623-1.633a79.993,79.993,0,0,0,0-11.725,4.724,4.724,0,0,0-2.81-3.28L24.157.109c-2.285-.03-1.805,3.753,0,3.753H62.113l.35.353V14.872H11.393V4.215l.353-.353h5.621a3.725,3.725,0,0,0,1.161-.945A1.767,1.767,0,0,0,17.139.109a38.372,38.372,0,0,0-6.512.059A5.15,5.15,0,0,0,7.7,3.1,83.805,83.805,0,0,0,7.64,15.23c.085.674.623,1.324.623,1.636s-.538.959-.623,1.633a81.238,81.238,0,0,0,.021,11.938,5.712,5.712,0,0,0,1.274,2.238,8.5,8.5,0,0,0,2.34,1.175H35.053V37.6H13.619a5.016,5.016,0,0,0-1.053,1.287v6.209H3.077c-1.128,0-2.825,2.441-2.94,3.618C-.3,53.209.473,58.424.165,63c-.026.935,2.228,3.177,2.912,3.177h5.74v3.748c-2.3-.272-3.635,2.444-1.417,3.643,4.233-.1,9.09.5,13.257.118,3.116-.283,2.216-4.052-.6-3.761V66.177H25.8c1.128,0,2.824-2.442,2.94-3.619.434-4.5-.336-9.711-.028-14.286.026-.935-2.228-3.177-2.912-3.177H16.315V41.346H57.544v3.749H48.057c-1.131,0-2.827,2.441-2.94,3.618-.438,4.5.336,9.711.026,14.287-.026.935,2.23,3.177,2.914,3.177H53.8v3.748c-2.3-.272-3.635,2.444-1.417,3.643,4.233-.1,9.09.5,13.259.118,3.116-.283,2.213-4.052-.6-3.761V66.177H70.78c.684,0,2.94-2.242,2.914-3.177-.31-4.576.462-9.791.026-14.287m-57.4,21.212H12.566V66.176h3.749Zm8.666-7.5H3.9V48.843H24.981Zm36.311,7.5H57.543V66.176h3.749Zm8.667-7.5H48.877V48.843H69.959Z"
								transform="translate(0 0)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_922" data-name="Path 922"
								d="M38.406,10.648c-7.1-.623-15.574.813-22.5,0-2.169-.256-2.436-2.712-.65-3.706l23.383-.055c2.456.285,2.2,3.476-.232,3.761"
								transform="translate(0.988 0.483)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_923" data-name="Path 923"
								d="M38.406,24.655c-7.1-.623-15.574.813-22.5,0-2.169-.254-2.436-2.71-.65-3.7L38.638,20.9c2.456.284,2.2,3.473-.232,3.757"
								transform="translate(0.988 1.467)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_924" data-name="Path 924"
								d="M48.173,8.729a1.889,1.889,0,1,1-1.89-1.89,1.89,1.89,0,0,1,1.89,1.89"
								transform="translate(3.115 0.48)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_925" data-name="Path 925"
								d="M55.178,8.729a1.889,1.889,0,1,1-1.89-1.89,1.89,1.89,0,0,1,1.89,1.89"
								transform="translate(3.607 0.48)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_926" data-name="Path 926"
								d="M48.173,22.739a1.889,1.889,0,1,1-1.89-1.89,1.888,1.888,0,0,1,1.89,1.89"
								transform="translate(3.115 1.463)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
							<path id="Path_927" data-name="Path 927"
								d="M55.178,22.739a1.889,1.889,0,1,1-1.89-1.89,1.888,1.888,0,0,1,1.89,1.89"
								transform="translate(3.607 1.463)" fill="#1a1818" stroke="#000" stroke-width="0.7" />
						</g>
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_6" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/power-systems" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="80.342"
					height="73.813" viewBox="0 0 80.342 73.813">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_124" data-name="Rectangle 124" width="80.342" height="73.813"
								fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1042" data-name="Group 1042" transform="translate(0 0)">
						<g id="Group_1041" data-name="Group 1041" transform="translate(0 0)"
							clip-path="url(#clip-path)">
							<path id="Path_928" data-name="Path 928"
								d="M75.7.006H4.726A4.567,4.567,0,0,0,.006,4.89L.014,69.033A4.618,4.618,0,0,0,5.146,73.8H75.284c2.627.032,4.818-1.233,5.057-4.077V4.167A4.343,4.343,0,0,0,75.7.006m.242,70.137H4.485a1.7,1.7,0,0,1-.894-1.064l0-64.426a1.569,1.569,0,0,1,1.183-1.1l71,.039a1.532,1.532,0,0,1,1.061,1.061l0,64.592a1.8,1.8,0,0,1-.9.9"
								transform="translate(0 0)" fill="#050605" />
							<path id="Path_929" data-name="Path 929"
								d="M58.606,47.407c-.533-2.889-2.8-6.742-3.174-9.546-.66-5,.488-11.343-.005-16.465-.126-1.295-.783-1.762-2.04-1.873-5.094-.449-10.835.353-16,0a2.893,2.893,0,0,0-1.653.551,2.44,2.44,0,0,0-.551,1.487V54.516a2.052,2.052,0,0,0,2.2,2.037c4.54-.3,9.556.384,14.04,0a2.655,2.655,0,0,0,2.19-1.07,57.44,57.44,0,0,0,4.473-5.966c.557-.869.724-.978.515-2.11M38.618,23.116H51.993v13.21H38.618Zm0,26.419V45.459a7.341,7.341,0,0,1,1.3,2.365,4.977,4.977,0,0,1-1.3,1.712M51.1,52.961H40.575l2.2-3.1H53.46ZM43.1,46.275,39.759,39.75H52.483l2.12,6.525Z"
								transform="translate(-5.09 -2.804)" fill="#050605" />
							<path id="Path_930" data-name="Path 930"
								d="M78.5,7.96c-6.069.889-5.265,10.652,1.405,10.049C86.482,17.413,85.6,6.921,78.5,7.96m.653,6.613a1.64,1.64,0,0,1-.17-3.2c2.55-.565,2.661,3.56.17,3.2"
								transform="translate(-10.762 -1.141)" fill="#050605" />
							<path id="Path_931" data-name="Path 931"
								d="M12.14,7.96c-6.2.907-5.151,10.725,1.409,10.049C20.184,17.329,19.09,6.943,12.14,7.96m1.752,6.318c-2.139,1.5-3.707-2.433-1.265-2.9a1.605,1.605,0,0,1,1.265,2.9"
								transform="translate(-1.16 -1.141)" fill="#050605" />
							<path id="Path_932" data-name="Path 932"
								d="M17.472,69.228a5.327,5.327,0,0,0-4.85-2.727c-4.786.376-6.477,6.777-2.4,9.323a5.072,5.072,0,0,0,7.251-6.6m-5.153,3.846a1.614,1.614,0,0,1,.124-2.989,1.614,1.614,0,1,1-.124,2.989"
								transform="translate(-1.147 -9.618)" fill="#050605" />
							<path id="Path_933" data-name="Path 933"
								d="M82.6,67.677c-4.909-4.125-11.361,3.076-6.795,7.526,4.933,4.807,12.148-3.029,6.795-7.526m-3.346,5.478a1.585,1.585,0,0,1-.454-3.078,1.585,1.585,0,1,1,.454,3.078"
								transform="translate(-10.741 -9.612)" fill="#050605" />
						</g>
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_7" data-cms-area-filters="path"></div>
				</span>
			</a>
			<a data-touchpoint="home" data-hashtag="#/shop-by-category/tower-infrastructure-hardware" class="category">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="62.838"
					height="81.851" viewBox="0 0 62.838 81.851">
					<defs>
						<clipPath id="clip-path">
							<rect id="Rectangle_118" data-name="Rectangle 118" width="62.838" height="81.851"
								transform="translate(0 0)" fill="none" />
						</clipPath>
					</defs>
					<g id="Group_1030" data-name="Group 1030" transform="translate(0 0)">
						<g id="Group_1029" data-name="Group 1029" clip-path="url(#clip-path)">
							<path id="Path_901" data-name="Path 901"
								d="M54.33,78.452l-17.3-48.039c.7-.977,1.578-1.638,2.233-2.739A9.174,9.174,0,1,0,24.5,29.049c.255.291,1.212.994,1.254,1.064a.475.475,0,0,1,.024.346L8.452,78.487A2.749,2.749,0,0,0,10.3,81.85h1.437c1.4-.1,1.977-1.437,2.442-2.584a32.615,32.615,0,0,1,1.485-4.178L31.468,58.967q7.63,8.014,15.471,15.819A22.377,22.377,0,0,1,48.522,79a3.6,3.6,0,0,0,2.492,2.854h1.6a2.872,2.872,0,0,0,1.72-3.4M34.247,20.258c3.489,3.71-2.046,9.148-5.691,5.455-3.586-3.634,2.118-9.255,5.691-5.455M19.717,62.837l4.23-11.823c.424.537,3.8,3.585,3.743,3.892Zm11.5-11.824L26,45.506l4.719-13.251,1.439-.078L36.806,45.5Zm4,3.893c-.044-.261,3.16-3.435,3.583-3.892l4.228,11.823Z"
								fill="#050605" />
							<path id="Path_902" data-name="Path 902"
								d="M62.831,22.255c.01.476.008.962,0,1.438-.122,7.089-3.711,16.652-9.119,21.473a2.646,2.646,0,0,1-4.045-3.408c.489-.7,1.436-1.475,1.981-2.172C60.3,28.512,59.187,13.758,49.386,3.833A2.651,2.651,0,0,1,53.146.39a16.734,16.734,0,0,1,2.495,2.617,32.564,32.564,0,0,1,7.19,19.248"
								fill="#050605" />
							<path id="Path_903" data-name="Path 903"
								d="M10.411.083a2.643,2.643,0,0,1,3.2,3.2c-.191.924-3.227,4.055-4.02,5.243a26.4,26.4,0,0,0-.1,28.829c1.091,1.661,2.783,3.086,3.749,4.557a2.655,2.655,0,0,1-3.579,3.741,19.163,19.163,0,0,1-2.557-2.715,31.513,31.513,0,0,1,.32-40.254c.657-.775,2.029-2.406,2.985-2.6"
								fill="#050605" />
							<path id="Path_904" data-name="Path 904"
								d="M42.827,8.391c1.57-.319,2.627.892,3.552,1.965a19.665,19.665,0,0,1,1.158,23.678c-1.287,1.867-4.01,5.44-6.262,2.52-1.738-2.252.932-3.95,2.045-5.622a14.533,14.533,0,0,0-.064-16.012c-.549-.814-2.266-2.406-2.424-3.167a2.75,2.75,0,0,1,1.995-3.362"
								fill="#050605" />
							<path id="Path_905" data-name="Path 905"
								d="M18.875,8.391a2.765,2.765,0,0,1,3.208,2.6c0,1.378-1.272,2.189-1.954,3.129a14.444,14.444,0,0,0,0,17.708c1.1,1.521,3,2.659,1.267,4.81-1.917,2.378-4.057.107-5.347-1.526a19.682,19.682,0,0,1,0-24.277c.638-.807,1.8-2.236,2.826-2.444"
								fill="#050605" />
						</g>
					</g>
				</svg>

				<span>
					<div data-cms-area="home_shop_by_category_text_8" data-cms-area-filters="path"></div>
				</span>
			</a>
		</div>
	</div> --}}


	<div data-view="ShopBy.Categories.Brand"></div>


	<div class="connectivity-services">
		<div class="content-wrapper">
			<div class="text-section">
				<div data-cms-area="home_connectivity_heading_container_1" data-cms-area-filters="path"></div>
				
				<div class="services-list">
					<div data-cms-area="home_connectivity_service_list_text_1" data-cms-area-filters="path"></div>
				</div>
				<a href="#contact" class="contact-btn">
					<div data-cms-area="home_connectivity_service_list_button_container" data-cms-area-filters="path"></div>
					<svg xmlns="http://www.w3.org/2000/svg" class="btn-right-arrow" width="16.295" height="15.938"
						viewBox="0 0 16.295 15.938">
						<path id="button-arrow" d="M6.555,0V13.881m0,0,6.555-6.555M6.555,13.881,0,7.326"
							transform="translate(1 14.524) rotate(-90)" fill="none" stroke="#00548C"
							stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
					</svg>
				</a>
			</div>
			<div class="image-section">
				<div data-cms-area="home_connectivity_service_list_img_container" data-cms-area-filters="path"></div>

			</div>
		</div>
	</div>








	<div class="home-our-approach-container">
		<div class="home-our-approach-sub-container row">
			<div class="col-sm-4 home-approach-sm-4-container">
				<div data-cms-area="home_our_approach_img_container" data-cms-area-filters="path"></div>
			</div>
			<div class="col-sm-8 home-approach-sm-8-container">
				<div class="home-our-pproach-text-container">
					<div class="text-heading-conrtainer">
						<h2>
							<span class="black-content">
								<div data-cms-area="home_our_approach_heading_content_1" data-cms-area-filters="path"></div>
							</span>
							<span class="blue-content">
								<div data-cms-area="home_our_approach_heading_content_2" data-cms-area-filters="path"></div>
							</span>
						</h2>
					</div>
					<div class="home-our-approach-text">
						<div data-cms-area="home_our_approach_text_content_1" data-cms-area-filters="path"></div>
						
					</div>
					<div class="home-our-approach-button-container">
						<a href="/about-us" class="home-our-approach-button">
							<div data-cms-area="home_our_approach_button_text" data-cms-area-filters="path"></div>
							<svg xmlns="http://www.w3.org/2000/svg" class="btn-right-arrow" width="16.295"
								height="15.938" viewBox="0 0 16.295 15.938">
								<path id="button-arrow" d="M6.555,0V13.881m0,0,6.555-6.555M6.555,13.881,0,7.326"
									transform="translate(1 14.524) rotate(-90)" fill="none" stroke="#FFFFFF"
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
							</svg>
						</a>
					</div>
				</div>
			</div>

		</div>
	</div>





	<!-- CMS ZONE -->
	<div data-cms-area="home_cms_area_4" data-cms-area-filters="path"></div>

</div>

<section class="Home-new-info-section">

<div class="sections-container">
  <section class="why-choose-us">
	<div class="why-choose-us-main-content">
	<div class="why-choose-us-text-container">
	  <div data-cms-area="home_cms_area_why_choose_us_main_text" data-cms-area-filters="path"></div>
	  <div class="why-choose-us-shopnow-btn">
	    <a data-touchpoint="home" data-hashtag="#/shop-by-category" class="contact-btn" ><div data-cms-area="home_cms_area_why_choose_us_btn" data-cms-area-filters="path"></div><svg xmlns="http://www.w3.org/2000/svg" class="btn-right-arrow" width="16.295" height="15.938" viewBox="0 0 16.295 15.938"><path id="button-arrow" d="M6.555,0V13.881m0,0,6.555-6.555M6.555,13.881,0,7.326" transform="translate(1 14.524) rotate(-90)" fill="none" stroke="#00548C" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"></path></svg></a>
	  </div>
	</div>
	
	</div>
  
  </section>

<section class="need-assistance">
	<div class="need-assistance-main-content">

		<div data-cms-area="home_cms_area_need_assistant_text" data-cms-area-filters="path"></div>
		<div class="contact-info">
			<a href="mailto:sales@cticonnect.com" class="contact-item">
				<svg xmlns="http://www.w3.org/2000/svg" width="31.659" height="23.061" viewBox="0 0 31.659 23.061">
					<g id="Group_4" data-name="Group 4" transform="translate(1.5 1.5)">
						<path id="Path_1" data-name="Path 1" d="M7,9l7.165,5.015L21.329,9"
							transform="translate(0.165 -3.268)" fill="none" stroke="#0093d1" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="3" />
						<path id="Path_2" data-name="Path 2"
							d="M2,22.2V7.866A2.866,2.866,0,0,1,4.866,5H27.793a2.866,2.866,0,0,1,2.866,2.866V22.2a2.866,2.866,0,0,1-2.866,2.866H4.866A2.866,2.866,0,0,1,2,22.2Z"
							transform="translate(-2 -5)" fill="none" stroke="#0093d1" stroke-width="3" />
					</g>
				</svg>

				<div data-cms-area="home_cms_area_need_assistant_email" data-cms-area-filters="path"></div>
			</a>
			<a href="tel:5612957899" class="contact-item">
				<svg xmlns="http://www.w3.org/2000/svg" width="29.726" height="29.531" viewBox="0 0 29.726 29.531">
					<path id="Path_3" data-name="Path 3"
						d="M23.679,19.138l-5.557,1.077c-3.753-1.884-6.072-4.048-7.421-7.421l1.039-5.573L9.777,2H4.716A2.432,2.432,0,0,0,2.224,4.762c.567,3.755,2.24,10.565,7.129,15.454,5.134,5.134,12.529,7.362,16.6,8.248a2.467,2.467,0,0,0,2.966-2.492V21.134Z"
						transform="translate(-0.69 -0.5)" fill="none" stroke="#0093d1" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="3" />
				</svg>

				<div data-cms-area="home_cms_area_need_assistant_tel" data-cms-area-filters="path"></div>
			</a>
		</div>
	</div>
</section>
</div>

</section>


{{!----
Use the following context variables when customizing this template:

imageHomeSize (String)
imageHomeSizeBottom (String)
carouselImages (Array)
bottomBannerImages (Array)

----}}