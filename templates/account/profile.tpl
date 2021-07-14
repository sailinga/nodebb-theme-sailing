<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IMPORT partials/account/menu.tpl -->
	
	<div class="row">
		<div class="col-md-4 col-sm-4">
			<div  component="account/cover">
				<div class="avatar-wrapper" data-uid="{uid}">
					<div class="g-avatar">
						<!-- IF picture -->
							<img src="{picture}" class="avatar avatar-xl avatar-rounded" />
							<!-- ELSE -->
							<div class="avatar avatar-xl avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
							<!-- ENDIF picture -->
							<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>

							<!-- IF showHidden -->
							<a id="changePictureBtn" href="{config.relative_path}/user/{userslug}/edit" class="g-edit-user list-group-item"></a>
							<!-- ENDIF showHidden -->
						
						<!-- IF loggedIn -->
						<!-- IF !isSelf -->
						<button style="display: none;" class="btn-morph fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
							<span>
								<span class="s1"></span>
								<span class="s2"></span>
								<span class="s3"></span>
							</span>
						</button>
						<!-- ENDIF !isSelf -->
						<!-- ENDIF loggedIn -->
					</div>
					<div class="g-tuong_anh">
						<a href="{config.relative_path}/user/{userslug}">Tường nhà bạn</a>
						<a href="{config.relative_path}/user/{userslug}/uploads">Album ảnh</a>
					</div>

				</div>
			</div>
			<div class="g-canhan">
				<p class="g-title">Thành tích cá nhân</p>
				<p>Tham gia được: <span class="timeago" title="{joindateISO}"></span> </p>
				<p>Hoạt động cá nhân: <span class="timeago" title="{lastonlineISO}"></span> </p>
				<p>Số bài viết <span>{counts.posts}</span> </p>
				<p>Điểm uy tín: <span>{reputation}</span> </p>
			</div>

			<div class="g-congdong">
				<p class="g-title">Cộng đồng đã tham gia</p>
				<div class="g-group">
					{{{each groups}}}
					<div class="" component="groups/summary" data-slug="{groups.slug}">
						<div class="panel panel-default">
							<a href="{config.relative_path}/groups/{groups.slug}" class="panel-heading list-cover">
								<img src="<!-- IF groups.cover:thumb:url -->{groups.cover:thumb:url} <!-- ENDIF groups.cover:thumb:url -->" alt="">
							</a>
							<div class="panel-body">
								<h3 class="panel-title">{groups.displayName} <small>{groups.memberCount}</small></h3>
								<ul class="members">
									{{{each groups.members}}} thành viên
									<li>
										<a href="{config.relative_path}/user/{groups.members.userslug}">{buildAvatar(groups.members, "sm", true)}</a>
									</li>
									{{{end}}}
									<!-- IF groups.truncated -->
									<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
									<!-- ENDIF groups.truncated -->
								</ul>
							</div>
						</div>
					</div>
					{{{end}}}
				</div>
			</div>
			<div class="g-ad">
				<p><img src="/assets/images/customer/quangcao.jpg" alt=""></p>
			</div>
		</div>

		<div class="col-md-8 col-sm-8">

			<div class="profile row">
				<h1 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h1>
				<h2 class="username" style="display: none;"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h2>
				<!-- IF isAdminOrGlobalModeratorOrModerator -->
				<!-- IF banned -->
				<div class="text-center">
				<!-- IF banned_until -->
				[[user:info.banned-until, {banned_until_readable}]]
				<!-- ELSE -->
				[[user:info.banned-permanently]]
				<!-- ENDIF banned_until -->
				</div>
				<!-- ENDIF banned -->
				<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->

				<!-- IF selectedGroup.length -->
				<div class="text-center">
				{{{each selectedGroup}}}
				<!-- IF selectedGroup.slug -->
					<a href="{config.relative_path}/groups/{selectedGroup.slug}"><small class="label group-label inline-block" style="color:{selectedGroup.textColor};background-color: {selectedGroup.labelColor};"><!-- IF selectedGroup.icon --><i class="fa {selectedGroup.icon}"></i> <!-- ENDIF selectedGroup.icon -->{selectedGroup.userTitle}</small></a>
				<!-- ENDIF selectedGroup.slug -->
				{{{end}}}
				</div>
				<br/>
				<!-- ENDIF selectedGroup.length -->


				<div class="account-stats">
					<!-- IF !reputation:disabled -->
					<div class="stat" style="display: none;">
						<div class="human-readable-number" title="{reputation}">{reputation}</div>
						<span class="stat-label">[[global:reputation]]</span>
					</div>
					<!-- ENDIF !reputation:disabled -->

					<div class="stat" style="display: none;">
						<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
						<span class="stat-label">[[user:profile_views]]</span>
					</div>

					<div class="stat" style="display: none;">
						<div><a class="human-readable-number" title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{counts.posts}</a></div>
						<span class="stat-label">[[global:posts]]</span>
					</div>

					<div class="stat">
						<div>
							<a class="human-readable-number" title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{counts.followers}</a>
							<span class="stat-label">[[user:followers]]</span>
						</div>
						
					</div>

					<div class="stat">
						<div>
							<a class="human-readable-number" title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{counts.following}</a>
							<span class="stat-label">[[user:following]]</span>
						</div>
						
					</div>
				</div>

				<!-- IF aboutme -->
				<span class="aboutme">{aboutmeParsed}</span>
				<!-- ENDIF aboutme -->

				<div class="text-center profile-meta" style="display: none;">
					<span>[[user:joined]]</span>
					<strong class="timeago" title="{joindateISO}"></strong>

					<span>[[user:lastonline]]</span>
					<strong class="timeago" title="{lastonlineISO}"></strong><br />

					<!-- IF email -->
					<span>[[user:email]]</span>
					<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</strong>
					<!-- ENDIF email -->

					<!-- IF websiteName -->
					<span>[[user:website]]</span>
					<strong><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></strong>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<span>[[user:location]]</span>
					<strong>{location}</strong>
					<!-- ENDIF location -->

					<!-- IF age -->
					<span>[[user:age]]</span>
					<strong>{age}</strong>
					<!-- ENDIF age -->
				</div>
			</div>

			<!-- IF !isSelf -->
			<div class="g-three-bnt row" component="account/cover">
				<!-- <a href="javascript:;">Gửi tin nhắn</a>
				<a href="javascript:;">Theo dõi</a> -->
				<ul data-uid="{uid}">
					<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
						<a component="account/chat" href="#">Gửi tin nhắn</a>
					</li>
					<li class="btn-morph g-btn-morph <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing -->">
						<a href="#"><!-- IF isFollowing -->Hủy<!-- ELSE -->Theo dõi<!-- ENDIF isFollowing --></a>
					</li>
					<li>
						<a component="account/flag" href="#">Báo Cáo</a>
					</li>
				</ul>
				<!-- <a href="javascript:;">Báo cáo</a> -->
			</div>
			<!-- ENDIF !isSelf -->
			
			<div class="g-creat-post row">
				<a href="{config.relative_path}/compose?cid=1" component="category/post" id="new_topic" data-ajaxify="false" role="button">Viết bài, đặt câu hỏi, chia sẻ, share links</a>
			</div>

			<div class="g-block_post row">
				
				<div class="row">
					<div class="col-xs-12 account-block hidden">
						<div class="account-picture-block text-center">
							<span>
								<span class="account-username"> {username}</span>
							</span>

							<!-- IF !isSelf -->
							<!-- IF isFollowing -->
							<a component="account/unfollow" href="#" class="btn btn-warning btn-sm">[[user:unfollow]]</a>
							<!-- ELSE -->
							<a component="account/follow" href="#" class="btn btn-success btn-sm">[[user:follow]]</a>
							<!-- ENDIF isFollowing -->
							<!-- ENDIF !isSelf -->
						</div>
					</div>
				</div>

				<!-- IF groups.length -->
				<div class="row">
					<div class="col-xs-12 hidden">
						{{{each groups}}}
						<a href="{config.relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
						{{{end}}}
					</div>
				</div>
				<!-- ENDIF groups.length -->

				<!-- IF ips.length -->
				<div class="row">
					<div class="col-xs-12 hidden">
						<div class="panel-heading">
							<h3 class="panel-title">[[global:recentips]]</h3>
						</div>
						<div class="panel-body">
						{{{each ips}}}
							<div>{ips}</div>
						{{{end}}}
						</div>
					</div>
				</div>
				<!-- ENDIF ips.length -->

				<div class="row">
					{{{ if bestPosts.length }}}
					<div class="col-lg-12 col-xs-12" style="display: none;">
						<h1>[[pages:account/best, {username}]]</h1>

						<div class="col-xs-12">
							<ul component="posts" class="posts-list g-posts-list">
							{{{each bestPosts}}}
							<!-- IMPORT partials/posts_list_item.tpl -->
							{{{end}}}
							</ul>
						</div>
					</div>
					{{{ end }}}
					{{{ if latestPosts.length}}}
					<div class="col-lg-12 col-xs-12">
						<!-- <h1>[[pages:account/latest-posts, {username}]]</h1>  -->
						<div class="col-xs-12">
							<ul component="posts" class="posts-list g-posts-list">
							{{{each latestPosts}}}
							<!-- IMPORT partials/posts_list_item.tpl -->
							{{{end}}}
							</ul>
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
	<div id="user-action-alert" class="alert alert-success hide"></div>
</div>
