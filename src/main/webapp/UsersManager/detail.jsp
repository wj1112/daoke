<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="shortcut icon" type="image/x-icon" href="https://static.zhihu.com/static/favicon.ico"/>
<link href="css/main.app.dc.css" rel="stylesheet"/>
<div class="page-content">
    <div class="page-header">
        <h1>
            用户信息
            <%--<small>
                <i class="icon-double-angle-right"></i>
                Common form elements and layouts
            </small>--%>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div id="root">
            <div data-zop-usertoken="{&quot;urlToken&quot;:&quot;lue-dong-shang-xia-wu-nian&quot;}" data-reactroot="">
                <div class="LoadingBar"></div>
                <div>
                    <header role="banner" class="Sticky AppHeader" data-za-module="TopNavBar">
                    </header>
                </div>
                <main role="main" class="App-main">
                    <div class="ProfileEdit">
                        <div class="Card">
                        </div>
                        <div class="ProfileHeader-main">
                            <div>
                                <div class="UserAvatarEditor ProfileHeader-avatar">
                                    <div class="UserAvatar">
                                        <img class="Avatar Avatar--large UserAvatar-inner" width="160"
                                             height="160"
                                             src="${users.getHeadPortrait() eq null ? 'userImage/default.gif' : users.getHeadPortrait()}"/>
                                    </div>
                                </div>
                                <div class="ProfileHeader-content">
                                    <div class="ProfileHeader-contentHead">
                                        <h1 class="ProfileHeader-title">
                                            <div class="FullnameField-editable"><span
                                                    class="FullnameField-name">${users.getUsername()}</span>
                                            </div>
                                        </h1>
                                        <div class="ProfileHeader-expandActions ProfileEdit-expandActions">
                                        </div>
                                    </div>
                                    <div class="ProfileEdit-fields">
                                        <form class="Field">
                                            <h3 class="Field-label">id</h3>
                                            <div class="Field-content">
                                                <div><span class="Field-text">${users.getId() }</span>
                                                </div>
                                            </div>
                                        </form>

                                        <form class="Field">
                                            <h3 class="Field-label">用户类型</h3>
                                            <div class="Field-content">
                                                <div class="AddButton">${users.getUserType() }</div>
                                            </div>
                                        </form>

                                        <form class="Field">
                                            <h3 class="Field-label">性别</h3>
                                            <div class="Field-content">
                                                <div>${users.getSex() }</div>
                                            </div>
                                        </form>

                                        <form class="Field">
                                            <h3 class="Field-label">生日</h3>
                                            <div class="Field-content">
                                                <div class="AddButton">${users.getBirthday() }</div>
                                            </div>
                                        </form>
                                        <form class="Field">
                                            <h3 class="Field-label">QQ</h3>
                                            <div class="Field-content">
                                                <div>${users.getQq() }</div>
                                            </div>
                                        </form>
                                        <form class="Field">
                                            <h3 class="Field-label">电话</h3>
                                            <div class="Field-content">
                                                <div class="AddButton">${users.getMobile() }</div>
                                            </div>
                                        </form>
                                        <form class="Field Field-education">
                                            <h3 class="Field-label">Email</h3>
                                            <div class="Field-content">
                                                <div class="AddButton">${users.getEmail() }</div>
                                            </div>
                                        </form>

                                        <form class="Field">
                                            <h3 class="Field-label">创建时间</h3>
                                            <div class="Field-content">
                                                <div class="AddButton">${users.getCreateTime() }</div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </div>
</div>
