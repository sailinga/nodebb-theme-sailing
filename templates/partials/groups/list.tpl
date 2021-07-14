	{{{each groups}}}
	<div class="col-lg-4 col-md-6 col-sm-12" component="groups/summary" data-slug="{groups.slug}">
		<div class="panel panel-default">
			<h3 class="panel-title">{groups.displayName} </h3> <!--  <small>{groups.memberCount}</small> -->
			<a href="{config.relative_path}/groups/{groups.slug}" class="panel-heading list-cover">
				<img src="<!-- IF groups.cover:thumb:url -->{groups.cover:thumb:url} <!-- ENDIF groups.cover:thumb:url -->" alt="">
			</a>
			<div class="panel-body">
				<ul class="members">
					{{{each groups.members}}}
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