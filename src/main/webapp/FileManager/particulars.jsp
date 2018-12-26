<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx"  value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="zh" data-hairline="true" data-theme="light">

	<head>
		<meta charSet="utf-8" />
		<title data-react-helmet="true">编辑个人资料</title>
		<link rel="shortcut icon" type="image/x-icon" href="https://static.zhihu.com/static/favicon.ico" />
		<link href="${ctx}/css/main.app.dc.css" rel="stylesheet" />
	</head>

	<body class="Entry-body">
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
									<div class="UserAvatar"><img class="Avatar Avatar--large UserAvatar-inner" width="160" height="160" src="${ctx}/img/one.png" srcSet="https://pic1.zhimg.com/v2-7ed9d8c3bf0def309da5c9ee0b3287e0_xll.jpg 2x" /></div><label class="UploadPicture-wrapper"><input type="file" accept="${ctx}/image/png,image/jpeg" class="UploadPicture-input"/><div class="Mask UserAvatarEditor-mask"><div class="Mask-mask Mask-mask--black UserAvatarEditor-maskInner"></div><div class="Mask-content"><svg class="Zi Zi--Camera UserAvatarEditor-cameraIcon" fill="currentColor" viewBox="0 0 24 24" width="36" height="36"><path d="M20.094 6S22 6 22 8v10.017S22 20 19 20H4.036S2 20 2 18V7.967S2 6 4 6h3s1-2 2-2h6c1 0 2 2 2 2h3.094zM12 16a3.5 3.5 0 1 1 0-7 3.5 3.5 0 0 1 0 7zm0 1.5a5 5 0 1 0-.001-10.001A5 5 0 0 0 12 17.5zm7.5-8a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" fill-rule="evenodd"></path></svg><div class="UserAvatarEditor-maskInnerText">修改我的头像</div></div></div></label></div>
							</div>
							<div class="ProfileHeader-content">
								<div class="ProfileHeader-contentHead">
									<h1 class="ProfileHeader-title"><div class="FullnameField-editable"><span class="FullnameField-name">略懂上下五年</span></div></h1>
									<div class="ProfileHeader-expandActions ProfileEdit-expandActions">
									</div>
								</div>
								<div class="ProfileEdit-fields">
									<form class="Field">
										<h3 class="Field-label">作者</h3>
										<div class="Field-content">
											<div><span class="Field-text">${uploadFile.userId }</span></div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">文件名</h3>
										<div class="Field-content">
											<div>${uploadFile.filename }</div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">上传时间</h3>
										<div class="Field-content">
											<div class="AddButton">${uploadFile.createtime }</div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">文件路径</h3>
										<div class="Field-content">
											<div>${uploadFile.path }</div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">文件类型</h3>
										<div class="Field-content">
											<div class="AddButton">${ uploadFile.type}</div>
										</div>
									</form>
									<form class="Field Field-education">
										<h3 class="Field-label">下载量</h3>
										<div class="Field-content">
											<div class="AddButton">${uploadFile.download }</div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">浏览量</h3>
										<div class="Field-content">
											<div class="AddButton">${uploadFile.browse }</div>
										</div>
									</form>
									<form class="Field">
										<h3 class="Field-label">文章摘要</h3>
										<div class="Field-content">
											<div class="AddButton">${uploadFile.outline }</div>
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
	</body>

</html>