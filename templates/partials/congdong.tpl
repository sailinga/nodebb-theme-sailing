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