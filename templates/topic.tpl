<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="g-ad-lg">
		<a href="javascript:;"><img src="/assets/images/customer/quangcao-lg.jpg" alt=""></a>
	</div>
</div>

<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">

	<div class="topic g-topic <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<div class="topic-header">
			<h1 component="post/header" class="" itemprop="name">
				<span class="topic-title g-topic-title" component="topic/title">
					<span component="topic/labels">
						<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="{{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {pinExpiryISO}]]{{{ end }}}"></i>
						<i component="topic/locked" class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
						<i class="fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="{{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}"></i>
						{{{each icons}}}{@value}{{{end}}}
					</span>
					{title}
				</span>
			</h1>

			<div class="topic-info clearfix" style="display: none;">
				<div class="category-item inline-block">
					{{{ if category.icon }}}
					<div role="presentation" class="icon pull-left" style="{{{ if category.bgColor }}}background-color: {category.bgColor};{{{end}}}; {{{ if category.color}}}color: {category.color};{{{end}}}">
						<i class="fa fa-fw {category.icon}"></i>
					</div>
					{{{ end }}}
					<a href="{config.relative_path}/category/{category.slug}">{category.name}</a>

				</div>

				<div class="tags tag-list inline-block hidden-xs">
					<!-- IMPORT partials/topic/tags.tpl -->
				</div>
				<div class="inline-block hidden-xs">
					<!-- IMPORT partials/topic/stats.tpl -->
				</div>
				{{{ if !feeds:disableRSS }}}
				{{{ if rssFeedUrl }}}<a class="hidden-xs" target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a>{{{ end }}}
				{{{ end }}}
				<!-- IMPORT partials/topic/browsing-users.tpl -->

				<!-- IMPORT partials/post_bar.tpl -->
			</div>
		</div>
		<!-- IF merger -->
		<div component="topic/merged/message" class="alert alert-warning clearfix">
			<span class="pull-left">[[topic:merged_message, {config.relative_path}/topic/{mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
			<span class="pull-right">
				<a href="{config.relative_path}/user/{merger.userslug}">
					<strong>{merger.username}</strong>
				</a>
				<small class="timeago" title="{mergedTimestampISO}"></small>
			</span>
		</div>
		<!-- ENDIF merger -->

		<!-- IMPORT partials/topic/deleted-message.tpl -->

		<ul component="topic" class="posts g-posts" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="{{{ if posts.deleted }}}deleted{{{ end }}} {{{ if posts.selfPost }}}self-post{{{ end }}} {{{ if posts.topicOwnerPost }}}topic-owner-post{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" id="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>
			{{{end}}}
		</ul>

		<div class="g-similar-threads">
			<p class="g-title">Bạn hôm nay thế nào?</p>
			<div class="g-slider">
				<ul>
					<li>
						<p><img src="/assets/images/customer/banner5.jpg" alt=""></p>
						<div>
							<span>Juby Lee</span>
							<p>Sự kiện Samsung Galaxy Unpacked được tiết lộ sẽ diễn ra vào ngày 11/08 sắp tới, và những sản phẩm có thể sẽ được ra mắt trong sự kiện đó bao mẫu...</p>
						</div>
					</li>
					<li>
						<p><img src="/assets/images/customer/banner6.jpg" alt=""></p>
						<div>
							<span>Juby Lee</span>
							<p>Sự kiện Samsung Galaxy Unpacked được tiết lộ sẽ diễn ra vào ngày 11/08 sắp tới, và những sản phẩm có thể sẽ được ra mắt trong sự kiện đó bao mẫu...</p>
						</div>
					</li>
					<li>
						<p><img src="/assets/images/customer/banner6.jpg" alt=""></p>
						<div>
							<span>Juby Lee</span>
							<p>Sự kiện Samsung Galaxy Unpacked được tiết lộ sẽ diễn ra vào ngày 11/08 sắp tới, và những sản phẩm có thể sẽ được ra mắt trong sự kiện đó bao mẫu...</p>
						</div>
					</li>

					<li>
						<p><img src="/assets/images/customer/banner5.jpg" alt=""></p>
						<div>
							<span>Juby Lee</span>
							<p>Sự kiện Samsung Galaxy Unpacked được tiết lộ sẽ diễn ra vào ngày 11/08 sắp tới, và những sản phẩm có thể sẽ được ra mắt trong sự kiện đó bao mẫu...</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!-- IF config.enableQuickReply -->
		<!-- IMPORT partials/topic/quickreply.tpl -->
		<!-- ENDIF config.enableQuickReply -->

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

		<!-- IMPORT partials/topic/navigator.tpl -->


	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
		<div class="g-question">
			<p class="g-title">Bạn hôm nay thế nào?</p>
			<div class="g-qu-content">
				<a href="#">
					<img class="avatar  avatar-sm2x avatar-rounded" alt="" title="" data-uid="1" loading="lazy" component="user/picture" src="/assets/images/customer/avata.png"  data-original-title="huuluan1988">
					<span>Hi trungle1979!</span>
				</a>
				<div>
					<p>Điểm reward: <strong>0đ</strong></p>
					<p>Tuổi game6: <strong>13 ngày</strong></p>
				</div>
			</div>
		</div>
		<div class="g-congdong">
			<p class="g-title">Cộng đồng đã tham gia</p>
			<div class="g-group">
				
				<div class="" component="groups/summary" data-slug="cộng-đồng-game-aoe2">
					<div class="panel panel-default">
						<a href="/groups/cộng-đồng-game-aoe2" class="panel-heading list-cover">
							<img src="/assets/images/customer/banner1.jpg" alt="">
						</a>
						<div class="panel-body">
							<h3 class="panel-title">Cộng Đồng Game AoE2 <small>2</small></h3>
							<ul class="members">
								
								
							</ul>
						</div>
					</div>
				</div>
				
				<div class="" component="groups/summary" data-slug="administrators">
					<div class="panel panel-default">
						<a href="/groups/administrators" class="panel-heading list-cover">
							<img src="/assets/images/customer/banner2.jpg" alt="">
						</a>
						<div class="panel-body">
							<h3 class="panel-title">administrators <small>1</small></h3>
							<ul class="members">
							</ul>
						</div>
					</div>
				</div>
				<div class="" component="groups/summary" data-slug="administrators">
					<div class="panel panel-default">
						<a href="/groups/administrators" class="panel-heading list-cover">
							<img src="/assets/images/customer/banner3.jpg" alt="">
						</a>
						<div class="panel-body">
							<h3 class="panel-title">administrators <small>1</small></h3>
							<ul class="members">
							</ul>
						</div>
					</div>
				</div>
				<div class="" component="groups/summary" data-slug="administrators">
					<div class="panel panel-default">
						<a href="/groups/administrators" class="panel-heading list-cover">
							<img src="/assets/images/customer/banner4.jpg" alt="">
						</a>
						<div class="panel-body">
							<h3 class="panel-title">administrators <small>1</small></h3>
							<ul class="members">
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="g-bxh">
			<p class="g-title">BXH game Việt</p>
			<div class="g-block-bxh"></div>
		</div>

		<div class="g-users-hot">
			<p class="g-title">Thành viên nổi bật</p>
			<div class="g-users">
				<ul>
					<li>
						<a href="javascript:;">
							<p><img src="/assets/images/customer/avata.png" alt=""></p>
							<div>
								<p><span>+146</span><i></i></p>
								<p>Lorem Ipsum</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:;">
							<p><img src="/assets/images/customer/avata.png" alt=""></p>
							<div>
								<p><span>+146</span><i></i></p>
								<p>Lorem Ipsum</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:;">
							<p><img src="/assets/images/customer/avata.png" alt=""></p>
							<div>
								<p><span>+146</span><i></i></p>
								<p>Lorem Ipsum</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:;">
							<p><img src="/assets/images/customer/avata.png" alt=""></p>
							<div>
								<p><span>+146</span><i></i></p>
								<p>Lorem Ipsum</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:;">
							<p><img src="/assets/images/customer/avata.png" alt=""></p>
							<div>
								<p><span>+146</span><i></i></p>
								<p>Lorem Ipsum</p>
							</div>
						</a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="g-ad-bv">
			<p><img src="/assets/images/customer/quangcao-bv.jpg" alt=""></p>
		</div>

	</div>
</div>

<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
