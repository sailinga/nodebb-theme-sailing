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
				<a href="/user/huuluan1988">
					<img class="avatar  avatar-sm2x avatar-rounded" alt="huuluan1988" title="" data-uid="1" loading="lazy" component="user/picture" src="/assets/uploads/profile/1-profileavatar-1626083308586.png" style="" data-original-title="huuluan1988">
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
							<img src="/assets/uploads/files/groupcoverthumb-cộng-đồng-game-aoe2.png " alt="">
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
							<img src="/assets/uploads/files/groupcoverthumb-administrators.jpeg " alt="">
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
