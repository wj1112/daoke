<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>道客巴巴 - 在线文档分享平台</title>
		<meta name="keywords" content="文档分享,在线,分享,道客巴巴">
		<meta name="description" content="道客巴巴(doc88.com)是一个在线文档分享平台。你可以上传论文,研究报告,行业标准,设计方案,电子书等电子文档，可以自由交换文档，还可以分享最新的行业资讯。">
		<link rel="shortcut icon" href="http://static.doc88.com/resources/images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="css/kind-css/iconfont.css">

		<link rel="stylesheet" type="text/css" href="css/kind-css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/kind-css/layout.css"/>
		<link rel="stylesheet" type="text/css" href="css/kind-css/form.css">
		<link rel="stylesheet" type="text/css" href="css/kind-css/window.css">
		<script type="text/javascript" src="js/kind-js/jquery-1.8.1.min.js"></script>
		<script language="JavaScript" type="text/javascript" src="js/kind-js/jquery.form.js"></script>
		<script type="text/javascript">
			var global_page = "list";
		</script>
		<script language="JavaScript" type="text/javascript" src="js/kind-js/commonjs.js"></script>
		<link rel="stylesheet" type="text/css" href="css/index-css/1150.css">
		<style>
			body {
				background: url(img/kind-imgs/skin-paper1.png) repeat;
				background-attachment: fixed;
			}
		</style>

	</head>

	<body>

		<div class="topshop">
			<div class="mainpart">
				<div class="tabs2">
					<ul class="tab">
						<li id="skins1" onclick="setTab('skins',1,2)" class="current">图案背景</li>
						<li id="skins2" onclick="setTab('skins',2,2)">纯色背景</li>
					</ul>
					<div class="tabcont">
						<div id="skin_panel_1" class="skin-panel" style="width: 1090px;">
							<div id="con_skins_1" style="width: 4620px;">
								<ul class="skin-list" id="skin-list-img">
									<li id="skin-img-li-1" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-paper1-img.png" class="current">
										<div class="skinimg"><span class="checked"></span></div>
										<p>素色纸张</p>
									</li>
									<li id="skin-img-li-2" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-paper3-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>深色纸张</p>
									</li>
									<li id="skin-img-li-3" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-paper2-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>牛皮纸张</p>
									</li>
									<li id="skin-img-li-4" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-paper4-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>个性纸张</p>
									</li>
									<li id="skin-img-li-5" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-blackboard-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>再回课堂</p>
									</li>
									<li id="skin-img-li-6" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-birthday-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>生日礼物</p>
									</li>
									<li id="skin-img-li-7" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-wedding-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>我结婚啦</p>
									</li>
									<li id="skin-img-li-8" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-modern-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>摩登男女</p>
									</li>
									<li id="skin-img-li-9" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-LV-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>我爱驴牌</p>
									</li>
									<li id="skin-img-li-10" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-cat1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>可爱猫咪</p>
									</li>
									<li id="skin-img-li-11" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-dance1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>现代舞者</p>
									</li>
									<li id="skin-img-li-12" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>雪青机理</p>
									</li>
									<li id="skin-img-li-13" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture8-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>群青花纹</p>
									</li>
									<li id="skin-img-li-14" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture9-img.jpg">
										<div class="skinimg"><span class="checked"></span></div>
										<p>古典画布</p>
									</li>
									<li id="skin-img-li-15" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture2-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>传统纹理</p>
									</li>
									<li id="skin-img-li-16" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture3-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>时尚鱼纹</p>
									</li>
									<li id="skin-img-li-17" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-black1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>黑色细纹</p>
									</li>
									<li id="skin-img-li-18" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture4-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>抽象星云</p>
									</li>
									<li id="skin-img-li-19" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture5-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>蓝色科幻</p>
									</li>
									<li id="skin-img-li-20" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture6-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>卡通图案</p>
									</li>
									<li id="skin-img-li-21" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-texture7-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>小小愿望</p>
									</li>
									<li id="skin-img-li-22" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-fur1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>浅色皮面</p>
									</li>
									<li id="skin-img-li-23" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-cloth1-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>灰色麻布</p>
									</li>
									<li id="skin-img-li-24" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-bamboo-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>实木底纹</p>
									</li>
									<li id="skin-img-li-25" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-wood-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>浅色木纹</p>
									</li>
									<li id="skin-img-li-26" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-rockwall-img.jpg">
										<div class="skinimg"><span class="checked"></span></div>
										<p>坚实墙壁</p>
									</li>
									<li id="skin-img-li-27" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-stonewall-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>深色石壁</p>
									</li>
									<li id="skin-img-li-28" type="0" skinimg="https://static.doc88.com/assets/images/skin/skin-blackmetal-img.png">
										<div class="skinimg"><span class="checked"></span></div>
										<p>黑色金属</p>
									</li>
								</ul>
							</div>
						</div>
						<div id="skin_panel_2" class="skin-panel" style="width: 1090px;">
							<div id="con_skins_2" class="hide" style="width: 2640px;">
								<ul class="skin-list" id="skin-list-color">
									<li id="skin-color-li-1">
										<div class="skinimg">
											<div style="background:#ffffff"></div><span class="checked"></span></div>
										<p>纯白无色</p>
									</li>
									<li id="skin-color-li-2">
										<div class="skinimg">
											<div style="background:#d6e6d5"></div><span class="checked"></span></div>
										<p>轻柔淡绿</p>
									</li>
									<li id="skin-color-li-3">
										<div class="skinimg">
											<div style="background:#d8ae92"></div><span class="checked"></span></div>
										<p>清淡棕色</p>
									</li>
									<li id="skin-color-li-4">
										<div class="skinimg">
											<div style="background:#ffb3a7"></div><span class="checked"></span></div>
										<p>粉红妃色</p>
									</li>
									<li id="skin-color-li-5">
										<div class="skinimg">
											<div style="background:#e0eee8"></div><span class="checked"></span></div>
										<p>淡青灰色</p>
									</li>
									<li id="skin-color-li-6">
										<div class="skinimg">
											<div style="background:#e4c6d0"></div><span class="checked"></span></div>
										<p>藕荷紫色</p>
									</li>
									<li id="skin-color-li-7">
										<div class="skinimg">
											<div style="background:#665757"></div><span class="checked"></span></div>
										<p>黝黑肤色</p>
									</li>
									<li id="skin-color-li-8">
										<div class="skinimg">
											<div style="background:#6b6882"></div><span class="checked"></span></div>
										<p>淡青黑色</p>
									</li>
									<li id="skin-color-li-9">
										<div class="skinimg">
											<div style="background:#758a99"></div><span class="checked"></span></div>
										<p>墨灰颜色</p>
									</li>
									<li id="skin-color-li-10">
										<div class="skinimg">
											<div style="background:#88ada6"></div><span class="checked"></span></div>
										<p>苍翠水色</p>
									</li>
									<li id="skin-color-li-11">
										<div class="skinimg">
											<div style="background:#f3d3e7"></div><span class="checked"></span></div>
										<p>淡彩水红</p>
									</li>
									<li id="skin-color-li-12">
										<div class="skinimg">
											<div style="background:#d3e0f3"></div><span class="checked"></span></div>
										<p>淡青水色</p>
									</li>
									<li id="skin-color-li-13">
										<div class="skinimg">
											<div style="background:#a4e2c6"></div><span class="checked"></span></div>
										<p>艾草绿色</p>
									</li>
									<li id="skin-color-li-14">
										<div class="skinimg">
											<div style="background:#bbcdc5"></div><span class="checked"></span></div>
										<p>蟹壳青色</p>
									</li>
									<li id="skin-color-li-15">
										<div class="skinimg">
											<div style="background:#424c50"></div><span class="checked"></span></div>
										<p>鸦羽紫青</p>
									</li>
									<li id="customColorLi">
										<div class="skinimg">
											<div class="addcolor"></div><span class="checked"></span></div>
										<p>自定义颜色</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="skinpaging">
							<a href="javascript:void(0)" class="prevskin"></a>
							<a href="javascript:void(0)" class="nextskin"></a>
						</div>
					</div>
					<!--end tabcont-->
				</div>
				<!--end tab2-->
			</div>
			<!--end mainpart-->
		</div>
		<!--end topshop-->
		<div class="header" id="header">
			<div class="mainpart">
				<div class="logo">
					<a href="http://www.doc88.com/">
						<img src="img/kind-img/doc88.png" style="display:none">
						<img src="img/kind-img/logo1.png" class="logoimg">
						
					</a>
				</div>

				<div class="mainnav">
					<ul class="nav">
						<li>
							<a href="/">首页</a>
						</li>
						<li class="dropdown">
							<a href="#">文档</a>
							<div class="dorpmenu2 hide">
								<ul class="categorys">
									<li>
										<a class="subnav" href="#" target="_blank" title="行业资料">行业资料</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="考试资料">考试资料</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="教学课件">教学课件</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="学术论文">学术论文</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="技术资料">技术资料</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="金融财经">金融财经</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="研究报告">研究报告</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="法律文献">法律文献</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="管理文献">管理文献</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="社会科学">社会科学</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="生活休闲">生活休闲</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="计算机">计算机</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="经济文库">经济文库</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="数字媒体">数字媒体</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="教材教辅">教材教辅</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="企业档案">企业档案</a>
									</li>
									<li>
										<a class="subnav" href="#" target="_blank" title="网络文学">网络文学</a>
									</li>
								</ul>
								<sup class="arr"></sup>
							</div>
						</li>
						<li>
							<a href="#">任务</a>
						</li>
						<li>
							<a href="#">文辑</a>
						</li>
						<li>
							<a href="#">道客圈</a>
						</li>

						<!--li><a href="#">组</a></li-->

					</ul>
				</div>
				<!--end mainnav-->

				<div class="usershop">
					<ul>
						<li id="loginBar">

							<div class="user1">
								<a class="login" href="javascript:DOC88Window.win({message:'/js/home/window.html?v=1.5&amp;act=window_login&amp;forward=',height:270,width:600,title:'用户登录',iframe:true});">登录</a>&nbsp; | &nbsp;
								<a class="register" href="javascript:DOC88Window.win({message:'/js/home/window.html?v=1.5&amp;act=window_reg&amp;forward=',height:465,width:600,title:'注册一个新的道客巴巴帐号',iframe:true});">注册</a>
							</div>

						</li>
						<li class="shop1">
							<form class="bigsearch" id="searchForm" method="post" onsubmit="return search_submit();" target="_blank">
								<input type="text" placeholder=" 在道客巴巴数亿文档库中搜索..." class="stext" onfocus="this.placeholder=''" onblur="if(this.value=='')this.placeholder=' 在道客巴巴数亿文档库中搜索...';" id="keyword">
								<input type="submit" class="sbtncss" value="">
							</form>
						</li>
						<li class="shop1">
							<button type="button" style="display: block;" class="btnupload1" onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');"><i class="iconfont"></i> 上传我的文档</button>
							<button type="button" style="display: none;" title="上传我的文档" class="btnupload2" onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');"><i class="iconfont"></i></button>
							<button type="button" style="display: block;" class="btnupload3" onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');"><i class="iconfont"></i> 上传文档</button>
						</li>

					</ul>

				</div>
				<!--end shop-->
			</div>
			<!--end mainpart-->
			<div class="skin-peeler" style="display: none;">
				<a href="javascript:void(0)">
					<img src="img/kind-imgs/skin-peeler.png" class="ie6png">
					
				</a>
			</div>
			<!--end skin-peeler -->
			<div class="skintips" style="display: none;">
				<img src="img/kind-imgs/skintips.png" class="ie6png">
				
				<a href="javascript:void(0)" title="关闭" class="close"></a>
				<a href="javascript:void(0)" title="试试" class="into "></a>
			</div>
			<!--end skintips-->
		</div>
		<!--end header-->
		<script src="js/kind-js/growth_value.js" type="text/javascript" charset="utf-8"></script>
		<div class="breadcrumb">
			<div class="mainpart">
				<p class="subnav">当前位置：
					<a href="#">所有文档</a>
				</p>
			</div>
			<!--end mainpart-->
		</div>
		<!--end readshop-->

		<div class="content">
			<div class="mainpart">
				<div class="layout02">
					<div class="boxright" id="boxright">
						<div class="at-doc-list-side">
							<a href="javascript:void(0);" onclick="goToFind()" class="sd-side-task-btn"><i class="iconfont"></i> 发布找文档任务</a>
							<div class="sd-side-tips">
								<i class="iconfont"></i>
								<p>
									找不到需要的文档？ <br>
									<span class="green">提交需求</span>，请网友为你提供文档
								</p>
							</div>
						</div>
						<div class="adpx250"><iframe style="padding-top:0px;" width="250" src="#" height="250" frameborder="0" scrolling="no"></iframe></div>
						<div class="adpx250" style="height:50px;"><iframe style="padding-top:0px;" width="250" src="#" height="50" frameborder="0" scrolling="no"></iframe>
						</div>
					</div>
					<!--end boxright-->
					<div class="boxleft" id="boxleft">
						<div class="list-manage">
							<dl class="list-manage-tools">
								<dt class="toolsbox1">
                        <h6><a href="ReceptionAction?method=classify&classifyId=-1">全部分类</a><span class="miaos"></span></h6>
                        </dt>
								<dd class="toolsbox2">
									<div class="siftbox">
										<ul class="list-filtrate2">
											<c:forEach var="classify" items="${classifys }" varStatus="vs">
											<li>
												<a href="ReceptionAction?method=classify&classifyId=${classify.id}" target="_top">${classify.name}</a>
											</li>
											</c:forEach>
										</ul>
										<span class="mode-open-more" style="display:none">展开</span>
									</div>
								</dd>
							</dl>
							<div class="list-filter">
								<ul class="list-filter-sort">
									<li class="item">
										<a href="#" id="formatAll">全部格式</a>
									</li>
									<li class="item">
										<a href="#" id="formatPDF">PDF</a>
									</li>
									<li class="item">
										<a href="#" id="formatDOC">DOC</a>
									</li>
									<li class="item">
										<a href="#" id="formatPPT">PPT</a>
									</li>
									<li class="item">
										<a href="#" id="formatXLS">XLS</a>
									</li>
									<li class="item">
										<a href="javascript:;" class="current" id="formatTXT">TXT</a>
									</li>
								</ul>
								<ul class="list-filter-view">
									<li class="item">
										<a href="javascript:;" class="iconfont current" id="tinyModal"></a>
									</li>
									<li class="item">
										<a href="javascript:;" class="iconfont" id="bigModal"></a>
									</li>
									<li class="item">
										<a href="javascript:;" class="iconfont" id="listModal"></a>
									</li>
								</ul>
							</div>
						</div>
						<!--end listmanage-->

						<!--end subsearch-->
						<ul class="commonlist1">
							<c:forEach var="file" items="${files }" varStatus="vs">
							<li class="alt">
								<dl class="imgtxt05">
									<dt>
										<div class="thumbnail_list hover_thumbnail">
                                			<a id="pdf1" style="background: url(&quot;http://png.doc88.com/2018/12/03/6901780483159_80.png&quot;) center center no-repeat rgb(255, 255, 255); display: block;"title="${file.title}" href="" target="_blank" rel="nofollow" orig="#g" loadif="1">
                               				 <span class="no_of_pages">34 p.</span><span class="outer_border"></span></a>
                                		</div>
									</dt>
									<dd>
										<div class="topic">
											<h3>
												<a href="${pageContext.request.contextPath}/file-pdf/${file.filename}.pdf" target="_blank" title="">${file.title}</a>
											</h3>
											<span class="list_right">
												<a href="fjy201922" target="_blank">${file.users.username}</a>分享于&nbsp;${file.createtime}
											</span>
										</div>
										<div class="depict">
											<p class="docintro" intropath="2018/12/03/6901780483159.xml.gz" p_id="1053659482"
												id="intro_1053659482" loadif="1" style="display: block;">
												${file.outline}
											</p>
										</div>
										<div class="other1">
										<ul class="ulist3">
											<li>分类：${file.classifyId}</li>
											<li >浏览：${file.browse}次</li>
											<li>格式：${file.type}</li>
											<li>积分：
												<font color="red">1000</font>
											</li>
											<li class="doc-hot">
												星级：<i class="iconfont current"></i><i class="iconfont"></i><i class="iconfont"></i><i class="iconfont"></i><i class="iconfont"></i>
											</li>
										</ul>
											<ul class="wordshop">

												<li class="down">
													<a href="FileUploadAction?method=downfile&id=${file.id}">下载</a>
												</li>

												<li class="like">
													<a href="javascript:addToFolder(1053659482)">收藏</a>
												</li>
												<li class="share">
													<a href="javascript:share('1053659482')">分享</a>
												</li>
											</ul>
										</div>
									</dd>
								</dl>
							</li>
							</c:forEach>
						</ul>
						<!--end commonlist1-->

						<div class="paging01">
							<ul>
								<li class="nextpage disable">上一页</li>
								<li class="number current">1</li>
								<li class="number">
									<a href="#">2</a>
								</li>
								<li class="number">
									<a href="#">3</a>
								</li>
								<li class="number">
									<a href="#">4</a>
								</li>
								<li class="number">
									<a href="#">5</a>
								</li>
								<li class="number">
									<a href="#">6</a>
								</li>
								<li class="number">
									<a href="#">7</a>
								</li>
								<li class="number">
									<a href="#">8</a>
								</li>
								<li class="number">
									<a href="#">9</a>
								</li>
								<li class="number">
									<a href="#">10</a>
								</li>
								<li class="number">
									<a href="#">11</a>
								</li>
								<li class="number">
									<a href="#">12</a>
								</li>
								<li class="number">
									<a href="#">13</a>
								</li>
								<li class="number">
									<a href="#">14</a>
								</li>
								<li class="number">
									<a href="#">15</a>
								</li>
								<li class="nextpage">
									<a class="nextpage" href="#">下一页</a>
								</li>
							</ul>
						</div>
						<!--end paging01-->
					</div>
					<!--end boxleft-->
					<div class="clearfix"></div>
				</div>
				<!--end layout01-->
			</div>
			<!--end mainpart-->
		</div>
		<!--end content-->
		<div class="activelist">
			<div class="mainpart">
				<div class="columns">
					<h3><a href="#" target="_blank">关于我们</a></h3>
					<ul>
						<li>
							<a href="#" target="_blank">关于道客巴巴</a>
						</li>
						<li>
							<a href="#" target="_blank">人才招聘</a>
						</li>
						<li>
							<a href="#" target="_blank">联系我们</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="#" target="_blank">网站声明</a>
						</li>
						<li>
							<a href="#" target="_blank">网站地图</a>
						</li>
						<li>
							<a href="#" target="_blank">APP下载</a>
						</li>
					</ul>
				</div>
				<div class="columns">
					<h3><a href="#" target="_blank">帮助中心</a></h3>
					<ul>
						<li>
							<a href="#" target="_blank">会员注册</a>
						</li>
						<li>
							<a href="#" target="_blank">文档下载</a>
						</li>
						<li>
							<a href="#" target="_blank">如何获取积分</a>
						</li>
					</ul>
				</div>
				<div class="columns">
					<h3>关注我们</h3>
					<ul>
						<li>
							<a href="http://weibo.com/doc88" target="_blank" class="weibo">新浪微博</a>

							<!-- 
				<iframe width="63" scrolling="no" height="24" frameborder="0" marginheight="0" marginwidth="0" border="0" allowtransparency="true" src="http://widget.weibo.com/relationship/followbutton.php?language=zh_cn&width=63&height=24&uid=1747483471&style=1&btn=red&dpc=1"></iframe>
				 -->
						</li>
					</ul>
				</div>
				<div class="columns-ad">
					<div class="qrcode">
						<img src="http://static.doc88.com/assets/images/weixin.jpg">
						<p>关注微信公众号</p>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--end activelist-->

		<div class="footer" id="footer">
			<div class="mainpart" style="min-width:950px;">
				<div class="copyrught">
					<p>道客巴巴网站 版权所有&nbsp;&nbsp;|&nbsp;©2008-2018&nbsp;&nbsp;|&nbsp;&nbsp;网站备案：京ICP备18056798号&nbsp;&nbsp;京公网安备1101082111号

					</p>
				</div>
				<div class="tel">
					<a href="#" target="_blank" class="service-qq" title="在线客服"></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--end footer-->
		<div class="toplayer-shop">
			<div class="gotop" id="gotop">
				<a href="javascript:void(0)" title="返回顶部" class="imglogo"><i class="iconfont"></i></a>
				<a href="javascript:void(0)" title="返回顶部" class="txtlogo">返回<br>顶部</a>
			</div>
			<!--div class="gotop" id="gotop"></div-->
		</div>

		<script language="JavaScript" type="text/javascript" src="js/kind-js/searchsug.js"></script>
		<script language="JavaScript" type="text/javascript" src="js/kind-js/windows.js"></script>
		<div>
			<div id="maskLevel" style="position:absolute;top:0;left:0;display:none;text-align:center;z-index:10000;"></div>
			<div id="ym-window" style="position:absolute;z-index:10001;display:none">
				<div class="ym-tl" id="ym-tl">
					<div class="ym-tr">
						<div class="ym-tc" style="cursor:move;">
							<div class="ym-header-text" id="ym-header-text"></div>
							<div class="ym-header-tools">
								<div class="DOC88Window_min" title="最小化"><strong>0</strong></div>
								<div class="DOC88Window_max" title="最大化"><strong>1</strong></div>
								<div class="DOC88Window_close" title="关闭"><strong>r</strong></div>
							</div>
						</div>
					</div>
				</div>
				<div class="ym-ml" id="ym-ml">
					<div class="ym-mr">
						<div class="ym-mc">
							<div class="ym-body" style="position:relative;z-index:99"></div>
						</div>
					</div>
				</div>
				<div class="ym-ml" id="ym-btnl">
					<div class="ym-mr">
						<div class="ym-btn"></div>
					</div>
				</div>
				<div class="ym-bl" id="ym-bl">
					<div class="ym-br">
						<div class="ym-bc"></div>
					</div>
				</div>
			</div>
		</div>
		<script language="javascript" type="text/javascript" src="js/kind-js/count.js"></script>

		<!--[if lt IE 10]>
<script type="text/javascript" src="http://static.doc88.com/assets/iecss3/PIE.js"></script>

<script type="text/JavaScript" src="js/pdfobject.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			$(function() {
					if(window.PIE) {
						$('').each(function() {
							PIE.attach(this);
						});
					}
					$("#listModal").click(function() {
						setCookie("cdb_list_model", "2", 30 * 24);
						window.location.reload();
					});
					$("#bigModal").click(function() {
						setCookie("cdb_list_model", "1", 30 * 24);
						window.location.reload();
					});
					$(".siftbox .mode-open-more").click(function() {
						$(this).toggleClass("mode-close-more");
						$(this).parent().find(".list-filtrate2").toggleClass("list-filtrate3") $(this).parent().find(".list-nametag").slideToggle("fast");
					});
					$("#formatAll").click(function() {
						setFormat("");
					});
					$("#formatPDF").click(function() {
						setFormat("PDF");
					});
					$("#formatDOC").click(function() {
						setFormat("DOC");
					});
					$("#formatPPT").click(function() {
						setFormat("PPT");
					});
					$("#formatXLS").click(function() {
						setFormat("XLS");
					});
					$("#formatTXT").click(function() {
						setFormat("TXT");
					});
				}

			);

			function setFormat(format) {
				setCookie("cdb_list_format", format, 30 * 24);
				var par = window.location.href.split("/")[3].split('.')[0];
				var page = 0;
				var parArray = par.split("-");
				if(parArray.length > 0) {
					page = parArray[parArray.length - 1];
				}
				if(page > 0) {
					window.location.href = (par + ".html").replace("-" + page + ".html", "-1.html");
				} else {
					window.location.reload();
				}
			}

			var lastScrollTime = 0;
			var loading = false;

			function loadIntro(textpath, p_id) {
				var imgloadif = $('#thumb_' + p_id).attr("loadIf");
				if(imgloadif != 1) {
					$("#thumb_" + p_id).hide();
					var img = $("#thumb_" + p_id).attr("orig");
					document.getElementById("thumb_" + p_id).style.backgroundImage = "url('" + img + "')";
					$('#thumb_' + p_id).fadeIn(500);
					$('#thumb_' + p_id).attr("loadIf", "1");
				}
				var loadIf = $('#intro_' + p_id).attr("loadIf");
				if(loadIf == 1 || loading) {
					return;
				}
				loading = true;
				$('#intro_' + p_id).attr("loadIf", "1");
				$('#intro_' + p_id).hide();
				$.ajax({
					url: "/doc.php?act=get_intro&p=" + textpath,
					dataType: "html",
					success: function(msg) {
						$('#intro_' + p_id).html(msg);
						$('#intro_' + p_id).fadeIn(500);
						loading = false;
						scrollListener();
					}
				});
			}

			function scrollListener() {
				var m_nowTime = new Date().getTime();
				if(m_nowTime - lastScrollTime > 200) {
					$(".docintro").each(function() {
						var loadIf = $(this).attr("loadIf");
						if(loadIf == 0) {
							var intropath = $(this).attr("intropath");
							var p_id = $(this).attr("p_id");
							var a = $(this).offset().top;
							if(a >= $(window).scrollTop() && a < ($(window).scrollTop() + $(window).height() + 300)) {
								loadIntro(intropath, p_id);
							}
						}
					});
				}
			}

			$(document).ready(function() {
					scrollListener();
				}

			);
			$(window).bind("scroll", function(event) {
					var nowTime = new Date().getTime();
					if(lastScrollTime < nowTime) {
						lastScrollTime = nowTime;
						scrollIntervalIndex = window.setInterval(scrollListener, 400);
					}
				}

			);

			function goToFind() {
				$.ajax({
					url: "/member.php?act=islogin",
					type: "get",
					dataType: "html",
					async: false,
					success: function(msg) {
						if(msg == "1") {
							window.open("/renwu/find.php?fr=t_2");
						} else {
							DOC88Window.win({
								message: '/js/home/window.html?v=1&act=window_login&actMethod=task_index_' + 2 + '',
								height: 270,
								width: 600,
								title: '用户登录',
								iframe: true
							});
						}
					}
				});
			}
            window.onload = function (){
                var success = new PDFObject({ url: "/file/java.pdf" ,pdfOpenParams: { scrollbars: '0', toolbar: '0', statusbar: '0'}}).embed("pdf1");
            };
			//setDocImg('http://cover.doc88.com/');
		</script>

		<div><iframe src="https://stat.doc88.com/count.do?screenSize=1366x768&amp;browser=Chrome&amp;os=UnKnow&amp;c=&amp;code=0.12411882418372966&amp;m=&amp;vm=&amp;url=http%3A%2F%2Fwww.doc88.com%2Flist.html&amp;app_name=Netscape&amp;refer_url=http%3A%2F%2Fwww.doc88.com%2F" width="0" height="0" style="display:none"></iframe></div>
	</body>

</html>