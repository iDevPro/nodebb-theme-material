<div id="header-menu">
<header id="header" component="navbar">
    <ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar" <!-- IF config.menuInHeader -->class="menu-header"<!-- ENDIF config.menuInHeader -->>
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>
    	<li class="logo <!-- IF config.menuInHeader -->menu-in-header<!-- ENDIF config.menuInHeader -->">
			<!-- IF brand:logo -->
            <a href="<!-- IF brand:logo:url -->{brand:logo:url}<!-- ELSE -->{relative_path}/<!-- ENDIF brand:logo:url -->">
                <img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}" />
            </a>
            <!-- ENDIF brand:logo -->

            <!-- IF config.showSiteTitle -->
			<a class="title" href="{relative_path}/">
				{title}
			</a>
			<!-- ENDIF config.showSiteTitle -->
        </li>

        <!-- IF config.menuInHeader -->
        <li class="hidden-xs">
            <ul class="header-menu" id="main-nav"> 
                <!-- BEGIN navigation -->
                <!-- IF function.displayMenuItem, @index -->
                <li class="{navigation.class}">
                    <a href="{navigation.route}" title="{navigation.title}" id="{navigation.id}"<!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
                        <!-- IF navigation.iconClass -->
                        <i class="fa fa-fw {navigation.iconClass}"></i>
                        <!-- ENDIF navigation.iconClass -->
                    </a>
                </li>
                <!-- ENDIF function.displayMenuItem -->
                <!-- END navigation -->
            </ul>
        </li>
        <!-- ENDIF config.menuInHeader -->

        <li class="pull-right">
        <ul class="top-menu">
            <li class="nav navbar-nav pagination-block visible-lg visible-md">
                <div class="dropdown">
                    <i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
                    <i class="fa fa-angle-up pointer fa-fw pageup"></i>

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="pagination-text"></span>
                    </a>

                    <i class="fa fa-angle-down pointer fa-fw pagedown"></i>
                    <i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

                    <div class="progress-container">
                        <div class="progress-bar"></div>
                    </div>

                    <ul class="dropdown-menu" role="menu">
                        <input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
                    </ul>
                </div>
            </li>

            <li>
                <a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
                    <i class="fa fa-check"></i>
                </a>
            </li>
            <!-- IF config.searchEnabled -->
            <li>
                <form id="search-form" class="hidden-xs" role="search" method="GET" action="">
                    <div class="hidden" id="search-fields">
                        <div class="form-group">
                            <div class="fg-line">
                                <input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default hide">[[global:search]]</button>
                    </div>
                    <button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw"></i></button>
                </form>
            </li>
            <!-- ENDIF config.searchEnabled -->
			
			<!-- IF config.loggedIn -->
            <li class="ts3-button dropdown" component="ts3">
    
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
                    <i class="fa fa-fw fa-headphones" component="ts3/icon" data-content="0"></i>
                </a>
                
                <div class="dropdown-menu dropdown-menu-lg pull-right ts3-popover" style="width: 320px !important; top: 42px !important; right: 0;">
                        <div class="listview">
                                <div class="lv-header">Wing.Academy TS</div>
                                <div id="ts3viewer_1054420" class="lv-body c-overflow" style="padding:8px;"></div>
                        </div>
                </div>

                <script type="text/javascript">
                <!--

                    $('.ts3-button').click(function (e) {
                        var id = '1054420';
                        var ts3v_url_1 = "https://www.tsviewer.com/ts3viewer.php?ID=" + id + "&text=000000&text_size=12&text_family=1&js=1&text_s_weight=bold&text_s_style=normal&text_s_variant=normal&text_s_decoration=none&text_s_color_h=525284&text_s_weight_h=bold&text_s_style_h=normal&text_s_variant_h=normal&text_s_decoration_h=underline&text_i_weight=normal&text_i_style=normal&text_i_variant=normal&text_i_decoration=none&text_i_color_h=525284&text_i_weight_h=normal&text_i_style_h=normal&text_i_variant_h=normal&text_i_decoration_h=underline&text_c_weight=normal&text_c_style=normal&text_c_variant=normal&text_c_decoration=none&text_c_color_h=525284&text_c_weight_h=normal&text_c_style_h=normal&text_c_variant_h=normal&text_c_decoration_h=underline&text_u_weight=bold&text_u_style=normal&text_u_variant=normal&text_u_decoration=none&text_u_color_h=525284&text_u_weight_h=bold&text_u_style_h=normal&text_u_variant_h=normal&text_u_decoration_h=none"; 
                        ts3v_display.init(ts3v_url_1, 1054420, 100);
                    });
                -->
                </script>

            </li>

            <li class="notifications dropdown" component="notifications">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
                    <i class="fa fa-fw fa-bell-o" component="notifications/icon" data-content="0"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg pull-right">
                    <div class="listview">
                        <div class="lv-header">
                            [[notifications:title]]
                        </div>
                        <div class="lv-body c-overflow" id="notif-list" component="notifications/list">
                            <a href="#" class="lv-item"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
                        </div>
                        <div class="lv-footer">
                        <a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a>
                        <hr />
                        <a href="{relative_path}/notifications">[[notifications:see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>

            <!-- IF !config.disableChat -->
            <li class="chats dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="chat_dropdown" component="chat/dropdown">
                    <i component="chat/icon" class="fa fa-comment-o fa-fw"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-md pull-right" aria-labelledby="chat_dropdown">
                    <div class="listview">
                        <div class="lv-body c-overflow chat-list" component="chat/list">
                            <a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a> 
                        </div>
                        <div class="lv-footer">
                            <a href="#" class="mark-all-read" component="chats/mark-all-read">[[modules:chat.mark_all_read]]</a>
                            <hr />
                            <a href="{relative_path}/chats">[[modules:chat.see_all]]</a>
                        </div>
                    </div>
                </div>
            </li>
            <!-- ENDIF !config.disableChat -->

            <li id="user_label" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown">
                    <img component="header/userpicture" src="{user.picture}" alt="{user.username}" class="user-picture" id="user-header-picture"<!-- IF !user.picture --> style="display:none;"<!-- ENDIF !user.picture --> />
                    <div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture -->display:none;<!-- ENDIF user.picture -->">{user.icon:text}</div>
                </a>
                <ul id="user-control-list" component="header/usercontrol" class="dropdown-menu pull-right" aria-labelledby="user_dropdown">
                    <li>
                        <a component="header/profilelink" id="user-profile-link" href="{relative_path}/user/{user.userslug}">
                            <i component="user/status" class="status {user.status}"></i> <span component="header/username" id="user-header-name">{user.username}</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li>
                        <a href="#" class="user-status" data-status="online">
                            <i class="status online"></i><span> [[global:online]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="away">
                            <i class="status away"></i><span> [[global:away]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="dnd">
                            <i class="status dnd"></i><span> [[global:dnd]]</span>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="user-status" data-status="offline">
                            <i class="status offline"></i><span> [[global:invisible]]</span>
                        </a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li>
						<a href="{relative_path}/user/{user.userslug}/edit">
							<i class="fa fa-fw fa-edit"></i><span> [[user:edit-profile]]</span>
						</a>
					</li>
					<li>
						<a href="{relative_path}/user/{user.userslug}/settings">
							<i class="fa fa-fw fa-gear"></i><span> [[user:settings]]</span>
						</a>
					</li>
					<li role="presentation" class="divider"></li>
                    <li component="user/logout">
                        <a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
                    </li>
                </ul>
            </li>
            <!-- ELSE -->
            <!-- IF allowRegistration -->
            <li class="hidden-xs">
                <a href="{relative_path}/register">
					<span>[[global:register]]</span>
				</a>
            </li>
            <!-- ENDIF allowRegistration -->
            <li class="hidden-xs">
            	<a href="{relative_path}/login">
					<span>[[global:login]]</span>
				</a>
            </li>
            <!-- ENDIF config.loggedIn -->
            </ul>
        </li>
    </ul>
    
</header>
</div>
<section id="main" class="<!-- IF menuInHeader -->visible-xs<!-- ENDIF menuInHeader -->">
    <aside id="sidebar">
        <div class="sidebar-inner">
            <div class="si-inner">
                <ul class="main-menu" id="main-nav">
                    <li id="toggle-width" class="hidden-xs">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>
                    <!-- IF !config.loggedIn -->  
                    <!-- IF allowRegistration -->
                    <li class="visible-xs">
                        <a href="{relative_path}/register">
                            <i class="fa fa-pencil fa-fw"></i> [[global:register]]
                        </a>
                    </li>
                    <!-- ENDIF allowRegistration -->
                    <li class="visible-xs">
                        <a href="{relative_path}/login">
                            <i class="fa fa-sign-in fa-fw"></i> [[global:login]]
                        </a>
                    </li>
                    <!-- ENDIF !config.loggedIn -->

                    <li class="visible-xs">
                        <a href="{relative_path}/search">
                            <i class="fa fa-search fa-fw"></i> [[global:search]]
                        </a>
                    </li>

					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a href="{navigation.route}" title="{navigation.title}" id="{navigation.id}" target="{navigation.properties.target}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->
							<!-- IF navigation.text -->
							{navigation.text}
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
                </ul>
            </div>
        </div>
    </aside>
</section>