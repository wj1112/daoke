<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<title>道客巴巴-在线文档分享平台</title>
		<meta name="keywords" content="文档分享,在线,分享,道客巴巴">
		<meta name="description" content="道客巴巴(doc88.com)是一个在线文档分享平台。你可以上传学术论文,研究报告,行业标准,课后答案,教学课件,工作总结,作文等电子文档，可以自由交换文档，还可以分享最新的行业资讯。">
		<link rel="shortcut icon" href="http://static.doc88.com/resources/images/favicon.ico">

		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/reset.css">
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/iconfont.css">
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/common.css">
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/captcha.css">
		<!--弹框样式-->
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/popup.css">
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/index.css">

		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/jquery-1.9.1.js/"></script>
		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/login.js"></script>
		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/uc.js"></script>
		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/qrcode_nomargin.js"></script>
		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/qrcode.js"></script>
		<script language="JavaScript" type="text/javascript" src="ReceptionStyle/js/index-js/wx_code_login.js"></script>
		<script type="text/javascript" language="JavaScript" src="ReceptionStyle/js/index-js/commonjs.js"></script>
		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/1150.css">
		<script type="text/javascript" language="JavaScript" src="ReceptionStyle/js/index-js/search.js"></script>

		<link rel="stylesheet" type="text/css" href="ReceptionStyle/css/index-css/window.css">
	</head>

	<body>

		<!-- 公共头 -->
		<!-- 新页头 -->
		<div class="header-func">
			<div class="wrapper">
				<ul>
					<li>
						<a href="javascript:location.reload();">
							<h1>道客巴巴</h1></a>
					</li>
					<li>|</li>
					<li>
						<a href="/app.html" target="_blank">APP下载</a>
					</li>
					<li>|</li>
					<li class="top-wx">
						<a href="#">微信公众号</a>
						<div class="top-wxcode">
							<img src="ReceptionStyle/img/index-imgs/weixin.jpg" alt="微信公众号">
							<span class="top-wxcode-arr"></span>
						</div>
					</li>
				</ul>
				<ol>
					<li>
						<a href="/uc/usr_account.php?act=deposit" target="_blank">账户充值</a>
					</li>
					<li>
						<a href="/vip.html" target="_blank" class="orange">加入VIP</a>
					</li>
					<li>
						<a href="/uc/message.php?act=show" target="_blank" class="msg-tips">消息<span id="new_msg"></span></a>
					</li>
				</ol>
			</div>
		</div>
		<div class="header">

			<div class="wrapper">
				<div class="logo">
					<a href="javascript:location.reload();">
						<img src="ReceptionStyle/img/index-imgs/logo.png" alt="">
					</a>
				</div>
				<div class="top-search">
					<a class="head-upload" href="ReceptionAction?method=upload&classifyId=-1"><i class="iconfont"></i> 上传我的文档</a>
					<div class="search-cm">
						<form class="bigsearch" id="searchForm" method="post" onsubmit="return search_submit();">
							<span class="search">
							<!--<a href="javascript:;" class="search-del" title="清空"></a>-->
							<input type="text" placeholder="在道客巴巴数亿文档库中搜索..." class="stext input_key" onfocus="this.placeholder=''" onblur="if(this.value=='')this.placeholder='在道客巴巴数亿文档库中搜索...';" id="keyword" autocomplete="off">
						</span>
							<span class="btn">
							<input type="submit" class="sbtncss" value="搜文档">
						</span>
							<a class="doc-seek" href="javascript:void(0)" onclick="doc_for_help();">文档求助</a>
							<div class="type-cho-con">
								<label for="t_all">
								<b class="check"><input type="radio" name="lm" value="0" class="type-check" id="t_all" checked=""></b>全部格式
							</label>
								<label for="t_doc">
								<b><input type="radio" name="lm" value="1" class="type-check" id="t_doc"></b>DOC
							</label>
								<label for="t_ppt">
								<b><input type="radio" name="lm" value="2" class="type-check" id="t_ppt"></b>PPT
							</label>
								<label for="t_pdf">
								<b><input type="radio" name="lm" value="3" class="type-check" id="t_pdf"></b>PDF
							</label>
								<label for="t_xls">
								<b><input type="radio" name="lm" value="4" class="type-check" id="t_xls"></b>XLS
							</label>
								<label for="t_txt">
								<b><input type="radio" name="lm" value="5" class="type-check" id="t_txt"></b>TXT
							</label>
								<div style="clear:both"></div>
							</div>
						</form>
						<div class="search-rhint">
							<ul class="hint-list">

							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 导航 -->
			<div class="nav">
				<div class="wrapper">
					<div class="personal-con">
						<i class="arr iconfont"></i>
						<div class="user-name">滚石</div>
						<div class="notice">
							<i class="iconfont"></i>
						</div>

						<ul class="msg">
							<li>
								<a href="/uc/index.php" target="_blank"><i class="iconfont"></i> 个人中心</a>
							</li>
							<li>
								<a href="/uc/doc_manager.php?act=doc_list&amp;state=all" target="_blank"><i class="iconfont"></i>我的文档</a>
							</li>
							<li>
								<a href="/renwu/center.php" target="_blank"><i class="iconfont"></i> 我的任务</a>
							</li>
							<li>
								<a href="/uc/usr_member.php" target="_blank"><i class="iconfont"></i> 账号设置</a>
							</li>
							<li>
								<a href="/member.php?act=logout"><i class="iconfont"></i> 退出登录</a>
							</li>
						</ul>

					</div>
					<div class="nav-list">
						<a class="current" href="javascript:location.reload();">道客巴巴</a>
						<a href="ReceptionAction?method=getFiles&classifyId=-1" target="_blank">分类</a>
						<a href="/b-list.html" target="_blank">文辑</a>
						<a href="http://biaozhun.doc88.com/std.html" target="_blank">标准</a>
						<a href="/t-list.html" target="_blank">任务</a>
						<a href="/circle-topic.html" target="_blank">道客圈</a>
						<a href="/jigou.php" target="_blank">品牌合作</a>
						<a href="/app.html" target="_blank">客户端</a>
					</div>

				</div>
			</div>
			<!-- 导航结束 -->
		</div>
		<!-- 悬浮搜索 -->
		<div class="new-header">
			<div class="wrapper">
				<div class="logo">
					<a href="javascript:location.reload();" class="nh-logo">
						<img src="ReceptionStyle/img/index-imgs/sus-logo.png" alt="">
					</a>
					<a href="javascript:location.reload();" class="channel_home active"><i class="iconfont"></i>首页</a>
					<a href="/list.html" target="_blank" class="channel_home"><i class="iconfont"></i>分类</a>
				</div>
				<div class="top-search">
					<a class="nh-user" href="/w43542887" target="_blank">
						<img class="user-img" src="ReceptionStyle/img/index-imgs/7788437048568_160.png" alt=""></a>
					<a href="ReceptionAction?method=upload&classifyId=-1"><i class="iconfont"></i> 上传我的文档</a>
					<form class="bigsearch" id="searchForm1" method="post" onsubmit="return search_submit_float();">
						<span class="search">
						<input type="text" placeholder="在道客巴巴数亿文档库中搜索..." class="stext" onfocus="this.placeholder=''" onblur="if(this.value=='')this.placeholder='在道客巴巴数亿文档库中搜索...';" id="keyword1" autocomplete="off">
					</span>

						<span class="btn">
						<input type="submit" value="搜文档">
					</span>
						<!--<button class="btn">
						<i class="iconfont">&#xe717;</i>
					</button>-->
						<a class="doc-seek" href="javascript:void(0)" onclick="float_doc_for_help();">文档求助</a>
					</form>

				</div>
			</div>
		</div>

		<!-- top2.0 js -->
		<script type="text/javascript">
			//  getLoginSta("personal",1);
			//  $(function(){
			// 个人信息二级菜单宽度设置
			// 搜索焦点动画
			//      $(".new-header .search input").focus(function() {
			//          $(".new-header .doc-seek").addClass('seekhide');
			//          $(".new-header .top-search .search").addClass('focusSearch');
			//      });
			//      $(".new-header .search input").blur(function() {
			//          $(".new-header .doc-seek").removeClass('seekhide');
			//          $(".new-header .top-search .search").removeClass('focusSearch');
			//      });

			//分类二级
			//      $(".nav-inner-btn").mouseover(function() {
			//          $(this).addClass('current').parent('.logo').find('.nav-inner').show();
			//      });
			//      $(".logo").mouseleave(function() {
			//          $('.nav-inner-btn').removeClass('current');
			//          $('.nav-inner').hide();
			//      });

			//  })
			$(document).click(function(event) {
				var tarId = $(event.target).attr("id");
				if(tarId != "keyword")
					$('.search-hint,.search-rhint').hide();
			});
			$('document').keyup(function(e) {
				if(e.keyCode == 13) {
					//		Search.goSearch();这是去执行搜索的方法
					$("#keyword").blur();
				}
			});
			$('#keyword').keyup(function(e) {
				if(e.keyCode == 38) {
					var active = $(".hint-list li.active");
					if(active.length) {
						var prev = active.prev();
						if(prev.length) {
							prev.addClass("active").siblings().removeClass("active");
						} else {
							$(".hint-list li:last").addClass("active").siblings().removeClass("active");
						}
					} else {
						$(".hint-list li:last").addClass("active");
					}
					if(active.length)
						$("#keyword").val($("li.active").text());
				} else if(e.keyCode == 40) {
					var active = $(".hint-list li.active");
					if(active.length) {
						var next = active.next();
						if(next.length) {
							next.addClass("active").siblings().removeClass("active");
						} else {
							$(".hint-list li:first").addClass("active").siblings().removeClass("active");
						}
					} else {
						$(".hint-list li:first").addClass("active");
					}
					if(active.length)
						$("#keyword").val($("li.active").text());
				} else {
					Search.showSuggest();
				}

			});
			$('#keyword').click(function(event) {
				Search.showSuggest();
			});
			//$(".input_key").blur(function(event) {
			//	if(this.value=='')this.placeholder='在道客巴巴十亿文档库中搜索...';
			//	
			//	$(".search-rhint").hide();
			//});
			$(".search-del").click(function(event) {
				$("#keyword").val('');
				$("#keyword").focus();
				$(".search-rhint").hide();
			});
		</script>
		<!-- 内容 -->
		<div class="container">
			<div class="wrapper">
				<div class="screen-first clearfix">

					<div class="directory">
						<!--<h3 class="d-title">文档分类</h3>-->
						<ul class="d-detail">
							<li>
								<span class="d-m-t">教育专区</span>
								<p class="d-m-c">
									<a href="/list-8141.html" target="_blank">幼儿教育</a>
									<span class="min-line"></span>
									<a href="list-8240.html" target="_blank">小学教育</a>
									<span class="min-line"></span>
									<a href="/list-8142.html" target="_blank">初中教育</a>
								</p>
								<p class="d-m-c">
									<a href="/list-8143.html" target="_blank">高中教育</a>
									<span class="min-line"></span>
									<a href="/list-8144.html" target="_blank">高等教育</a>
									<span class="min-line"></span>
									<a href="/list-8241.html" target="_blank">升学考试</a>
								</p>
							</li>
							<li>
								<span class="d-m-t">热门分类</span>
								<p class="d-m-c">
									<a href="/list-8121.html" target="_blank">求职招聘</a>
									<span class="min-line"></span>
									<a href="/list-8245.html" target="_blank">考研资料</a>
									<span class="min-line"></span>
									<a href="/list-8241.html" target="_blank">中考高考</a>
								</p>
								<p class="d-m-c">
									<a href="/list-3955.html" target="_blank">职业考试</a>
									<span class="min-line"></span>
									<a href="list-8131.html" target="_blank">合同协议</a>
									<span class="min-line"></span>
									<a href="/list-4160.html" target="_blank">生活休闲</a>
								</p>
							</li>
							<li style="border-bottom: 0;">
								<!--<a href="index.php?act=category_list">-->
								<span class="d-m-t">标准专区</span>
								<p class="d-m-c">
									<a href="http://biaozhun.doc88.com/stdlist.html" target="_blank">国家标准</a>
									<span class="min-line"></span>
									<a href="http://biaozhun.doc88.com/stdlist.html" target="_blank">行业标准</a>
									<span class="min-line"></span>
									<a href="http://biaozhun.doc88.com/stdlist.html" target="_blank">地方标准</a>
								</p>
								<p class="d-m-c">
									<a href="http://biaozhun.doc88.com/stdorglist.html" target="_blank">企业标准</a>
									<span class="min-line"></span>
									<a href="http://biaozhun.doc88.com/stdgrouplist.html" target="_blank">团体标准</a>
									<span class="min-line"></span>
									<a href="http://biaozhun.doc88.com/stdintllist.html" target="_blank">国际标准</a>
								</p>
								<!--</a>-->
							</li>
						</ul>
					</div>
					<div class="banner">
						<!-- <div class="bannerbox">
						<img src="ReceptionStyle/images/banner.jpg" alt="">
					</div> -->

						<div class="bannerbox">
							<a href="http://www.daokeyuedu.com/" target="_blank" class="img imgz">
								<img src="ReceptionStyle/img/index-imgs/ad1538039809.png" alt="">
							</a>
							<a href="http://www.doc88.com/t-list.html" target="_blank" class="img imgz">
								<img src="ReceptionStyle/img/index-imgs/ad1537427769.png" alt="">
							</a>
							<a href="http://biaozhun.doc88.com/stdlist.html" target="_blank" class="img imgz">
								<img src="ReceptionStyle/img/index-imgs/ad1537427795.png" alt="">
							</a>
							<ul class="banner-radio">
								<li class="current" onmouseover="banner_radioHover(this);"></li>
								<li onmouseover="banner_radioHover(this);"></li>
								<li onmouseover="banner_radioHover(this);"></li>
							</ul>
						</div>
					</div>
					<%--<div class="user-box">
					<!-- 未登录状态 -->
					<div class="user-login wx">
						<a onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');"  href="javascript:;" class="btn-upload-doc"><i class="iconfont"></i> 上传我的文档</a>
                        <!-- 登录 & 个人信息 -->
						<div class="userlogin-box">
							<div class="user-login-top">
								<span class="pc-login" onclick="clearAjax('https://static.doc88.com')"></span>
								微信扫码，安全登录
							</div>
							<div class="user-msg">
								<!--<img src="https://static.doc88.com/resources/images/wx-login.png" alt="">-->
                             <!-- 扫码区域 -->
							 	<div class="qrcode-login" >
                 	<span id="doc_qrcode"></span>
                 	<div id="logo">
						<img src="https://static.doc88.com/assets/images/ajax-loader.gif" style="width:32px;height:32px;"/>
                 	</div>
               	</div>
							</div>
							<div class="wx-login-tips">
								<p>打开微信，扫一扫登录</p>
							</div>
							<div class="else-login">
								<a href="" class="free-register">密码登录</a>
								<span class="fr"> | </span>
								<a href="/member.php?act=reg" target="_blank" class="free-register">注册新账号</a>
							</div>
						</div>
                        <!-- 登录 & 个人信息 -->
					</div>

					<div class="user-login pw show">
						<a onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');"  href="javascript:;" class="btn-upload-doc"><i class="iconfont"></i> 上传我的文档</a>
						<div class="userlogin-box">
						  <div class="user-login-top">
					      <span class="weixin-login" onclick="showWxLoginIndex('https://static.doc88.com');return false;"></span>
								<!--<span class="min-logo"></span>-->
								账号登录
								<!-- 报错的这个p不能删 -->
								<p class="error-msg"></p>
							</div>
							<form action="LoginServle?method=Login" class="user-msg" method="post" id="form_login1">

								<div class="user-msg-head">
									<span class="icon"></span>
									<input placeholder="用户名" onfocus="this.placeholder=''" onblur="this.placeholder='用户名'" type="text" name="txtloginname" id="loginname1">
								</div>
								<div class="user-msg-password">
									<span class="icon"></span>
									<input placeholder="密码" onfocus="qrcode_hide();" type="password" name="txtPassword" id="password1">
								</div>
								<!--<p class="user-msg-verify">

								</p>-->

			                	<!--滑块验证-->
			             		<div class="captcha-able" style="display: none;">
							          <!--<p class="check-it-text">为了信息安全，请拖动滑块完成验证。</p>-->
							          <dd  id="nocaptcha_login" style="height: 30px;">
			                    <div class="grade_warp" style="display: block;">
			                    <input type="hidden" id="captchaCode" name="captchaCode" value="0"/>
			                    <div class="User_ratings User_grade" id="div_fraction0">
			                     <div class="ratings_bars">
			                     加载中......
			                     </div>
			                    </div>
			                    </div>
			                  </dd>
							        </div>
							        <p class="msgs1" id="msgs1" style="display: none;"></p>
							        <br/>
			                	<!--滑块验证-->

								<div id="wx_login_code_index" style="background-color: #fff;display: none">
									<span id="check_code" class="verify">
										微信验证码：
										<input class="textcsss" id="wx_valide_index" name="valide" maxlength="4" onkeyup="qrcode_hide(0)" onblur="qrcode_hide(1)" onfocus="qrcode_show(this);" type="text">
										
										<div class="qrcode-show" style="display: none;">
											<span style="position:relative;display: block;">
												<span class="doc_qrcode" style="display:block"></span>
											</span>
											<em class="arrow"></em>
										</div>
										<span onmouseover="qrcode_show();" onmouseleave="qrcode_hide(0)" style="margin-left: 15px;">
											<i class="iconfont">&#xe662;</i>
											<a href="javascript:;" style="font-size: 12px;color: #146C88;" onclick="re_wxcode();">重新获取</a>
										</span>
										<i class="iconfont hide green" id="wx_ok_index">&#xe648;</i>
										
										<span class="hide" style="color:#ff1000;" id="wx_error_index">微信验证码错误</span>
									</span>
								</div>

								<div class="else-login login-check">
									<div class="login-check-right">
										<a href="/member.php?act=forget" target="_blank" class="free-register">忘记密码</a>
										<span class="fr"> | </span>
										<a href="/member.php?act=reg" target="_blank" class="free-register">注册</a>
									</div>
									<span class="analog-check">
										<b>
											<input checked="checked" id="agree" name="txtAutologin" value="" type="checkbox">
										</b>
										记住密码
									</span>
								</div>
								<button class="btn-upload-doc" onclick="return login_back_index('index');">登 录</button>
							</form>

						</div>
					</div>
					<!-- 未登录状态结束 -->
				</div>--%>

				</div>
				<!--猜您喜欢-->
				<div class="currency">
					<div class="maybelike">
						<div class="mb-title">
							<div class="change-like" onclick="indexLike()">换一组 <i class="iconfont"></i></div>
							猜你喜欢
						</div>
						<div class="book-like-con">
							<div class="books-each">
								<div class="bookcover-bd">
									<a class="bookcover" style="background: url(http://png.doc88.com/2012/04/25/580676581687_160.png) center center no-repeat scroll; display: block;" href="/p-580676581687.html" target="_blank"></a>
								</div>
								<a class="books-title" href="/p-580676581687.html" target="_blank">督灸</a>
							</div>
							<div class="books-each">
								<div class="bookcover-bd">
									<a class="bookcover" style="background: url(http://png.doc88.com/2012/12/03/187692489235_160.png) center center no-repeat scroll; display: block;" href="/p-187692489235.html" target="_blank"></a>
								</div>
								<a class="books-title" href="/p-187692489235.html" target="_blank">火龙灸知识篇 PDF</a>
							</div>
							<div class="books-each">
								<div class="bookcover-bd">
									<a class="bookcover" style="background: url(http://png.doc88.com/2017/01/06/3827487053075_160.png) center center no-repeat scroll; display: block;" href="/p-3827487053075.html" target="_blank"></a>
								</div>
								<a class="books-title" href="/p-3827487053075.html" target="_blank">证券从业人员资格考试 证券基础知识三色版学习笔记+常考题库本人高分通过分享后来人</a>
							</div>
							<div class="books-each">
								<div class="bookcover-bd">
									<a class="bookcover" style="background: url(http://png.doc88.com/2014/07/15/6106785691325_160.png) center center no-repeat scroll; display: block;" href="/p-6106785691325.html" target="_blank"></a>
								</div>
								<a class="books-title" href="/p-6106785691325.html" target="_blank">汽车零部件物流网络优化系统的研究与设计</a>
							</div>
							<div class="books-each">
								<div class="bookcover-bd">
									<a class="bookcover" style="background: url(http://png.doc88.com/2012/05/16/375880332229_160.png) center center no-repeat scroll; display: block;" href="/p-375880332229.html" target="_blank"></a>
								</div>
								<a class="books-title" href="/p-375880332229.html" target="_blank">七年级数学二元一次方程组的解法同步练习</a>
							</div>
						</div>
					</div>
					<ul class="index-chanel">
						<li>
							<a href="/list-8140.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan1.png">教育频道</a>
						</li>
						<li>
							<a href="/list-1022.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan2.png">行业资料</a>
						</li>

						<li>
							<a href="/list-1399.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan3.png">实用文档</a>
						</li>
						<li>
							<a href="/list-3955.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan4.png">资格考试</a>
						</li>
						<li>
							<a href="/list-4160.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan5.png">生活休闲</a>
						</li>
						<li>
							<a href="/list-8383.html" target="_blank"><img src="ReceptionStyle/img/index-imgs/in-chan6.png">学术论文</a>
						</li>
					</ul>
				</div>
				<!-- 专区 -->
				<div class="column">
					<a href="https://www.doc88.com/b-0b37e6a0d481c107.html" target="_blank">
						<img src="ReceptionStyle/img/index-imgs/ad1537432318.png" alt="">
					</a>
					<a href="https://www.doc88.com/b-e841c92961b708d9.html" target="_blank">
						<img src="ReceptionStyle/img/index-imgs/ad1537432378.png" alt="">
					</a>
					<a href="https://www.doc88.com/b-89819bc7df0baed3.html" target="_blank">
						<img src="ReceptionStyle/img/index-imgs/ad1537432415.png" alt="">
					</a>
					<a href="https://www.doc88.com/b-1b67d0c4959d79c3.html" target="_blank"><img src="http://www.doc88.com/upload/image/indexpage/ad1537432466.png" alt=""></a>
				</div>
				<!-- 免费专区 通用 -->
				<div class="currency">
					<div class="currency-con">
						<div class="currency-title">
							<h3>免费下载</h3>
							<ul id="current_type_doc">
								<li class="current" onmouseover="free_downH(this);" value="1022">行业资料</li>
								<li class="part-line"></li>
								<li class="" onmouseover="free_downH(this);" value="8140">教育频道</li>
								<li class="part-line"></li>
								<li class="" onmouseover="free_downH(this);" value="1399">实用文档</li>
								<li class="part-line"></li>
								<li class="" onmouseover="free_downH(this);" value="3955">职业/等级考试</li>
								<li class="part-line"></li>
								<li class="" onmouseover="free_downH(this);" value="4160">生活/休闲</li>
								<li class="part-line"></li>
								<li class="" onmouseover="free_downH(this);" value="8383">学术论文</li>
							</ul>
							<!--<a class="more" href="">更多>></a>-->
						</div>
						<div class="currency-box" style="display: block;" id="a_1022">
							<div class="books-free-line1">
								<div id="free_1050303440" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/3377858080998_160.png) center center no-repeat scroll; display: block;" href="/p-3377858080998.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3377858080998.html" target="_blank">系统开发过程</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303441" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/1166404747551_160.png) center center no-repeat scroll; display: block;" href="/p-1166404747551.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-1166404747551.html" target="_blank">箱型基础工程的相关材料、机具准备、质量要求及施工工艺技术交底记录</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303447" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/6621787070112_160.png) center center no-repeat scroll; display: block;" href="/p-6621787070112.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6621787070112.html" target="_blank">砖混结构钢筋绑扎技术交底记录</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204630" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/3397853189208_160.png) center center no-repeat scroll; display: block;" href="/p-3397853189208.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3397853189208.html" target="_blank">服装针织工艺流程</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204645" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/6611786971418_160.png) center center no-repeat scroll; display: block;" href="/p-6611786971418.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6611786971418.html" target="_blank">工厂工作说明书编写计划</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1051204661" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/1156401845221_160.png) center center no-repeat scroll; display: block;" href="/p-1156401845221.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-1156401845221.html" target="_blank">酒店礼仪规范</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204668" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7788437048559_160.png) center center no-repeat scroll; display: block;" href="/p-7788437048559.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7788437048559.html" target="_blank">民营企业融资问题探讨</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204681" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9972569057439_160.png) center center no-repeat scroll; display: block;" href="/p-9972569057439.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9972569057439.html" target="_blank">意大利XX男装专卖店管理系列手册之专卖店商品管理手册</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204691" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9949139014269_160.png) center center no-repeat scroll; display: block;" href="/p-9949139014269.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9949139014269.html" target="_blank">注塑机结构及工作原理</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051204694" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7788437048568_160.png) center center no-repeat scroll; display: block;" href="/p-7788437048568.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7788437048568.html" target="_blank">最全面的服装行业督导手册</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
						<div class="currency-box" id="a_8140">
							<div class="books-free-line1">
								<div id="free_1047848675" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/10/22/7834804505642_160.png) center center no-repeat scroll; display: block;" href="/p-7834804505642.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7834804505642.html" target="_blank">《最苦与最乐课件》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227048" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7704827334805_160.png) center center no-repeat scroll; display: block;" href="/p-7704827334805.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7704827334805.html" target="_blank">《古代诗歌四首》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227055" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/6611786992788_160.png) center center no-repeat scroll; display: block;" href="/p-6611786992788.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6611786992788.html" target="_blank">《荷叶—母亲》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227063" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9963839774820_160.png) center center no-repeat scroll; display: block;" href="/p-9963839774820.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9963839774820.html" target="_blank">《济南的冬天 》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227076" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/3397853117872_160.png) center center no-repeat scroll; display: block;" href="/p-3397853117872.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3397853117872.html" target="_blank">《秋天的怀恋》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1051227084" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9963839774816_160.png) center center no-repeat scroll; display: block;" href="/p-9963839774816.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9963839774816.html" target="_blank">《散步》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227087" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/6611786992752_160.png) center center no-repeat scroll; display: block;" href="/p-6611786992752.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6611786992752.html" target="_blank">《散文诗二首》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227092" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7788437002460_160.png) center center no-repeat scroll; display: block;" href="/p-7788437002460.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7788437002460.html" target="_blank">《世说新语》二则课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227094" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7788437002468_160.png) center center no-repeat scroll; display: block;" href="/p-7788437002468.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7788437002468.html" target="_blank">《闻王昌龄左迁龙标遥有此寄》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227102" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7704827334783_160.png) center center no-repeat scroll; display: block;" href="/p-7704827334783.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7704827334783.html" target="_blank">《雨的四季 》课件</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
						<div class="currency-box" id="a_1399">
							<div class="books-free-line1">
								<div id="free_1051227270" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/1156401886864_160.png) center center no-repeat scroll; display: block;" href="/p-1156401886864.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-1156401886864.html" target="_blank">彩色铅笔PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227275" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9949139005053_160.png) center center no-repeat scroll; display: block;" href="/p-9949139005053.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9949139005053.html" target="_blank">大气实用红色年终总结PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227278" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7788437002029_160.png) center center no-repeat scroll; display: block;" href="/p-7788437002029.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7788437002029.html" target="_blank">淡雅古典诗词中国风PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227285" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/3397853117165_160.png) center center no-repeat scroll; display: block;" href="/p-3397853117165.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3397853117165.html" target="_blank">淡雅蓝紫极简通用PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227287" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/3397853117167_160.png) center center no-repeat scroll; display: block;" href="/p-3397853117167.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3397853117167.html" target="_blank">工作计划PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1051227304" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9963839774086_160.png) center center no-repeat scroll; display: block;" href="/p-9963839774086.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9963839774086.html" target="_blank">工作总结PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227311" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/7704827334177_160.png) center center no-repeat scroll; display: block;" href="/p-7704827334177.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7704827334177.html" target="_blank">极简年度工作汇报PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227317" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9975019443593_160.png) center center no-repeat scroll; display: block;" href="/p-9975019443593.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9975019443593.html" target="_blank">简约微立体总结计划PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227321" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9972569001209_160.png) center center no-repeat scroll; display: block;" href="/p-9972569001209.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9972569001209.html" target="_blank">清洁新能源PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1051227331" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/14/9949139005889_160.png) center center no-repeat scroll; display: block;" href="/p-9949139005889.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9949139005889.html" target="_blank">清新水彩花卉PPT模板</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
						<div class="currency-box" id="a_3955">
							<div class="books-free-line1">
								<div id="free_1035938831" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/6495051652259_160.png) center center no-repeat scroll; display: block;" href="/p-6495051652259.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6495051652259.html" target="_blank">统计考试社会统计学复习试题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938833" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/4137805406600_160.png) center center no-repeat scroll; display: block;" href="/p-4137805406600.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-4137805406600.html" target="_blank">统计师国民经济核算复习题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938834" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/6099183687784_160.png) center center no-repeat scroll; display: block;" href="/p-6099183687784.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6099183687784.html" target="_blank">统计师考试法规概论复习题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938835" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/9374812915512_160.png) center center no-repeat scroll; display: block;" href="/p-9374812915512.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9374812915512.html" target="_blank">统计师考试国民经济统计概论复习题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938837" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/4137805406607_160.png) center center no-repeat scroll; display: block;" href="/p-4137805406607.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-4137805406607.html" target="_blank">统计师考试国民经济统计概论模拟题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1035938839" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/6495051652256_160.png) center center no-repeat scroll; display: block;" href="/p-6495051652256.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6495051652256.html" target="_blank">外科主治医生模拟题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938842" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/6495051652274_160.png) center center no-repeat scroll; display: block;" href="/p-6495051652274.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6495051652274.html" target="_blank">眼科医生模拟题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938844" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/9374812915500_160.png) center center no-repeat scroll; display: block;" href="/p-9374812915500.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9374812915500.html" target="_blank">中国营养师考试基本理论模拟试题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938845" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/5793803501163_160.png) center center no-repeat scroll; display: block;" href="/p-5793803501163.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-5793803501163.html" target="_blank">中级考试外科基础题相关专业题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035938847" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/21/9374812915504_160.png) center center no-repeat scroll; display: block;" href="/p-9374812915504.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9374812915504.html" target="_blank">主治医师考试外科学基础题</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
						<div class="currency-box" id="a_4160">
							<div class="books-free-line1">
								<div id="free_1050303860" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/7744828181568_160.png) center center no-repeat scroll; display: block;" href="/p-7744828181568.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7744828181568.html" target="_blank">吃汤泡饭也要注意细嚼慢咽</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303861" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9912565252349_160.png) center center no-repeat scroll; display: block;" href="/p-9912565252349.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9912565252349.html" target="_blank">好吃的紫薯食谱你都试过吗</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303862" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9935010505284_160.png) center center no-repeat scroll; display: block;" href="/p-9935010505284.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9935010505284.html" target="_blank">交通礼仪常识 交通安全注意事项 遵守交通礼仪须知</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303863" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/1166404747927_160.png) center center no-repeat scroll; display: block;" href="/p-1166404747927.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-1166404747927.html" target="_blank">教你如何做出香喷喷的牛肉汤</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303864" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9935010505287_160.png) center center no-repeat scroll; display: block;" href="/p-9935010505287.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9935010505287.html" target="_blank">揭秘牙膏的16个神奇用途</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1050303865" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9912565252346_160.png) center center no-repeat scroll; display: block;" href="/p-9912565252346.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9912565252346.html" target="_blank">经常失眠有哪些危害</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303867" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/6621787070542_160.png) center center no-repeat scroll; display: block;" href="/p-6621787070542.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6621787070542.html" target="_blank">面筋吃多对不利身体健康</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303868" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9959131818727_160.png) center center no-repeat scroll; display: block;" href="/p-9959131818727.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9959131818727.html" target="_blank">上班族午睡对身体有哪些好处</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303869" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/9912565252348_160.png) center center no-repeat scroll; display: block;" href="/p-9912565252348.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9912565252348.html" target="_blank">养生也要会看脸色</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1050303870" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/07/3377858080678_160.png) center center no-repeat scroll; display: block;" href="/p-3377858080678.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3377858080678.html" target="_blank">远离癌症别碰这些食物</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
						<div class="currency-box" id="a_8383">
							<div class="books-free-line1">
								<div id="free_1035551456" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/18/5913803339632_160.png) center center no-repeat scroll; display: block;" href="/p-5913803339632.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-5913803339632.html" target="_blank">Hall and dissipative viscosity effects on edge magnetoplasmons</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035756232" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/6019183532080_160.png) center center no-repeat scroll; display: block;" href="/p-6019183532080.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6019183532080.html" target="_blank">基于扩张状态观测器的快速步进/凝视成像机构控制</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035756587" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/6019183532375_160.png) center center no-repeat scroll; display: block;" href="/p-6019183532375.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6019183532375.html" target="_blank">基于t分布噪声的鲁棒PPLS回归模型</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035756790" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/3846470602634_160.png) center center no-repeat scroll; display: block;" href="/p-3846470602634.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-3846470602634.html" target="_blank">基于SCoT标记分析西藏白菜型黄籽油菜遗传多样性</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035757097" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/9384812424894_160.png) center center no-repeat scroll; display: block;" href="/p-9384812424894.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9384812424894.html" target="_blank">我国南方野生樱属植物的分子系统发育分析</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
							<div class="books-free-line2">
								<div id="free_1035757138" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/8052526161923_160.png) center center no-repeat scroll; display: block;" href="/p-8052526161923.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-8052526161923.html" target="_blank">壳聚糖浸泡对黑豆芽品质的影响</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1035757160" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/20/6405051313980_160.png) center center no-repeat scroll; display: block;" href="/p-6405051313980.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-6405051313980.html" target="_blank">摘叶对赤霞珠葡萄及所酿葡萄酒品质的影响</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1049598121" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/01/9995076162949_160.png) center center no-repeat scroll; display: block;" href="/p-9995076162949.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9995076162949.html" target="_blank">金属配合物在肿瘤化学免疫治疗中的应用前景</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1049598173" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/01/9993865351940_160.png) center center no-repeat scroll; display: block;" href="/p-9993865351940.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-9993865351940.html" target="_blank">用于肿瘤综合治疗的无机纳米材料</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
								<div id="free_1049598189" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/01/7778486369796_160.png) center center no-repeat scroll; display: block;" href="/p-7778486369796.html" target="_blank"></a>
									</div>
									<a class="books-title-nowrap" href="/p-7778486369796.html" target="_blank">帕金森病中的关键金属元素</a>
									<div class="books-price"><span class="discount">免费</span><span class="book-integral">500积分</span></div>
								</div>
							</div>
						</div>
					</div>
					<div class="currency-side">
						<!--北京地区用上传文档，热门文档-->
						<!--<h3><a class="up-hot-min" href="">上传文档</a>热门文档 </h3>-->
						<!--其他地区用vip折扣文档-->
						<h3 id="show_doc_type"><a class="up-vip-min" href="/vip.html" target="_blank">升级VIP</a>VIP折扣文档</h3>
						<ul class="vip-free">
							<li>
								<p class="s-d-name">
									<img src="img/index-imgs/DOC.png" alt="">
									<a href="/p-94859039167.html" target="_blank">2009年高考陕西文科数学卷解析</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">11页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="img/index-imgs/DOC.png" alt="">
									<a href="/p-18261468870.html" target="_blank">机械社区关于步进电机的讨论</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">7页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name"><img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a href="/p-18961434210.html" target="_blank">安信证券-估值与盈利监测周报-091227</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">9页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name"><img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a href="/p-31673847601.html" target="_blank">江苏省海门中学2008-2009学年度第二学期期中考试试卷</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">6页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a href="/p-69516733706.html" target="_blank">江西省上高二中08-09学年高二年级历史期中考试试题学科...</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i><i class="iconfont current"></i>
										<i class="iconfont current"></i><i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">8页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a href="/p-90829951439.html" target="_blank">宜昌金东方学校高中08秋期末考试学科网</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">9页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a href="/p-174802659552.html" target="_blank">植物学根</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">82页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a href="/p-687406842144.html" target="_blank">向外国朋友介绍中国文化：饺子</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">2页</span>
								</div>
							</li>
							<li>
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a href="/p-499187652836.html" target="_blank">入党申请书3-入党申请书</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">4页</span>
								</div>
							</li>
							<li class="side-itemfoot">
								<p class="s-d-name">
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a href="/p-9082855999763.html" target="_blank">2017年河海大学954社会保障综合之《社会保障学》复试仿真模拟三套题</a>
								</p>
								<div class="hdoc-des">
									<p class="hdoc-lev">星级：<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
										<i class="iconfont current"></i>
									</p>
									<span class="hdoc-paper">17页</span>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<!--广告位通栏-->
				<div class="banner-row" id="brow_1">
					<a href="http://www.doc88.com/app.html" target="_blank">
						<img src="ReceptionStyle/img/index-imgs/ad1537422772.png" alt="">
					</a>
				</div>

				<!-- 文档求助 通用 -->
				<div class="currency">
					<div class="currency-con">
						<div class="currency-title">
							<h3>文档求助</h3>
							<!--<span class="currency-task-tips">找不到需要的文档?</span>-->
							<!--<a class="task-guide" href="">我要找文档</a>-->
							<a class="more" href="/t-list.html" target="_blank">查看更多<i class="iconfont"></i>
								
							</a>
						</div>
						<div class="task-box">
							<div class="tg-con">
								<img src="ReceptionStyle/img/index-imgs/no-result.png">
								<p class="p-h">找不到需要的文档？</p>
								<p>发布求助任务请百万用户为你提供</p>
								<a href="/renwu/find.php" target="_blank" class="taskgui-btn">我要找文档</a>
							</div>
							<div class="currency-task" id="doc_help_content">
								<div class="task-item">
									<h3><span>求助</span>
										<a class="reco-task" href="/t-130941.html" target="_blank">高等教育自学考试历年试题全集_2014年10月全国自考高等数学(一)真题及答案</a>
									</h3>
									<p class="task-des"><strong>描述：</strong>自学高数，需要资料</p>
									<p class="task-num f12">积分：<span class="cf60">500</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览人数：15&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;参与人数：2</p>
								</div>
								<div class="task-item">
									<h3><span>求助</span><a class="reco-task" href="/t-130940.html" target="_blank">关于服务认证的介绍</a></h3>
									<p class="task-des"><strong>描述：</strong>要全面，最好有ppt10到20页的那种</p>
									<p class="task-num f12">积分：<span class="cf60">2500</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览人数：54&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;参与人数：1</p>
								</div>
								<div class="task-item task-item-bo">
									<h3><span>求助</span><a class="reco-task" href="/t-130938.html" target="_blank">山西公务员考试申论备考提出对策题有妙招</a></h3>
									<p class="task-des"><strong>描述：</strong>需要</p>
									<p class="task-num f12">积分：<span class="cf60">700</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览人数：11&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;参与人数：3</p>
								</div>
								<div class="task-item task-item-bo">
									<h3><span>求助</span><a class="reco-task" href="/t-130933.html" target="_blank">菌种工程实验指南Methods in Molecular Biology, Vol 765：Strain Engineering：Methods and Protocols(2011)</a></h3>
									<p class="task-des"><strong>描述：</strong>wecndangxiazai</p>
									<p class="task-num f12">积分：<span class="cf60">800</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览人数：41&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;参与人数：2</p>
								</div>
							</div>
						</div>
					</div>
					<div class="currency-side">
						<h3><a class="a-upload-doc" href="/t-list.html" target="_blank">我也要赚取积分</a> 中标动态 </h3>
						<ul id="bidding_dynamics_content" class="dyn-bid">
							<li>
								<a href="/luocan1988 " target="_blank">
									<img src="ReceptionStyle/img/index-imgs/10478296-m.jpg" alt=""></a>
								<p class="dyn-tname">
									<a href="/t-130953.html" target="_blank">薄乐&nbsp;&nbsp;完成了任务赚取了1000积分</a>
								</p>
								<p class="dyn-tre"><span>29分钟前</span><span class="cf60">+1000积分</span></p>
							</li>
							<li>
								<a href="/wanglihonst111" target="_blank">
									<img src="ReceptionStyle/img/index-imgs/24483519-m.jpg" alt=""></a>
								<p class="dyn-tname">
									<a href="/t-130950.html" target="_blank">泡饭夫妻&nbsp;&nbsp;完成了任务赚取了2000积分</a>
								</p>
								<p class="dyn-tre"><span>56分钟前</span>
									<span class="cf60">+2000积分</span>
								</p>
							</li>
							<li>
								<a href="/luocan1988 " target="_blank">
									<img src="ReceptionStyle/img/index-imgs/10478296-m.jpg" alt="">
								</a>
								<p class="dyn-tname">
									<a href="/t-130947.html" target="_blank">薄乐&nbsp;&nbsp;完成了任务赚取了1700积分</a>
								</p>
								<p class="dyn-tre"><span>1小时前</span><span class="cf60">+1700积分</span></p>
							</li>
						</ul>
					</div>
				</div>

				<!-- 最新上传 通用 -->
				<div class="currency">
					<div class="currency-con">
						<div class="currency-title">
							<h3>最新上传</h3>
							<ul class="last_upload_catalog">
								<li class="current" onmouseover="last_upload_catalogH(this);" value="8117">策划/方案</li>
								<li class="part-line"></li>
								<li class="" onmouseover="last_upload_catalogH(this);" value="8120">PPT模板</li>
								<li class="part-line"></li>
								<li class="" onmouseover="last_upload_catalogH(this);" value="8121">招聘/简历</li>
								<li class="part-line"></li>
								<li class="" onmouseover="last_upload_catalogH(this);" value="8216">公务员考试</li>
								<li class="part-line"></li>
								<li class="" onmouseover="last_upload_catalogH(this);" value="8245">考研/考博</li>
								<li class="part-line"></li>
								<li class="" onmouseover="last_upload_catalogH(this);" value="8374">影视动漫</li>
								<li class="part-line"></li>
								<li class="up-more">
									<a href="/list.html" target="_blank">查看更多<i class="iconfont"></i></a>
								</li>
							</ul>
						</div>
						<!--只显示5个-->
						<div id="quality_doc_content">
							<div class="currency-box show">
								<div id="free_1050028958" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/05/9915010042612_160.png) center center no-repeat scroll; display: block;" href="/p-9915010042612.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9915010042612.html" target="_blank">灌装奶制品生产建设项目投资意向书</a>
								</div>
								<div id="free_1050028960" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/05/9933838871528_160.png) center center no-repeat scroll; display: block;" href="/p-9933838871528.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9933838871528.html" target="_blank">灌装生产建设项目投资意向书</a>
								</div>
								<div id="free_1050028961" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/05/9939131107629_160.png) center center no-repeat scroll; display: block;" href="/p-9939131107629.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9939131107629.html" target="_blank">罐式发酵生物菌种生产建设项目投资意向书</a>
								</div>
								<div id="free_1050028962" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/05/9939131107620_160.png) center center no-repeat scroll; display: block;" href="/p-9939131107620.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9939131107620.html" target="_blank">光电子器件生产建设项目投资意向书</a>
								</div>
								<div id="free_1050028963" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/05/6681787795340_160.png) center center no-repeat scroll; display: block;" href="/p-6681787795340.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-6681787795340.html" target="_blank">光伏石英砂生产建设项目投资意向书</a>
								</div>
							</div>
							<div class="currency-box">
								<div id="free_1037359118" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/30/9184814129775_160.png) center center no-repeat scroll; display: block;" href="/p-9184814129775.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9184814129775.html" target="_blank">快闪企业校园招聘宣讲会校招大型招聘PPT</a>
								</div>
								<div id="free_1042494936" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/10/07/9035074767658_160.png) center center no-repeat scroll; display: block;" href="/p-9035074767658.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9035074767658.html" target="_blank">毕业答辩——音乐类ppt模板</a>
								</div>
								<div id="free_1049367683" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/10/30/9005076583825_160.png) center center no-repeat scroll; display: block;" href="/p-9005076583825.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9005076583825.html" target="_blank">抖音快闪—— 自我介绍</a>
								</div>
								<div id="free_1049738665" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/02/6691713205448_160.png) center center no-repeat scroll; display: block;" href="/p-6691713205448.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-6691713205448.html" target="_blank">抖音快闪——模仿苹果107秒制作的137秒快闪PPT模板</a>
								</div>
								<div id="free_1049841008" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/03/7718486987449_160.png) center center no-repeat scroll; display: block;" href="/p-7718486987449.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-7718486987449.html" target="_blank">工程合同管理 第1-6讲 合同基础知识</a>
								</div>
							</div>
							<div class="currency-box">
								<div id="free_1029888460" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/07/27/4344839555068_160.png) center center no-repeat scroll; display: block;" href="/p-4344839555068.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-4344839555068.html" target="_blank">受训人员履历表</a>
								</div>
								<div id="free_1030257867" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/07/31/7037808157627_160.png) center center no-repeat scroll; display: block;" href="/p-7037808157627.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-7037808157627.html" target="_blank">第二讲—求职途径和 与简历制作 大学生就业能力攻略和 与成功就业宝典</a>
								</div>
								<div id="free_1031149463" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/08/08/9496471153527_160.png) center center no-repeat scroll; display: block;" href="/p-9496471153527.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9496471153527.html" target="_blank">简历封面010.doc找工作求职面试复试应聘留学出国中英文简历精美范文模板</a>
								</div>
								<div id="free_1031149912" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/08/08/5751706613369_160.png) center center no-repeat scroll; display: block;" href="/p-5751706613369.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-5751706613369.html" target="_blank">个性模板230.doc找工作求职面试复试应聘留学出国中英文简历精美范文模板</a>
								</div>
								<div id="free_1035323952" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/16/9764812131923_160.png) center center no-repeat scroll; display: block;" href="/p-9764812131923.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9764812131923.html" target="_blank">教师招聘职位信息</a>
								</div>
							</div>
							<div class="currency-box">
								<div id="free_1030748178" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/08/04/5711707215625_160.png) center center no-repeat scroll; display: block;" href="/p-5711707215625.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-5711707215625.html" target="_blank">机组组合问题的优化方法综述_陈皓勇</a>
								</div>
								<div id="free_1050118012" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/06/9942565993590_160.png) center center no-repeat scroll; display: block;" href="/p-9942565993590.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9942565993590.html" target="_blank">公务员面试测评要素之联想与分析能力</a>
								</div>
								<div id="free_1050127485" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/06/9929131905473_160.png) center center no-repeat scroll; display: block;" href="/p-9929131905473.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9929131905473.html" target="_blank">巧用特征数字法解行测资料分析题</a>
								</div>
								<div id="free_1050127487" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/06/1126404186596_160.png) center center no-repeat scroll; display: block;" href="/p-1126404186596.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-1126404186596.html" target="_blank">如何解密行测片段阅读中的隐性观点题？</a>
								</div>
								<div id="free_1050127489" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/06/9923838974615_160.png) center center no-repeat scroll; display: block;" href="/p-9923838974615.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9923838974615.html" target="_blank">引用行测真题教你掌握一般加强型</a>
								</div>
							</div>
							<div class="currency-box">
								<div id="free_1030834550" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/08/05/5781707501887_160.png) center center no-repeat scroll; display: block;" href="/p-5781707501887.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-5781707501887.html" target="_blank">制图员实习报告</a>
								</div>
								<div id="free_1037205838" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/29/6069185013787_160.png) center center no-repeat scroll; display: block;" href="/p-6069185013787.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-6069185013787.html" target="_blank">2011考研英语一真题及答案</a>
								</div>
								<div id="free_1037205890" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/29/6069185013761_160.png) center center no-repeat scroll; display: block;" href="/p-6069185013761.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-6069185013761.html" target="_blank">2012考研英语二真题及答案</a>
								</div>
								<div id="free_1037435927" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/30/4087807905417_160.png) center center no-repeat scroll; display: block;" href="/p-4087807905417.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-4087807905417.html" target="_blank">91-94年英语考研阅读真题</a>
								</div>
								<div id="free_1050877297" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/12/9902565311081_160.png) center center no-repeat scroll; display: block;" href="/p-9902565311081.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9902565311081.html" target="_blank">考研单词汇总</a>
								</div>
							</div>
							<div class="currency-box">
								<div id="free_1033461978" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/08/28/5951700146325_160.png) center center no-repeat scroll; display: block;" href="/p-5951700146325.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-5951700146325.html" target="_blank">俄国小说家契诃夫经典作品凡卡读后感200字</a>
								</div>
								<div id="free_1035321709" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/16/5923803079485_160.png) center center no-repeat scroll; display: block;" href="/p-5923803079485.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-5923803079485.html" target="_blank">2018年读《梁家河》有感：发挥示范带头作用</a>
								</div>
								<div id="free_1035550769" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/09/18/6925051110386_160.png) center center no-repeat scroll; display: block;" href="/p-6925051110386.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-6925051110386.html" target="_blank">菲利普迪克科幻短篇小说集（套装共5册）</a>
								</div>
								<div id="free_1049410664" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/10/31/9095076790887_160.png) center center no-repeat scroll; display: block;" href="/p-9095076790887.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9095076790887.html" target="_blank">科幻动作电影《机器之血》招商方案</a>
								</div>
								<div id="free_1049825086" class="books-free">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/11/03/9922578306534_160.png) center center no-repeat scroll; display: block;" href="/p-9922578306534.html" target="_blank"></a>
									</div>
									<a class="books-title" href="/p-9922578306534.html" target="_blank">学习李兆雄先进事迹感想</a>
								</div>
							</div>
						</div>
					</div>
					<div class="currency-side">
						<h3><a onclick="showLoginWindow('/uc/index.php?act=upload','上传文档','登录后，可将您的文档上传至道客巴巴');" href="javascript:;" class="a-upload-doc">上传文档</a> 最新模板 </h3>
						<ul class="temp-con">
							<li class="temp-item">
								<a href="/p-6068412705763.html" target="_blank"><span class="sort-numbg">1</span>【相册】钟爱一生婚礼PPT模板</a>
							</li>
							<li class="temp-item">
								<a href="/p-6068412082241.html" target="_blank"><span class="sort-num">2</span>快闪发布会公司新产品推介会抖音快闪PPT</a>
							</li>
							<li class="temp-item">
								<a href="/p-6819185830624.html" target="_blank"><span class="sort-num">3</span>【抖音风】创意简约商务工作总结模板</a>
							</li>
							<li class="temp-item">
								<a href="/p-9035074767658.html" target="_blank"><span class="sort-num">4</span>毕业答辩——音乐类ppt模板</a>
							</li>
							<li class="temp-item">
								<a href="/p-9184814125787.html" target="_blank"><span class="sort-num">5</span>快闪创意自我介绍抖音风格动画PPT模板</a>
							</li>
							<li class="temp-item side-more">
								<a href="/list.html" target="_blank">查看更多<i class="iconfont harr-r"></i></a>
							</li>
						</ul>
					</div>
				</div>

				<div class="banner-row" id="brow_2">
					<a href="http://www.doc88.com/corpus.php?act=corpus_activity" target="_blank">
						<img src="ReceptionStyle/img/index-imgs/ad1537422822.png" alt="">
					</a>
				</div>

				<!-- 文辑广场 -->
				<div class="currency">
					<div class="currency-con">
						<div class="currency-title">
							<h3>文辑广场</h3>
							<a class="more" href="/b-list.html" target="_blank">查看更多<i class="iconfont"></i></a>
						</div>
						<div id="corpus_square_content" class="corpus-container">
							<div class="corpus-item">
								<div class="co-left">
									<div class="co-cover-main">
										<div class="co-cover2">
											<img src="ReceptionStyle/img/index-imgs/645607533905_160.png">
										</div>
										<div class="co-cover1">
											<img src="ReceptionStyle/img/index-imgs/1701983291803_160.png"></div>
										<div class="co-cover" name="cover">
											<img src="ReceptionStyle/img/index-imgs/3117186157928_160.png">
										</div>
									</div>
								</div>
								<div class="co-right">
									<h2 class="co-name">
										<a href="/b-b8c67d9dde5ff5f6.html" target="_blank">斯坦·李和他的漫威</a></h2>
									<p class="co-des">简介：2018年11月12日，被冠以“漫威之父”称号的美国漫画界元老级人物斯坦·李在好莱坞一家医疗中心去世，享年95岁。斯坦·李是漫威王国的最主要缔造者之一，也是漫威电影中的“老顽童”。谨以此纪念“漫威之父”。</p>
									<p class="co-num">文档数量：15&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览次数：623次</p>
									<p class="co-lev">星级： <span class="star-lev star-lev-5"></span></p>
								</div>
							</div>
							<div class="corpus-item">
								<div class="co-left">
									<div class="co-cover-main">
										<div class="co-cover2">
											<img src="ReceptionStyle/img/index-imgs/2734351502928_160.png">
										</div>
										<div class="co-cover1">
											<img src="ReceptionStyle/img/index-imgs/908591611401_160.png">
										</div>
										<div class="co-cover" name="cover">
											<img src="ReceptionStyle/img/index-imgs/2734351502928_160.png">
										</div>
									</div>
								</div>
								<div class="co-right">
									<h2 class="co-name"><a href="/b-86b5a4cc941e1665.html" target="_blank">供暖 冬日里的热情</a></h2>
									<p class="co-des">简介：供暖的日子到了，终于不用在家里冻成狗了。如何供暖才更加合理，其实很多人在关心，这里列举了一些，可以看一看。万一哪天南方也供暖了呢。</p>
									<p class="co-num">文档数量：15&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览次数：403次</p>
									<p class="co-lev">星级： <span class="star-lev star-lev-3"></span></p>
								</div>
							</div>
							<div class="corpus-item">
								<div class="co-left">
									<div class="co-cover-main">
										<div class="co-cover1">
											<img src="ReceptionStyle/img/index-imgs/1876391017851_160.png">
										</div>
										<div class="co-cover" name="cover">
											<img src="ReceptionStyle/img/index-imgs/18665979287_160.png">
										</div>
									</div>
								</div>
								<div class="co-right">
									<h2 class="co-name">
										<a href="/b-f0cb3d580b328da6.html" target="_blank">台湾自古以来就是中国领土不可分割的一部分</a></h2>
									<p class="co-des">简介：大陆和台湾同属一个中国，台湾是中国领土不可分割的一部分。这里汇总了一些和台湾相关的资料课件，可以参考。</p>
									<p class="co-num">文档数量：15&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览次数：209次</p>
									<p class="co-lev">星级： <span class="star-lev star-lev-3"></span></p>
								</div>
							</div>
							<div class="corpus-item">
								<div class="co-left">
									<div class="co-cover-main">
										<div class="co-cover2">
											<img src="ReceptionStyle/img/index-imgs/906996176329_160.png">
										</div>
										<div class="co-cover1">
											<img src="ReceptionStyle/img/index-imgs/118710279321_160.png">
										</div>
										<div class="co-cover" id="cover">
											<img src="ReceptionStyle/img/index-imgs/998992561806_160.png">
										</div>
									</div>
								</div>
								<div class="co-right">
									<h2 class="co-name"><a href="/b-1ada5bd6dca04401.html" target="_blank">了解导盲犬 关爱导盲犬</a></h2>
									<p class="co-des">简介：导盲犬是经过严格训练的狗，是工作犬的一种。经过训练后的导盲犬可帮助盲人去学校、商店、洗衣店、街心花园等。导盲犬懂得很多口令，可以带领盲人安全地走路，当遇到障碍和需要拐弯时，会引导主人停下以免发生危险。</p>
									<p class="co-num">文档数量：18&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;浏览次数：131次</p>
									<p class="co-lev">星级： <span class="star-lev star-lev-3"></span></p>
								</div>
							</div>
						</div>
					</div>
					<div class="currency-side">
						<h3><a class="a-upload-doc" href="/corpus.php?act=create" target="_blank">创建文辑</a> 推荐文辑 </h3>
						<ul class="copus-con">
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-48f70c9c39c339bf.html" target="_blank">军训总结/心得/体会/感想/新闻稿小合集</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：941</p><span class="hdoc-paper">16P</span></div>
							</li>
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-c45f8810991bbe6b.html" target="_blank">电子竞技研究/展望/大家说</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：811</p><span class="hdoc-paper">15P</span></div>
							</li>
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-66202dc48d76ef18.html" target="_blank">开学第一课主题班会教案PPT</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：1238</p><span class="hdoc-paper">17P</span></div>
							</li>
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-65562514431d4cd9.html" target="_blank">秋游计划/策划/规划</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：547</p><span class="hdoc-paper">15P</span></div>
							</li>
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-cbfaa870d46f98b5.html" target="_blank">马拉松长跑中你知道或不知道的事</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：713</p><span class="hdoc-paper">15P</span></div>
							</li>
							<li class="copsi-item"><span class="iconfont"></span>
								<a href="/b-8a754a1c83bf58ad.html" target="_blank">间谍、特务到底是啥样子的？反间谍我们应该知道哪些？</a>
								<div class="hdoc-des">
									<p class="hdoc-lev">浏览人数：611</p><span class="hdoc-paper">15P</span></div>
							</li>
							<li class="temp-item side-more">
								<a href="/b-list.html" target="_blank">查看更多<i class="iconfont harr-r"></i></a>
							</li>
						</ul>
					</div>
				</div>

				<!--认证用户-->
				<div class="currency">
					<div class="currency-title autuser-title">
						<h3>认证用户</h3>
						<a class="more" href="/geren.php" target="_blank">查看更多<i class="iconfont"></i></a>
					</div>
					<ul class="autuser-con">
						<li class="autuser-item">
							<div class="aut-user-h">
								<a class="aut-head" href="/intonetwork" target="_blank">
									<img src="ReceptionStyle/img/index-imgs/3058795-b.jpg"></a>
								<div class="aut-des">
									<a class="aut-name" href="/intonetwork" target="_blank">李旺</a>
									<p class="aut-ind">网络工程师</p>
								</div>
							</div>
							<ol class="aut-user-doc">
								<li>
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a class="title" href="/p-3456628855448.html" target="_blank">高等数学下_复旦大学出版_习题10答案</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a class="title" href="/p-9804463300886.html" target="_blank">英语长难句分析+中英句子结构对比</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/PDF.pngf" alt="">
									<a class="title" href="/p-1952501357455.html" target="_blank">基于OSPF协议的多区域网络通信规划与组建</a>
								</li>
							</ol>
						</li>
						<li class="autuser-item">
							<div class="aut-user-h">
								<a class="aut-head" href="/769151177" target="_blank">
									<img src="ReceptionStyle/img/index-imgs/45554350-b.jpg">
								</a>
								<div class="aut-des">
									<a class="aut-name" href="/769151177" target="_blank">周国年</a>
									<p class="aut-ind">教学研究员</p>
								</div>
							</div>
							<ol class="aut-user-doc">
								<li><img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a class="title" href="/p-0794520601571.html" target="_blank">2018中职数学概念及公式应用大全</a>
								</li>
								<li><img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a class="title" href="/p-6793136532728.html" target="_blank">2017年湖北省技能高考《文化综合》数学部分模拟试卷</a>
								</li>
								<li><img src="ReceptionStyle/img/index-imgs/PDF.png" alt="">
									<a class="title" href="/p-6793136532205.html" target="_blank">2016湖北省技能高考文化综合模拟试卷1</a>
								</li>
							</ol>
						</li>
						<li class="autuser-item">
							<div class="aut-user-h">
								<a class="aut-head" href="/lihaoran716" target="_blank">
									<img src="ReceptionStyle/img/index-imgs/47197025-b.jpg"></a>
								<div class="aut-des">
									<a class="aut-name" href="/lihaoran716" target="_blank">李浩然</a>
									<p class="aut-ind">儿童图书独立策划人</p>
								</div>
							</div>
							<ol class="aut-user-doc">
								<li>
									<img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a class="title" href="/p-5909726261919.html" target="_blank">儿童植物认知童话故事：植物世界里的“王”</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/PPTX.png" alt="">
									<a class="title" href="/p-5949726678409.html" target="_blank">16张卡通黑白线稿儿童趣味涂色练习模板</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/PPTX.png" alt="">
									<a class="title" href="/p-2788956691802.html" target="_blank">2015-2016原创绘本故事：天冷了，我给小鸟做双鞋（ppt版）</a>
								</li>
							</ol>
						</li>
						<li class="autuser-item">
							<div class="aut-user-h">
								<a class="aut-head" href="/happymsluo" target="_blank">
									<img src="ReceptionStyle/img/index-imgs/72336288-b.jpg"></a>
								<div class="aut-des">
									<a class="aut-name" href="/happymsluo" target="_blank">罗月</a>
									<p class="aut-ind">资深幼儿园教师</p>
								</div>
							</div>
							<ol class="aut-user-doc">
								<li>
									<img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a class="title" href="/p-9364816068250.html" target="_blank">2018下半年幼儿园教研工作计划范文</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/DOC.png" alt="">
									<a class="title" href="/p-6485058780121.html" target="_blank">2018下半年幼儿园园长工作计划</a>
								</li>
								<li>
									<img src="ReceptionStyle/img/index-imgs/DOCX.png" alt="">
									<a class="title" href="/p-6029182421368.html" target="_blank">幼儿园中秋国庆双节庆祝活动</a>
								</li>
							</ol>
						</li>
					</ul>
				</div>

				<!-- 机构文档 -->
				<div class="currency">
					<div class="currency-con">
						<div class="currency-title">
							<h3>机构文档</h3>
							<a class="more" href="/jigou.php" target="_blank">查看更多机构文档<i class="iconfont"></i></a>
						</div>
						<div class="org-container">
							<div class="triangle-arr"></div>
							<ul class="org-list">
								<li onmouseover="org_listH(this);">
									<img src="ReceptionStyle/img/index-imgs/jigou1537510997.png" alt="">
								</li>
								<li class="sline"></li>
								<li onmouseover="org_listH(this);"><img src="ReceptionStyle/img/index-imgs/jigou1537511223.png" alt="">
								</li>
								<li class="sline"></li>
								<li onmouseover="org_listH(this);"><img src="ReceptionStyle/img/index-imgs/jigou1537511398.png" alt="">
								</li>
								<li class="sline"></li>
								<li onmouseover="org_listH(this);"><img src="ReceptionStyle/img/index-imgs/jigou1537512195.png" alt="">
								</li>
								<li class="sline"></li>
								<li onmouseover="org_listH(this);"><img src="ReceptionStyle/img/index-imgs/jigou1537512287.png" alt="">
								</li>
							</ul>
							<div class="org-con show">
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(ReceptionStyle/img/index-imgs/0098676038419_160.png) center center no-repeat scroll; display: block;" 
											href="p-0098676038419.html" target="_blank">
										</a>
									</div>
									<a class="books-title" href="p-0098676038419.html" target="_blank">智能球铰链空间磁场分布仿真及其影响分析</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(ReceptionStyle/img/index-imgs/9951363981704_160.png) center center no-repeat scroll; display: block;" 
											href="p-0098676038419.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-0098676038419.html" target="_blank">音色变换音频信号的篡改检测技术研究</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/3354979320813_160.png) center center no-repeat scroll; display: block;" href="p-0098676038419.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-0098676038419.html" target="_blank">一种弹体初始挂装姿态测量新方法</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/4425696417042_160.png) center center no-repeat scroll; display: block;" href="p-0098676038419.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-0098676038419.html" target="_blank">平方根球形无味卡尔曼滤波机载无源定位算法</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/8896313805487_160.png) center center no-repeat scroll; display: block;" href="p-0098676038419.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-0098676038419.html" target="_blank">农药制剂中39 种有机溶剂的气相色谱-质谱测定方法研究</a>
								</div>
							</div>
							<div class="org-con">
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/0032898047504_160.png) center center no-repeat scroll; display: block;" href="p-9951363941762.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-9951363941762.html" target="_blank">2016年12月申论热点分析</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/9951363941762_160.png) center center no-repeat scroll; display: block;" href="p-9951363941762.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-9951363941762.html" target="_blank">2016年11月申论热点分析</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/4425696487009_160.png) center center no-repeat scroll; display: block;" href="p-9951363941762.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-9951363941762.html" target="_blank">2016年10月申论热点分析</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/9951363940352_160.png) center center no-repeat scroll; display: block;" href="p-9951363941762.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-9951363941762.html" target="_blank">2016年9月申论热点分析</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2017/02/28/0098676051627_160.png) center center no-repeat scroll; display: block;" href="p-9951363941762.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-9951363941762.html" target="_blank">2016年8月申论热点分析</a>
								</div>
							</div>
							<div class="org-con">
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/04/26/1941764133636_160.png) center center no-repeat scroll; display: block;" href="p-5826412533129.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5826412533129.html" target="_blank">2018年云南省事业单位招聘考试《公共基础知识》复习题库</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/04/26/9127832944360_160.png) center center no-repeat scroll; display: block;" href="p-5826412533129.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5826412533129.html" target="_blank">2018年上海市事业单位招聘考试《职业能力倾向测验》复习题库</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/04/26/5826412533129_160.png) center center no-repeat scroll; display: block;" href="p-5826412533129.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5826412533129.html" target="_blank">2018年云南省事业单位招聘考试《职业能力测验》复习题库</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/04/26/7042594788903_160.png) center center no-repeat scroll; display: block;" href="p-5826412533129.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5826412533129.html" target="_blank">2018年内蒙古自治区事业单位招聘考试《职业能力测验》复习题库</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2018/04/26/7485098766021_160.png) center center no-repeat scroll; display: block;" href="p-5826412533129.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5826412533129.html" target="_blank">2018年北京市事业单位招聘考试《综合应用能力》复习题库</a>
								</div>
							</div>
							<div class="org-con">
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2016/06/22/2773123517142_160.png) center center no-repeat scroll; display: block;" href="p-4002346830192.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-4002346830192.html" target="_blank">杭州师范大学846英语教学基础知识2015年考研真题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2016/06/22/8445281624333_160.png) center center no-repeat scroll; display: block;" href="p-4002346830192.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-4002346830192.html" target="_blank">杭州师范大学842数学教育学2015年考研真题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2016/06/22/2117625461732_160.png) center center no-repeat scroll; display: block;" href="p-4002346830192.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-4002346830192.html" target="_blank">杭州师范大学829卫生管理学2015年考研真题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2016/06/22/4002346830192_160.png) center center no-repeat scroll; display: block;" href="p-4002346830192.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-4002346830192.html" target="_blank">杭州师范大学827有机化学（二）2015年考研真题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2016/06/22/2009723670263_160.png) center center no-repeat scroll; display: block;" href="p-4002346830192.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-4002346830192.html" target="_blank">杭州师范大学820物理化学2015年考研真题</a>
								</div>
							</div>
							<div class="org-con">
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2015/08/18/1913433374818_160.png) center center no-repeat scroll; display: block;" href="p-5651288892740.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5651288892740.html" target="_blank">证券从业资格考试题库证券基础知识考前练习题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2015/08/18/5754422234846_160.png) center center no-repeat scroll; display: block;" href="p-5651288892740.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5651288892740.html" target="_blank">证券从业资格考试题库《证券交易》题库考前练习题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2015/08/18/5651288892729_160.png) center center no-repeat scroll; display: block;" href="p-5651288892740.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5651288892740.html" target="_blank">2015证券从业资格考试题库证券交易模拟复习题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2015/08/18/6367755517824_160.png) center center no-repeat scroll; display: block;" href="p-5651288892740.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5651288892740.html" target="_blank">2015证券从业资格考试题库证券基础知识复习题</a>
								</div>
								<div class="books-sides">
									<div class="bookcover-bd">
										<a class="bookcover" style="background: url(https://png.doc88.com/2015/08/18/5651288892740_160.png) center center no-repeat scroll; display: block;" href="p-5651288892740.html" target="_blank"></a>
									</div>
									<a class="books-title" href="p-5651288892740.html" target="_blank">2015证券从业资格考试题库《证券发行与承销》练习题</a>
								</div>
							</div>
						</div>
					</div>
					<div class="currency-side">
						<div class="org-side">
							<h4><span class="org-already">1381</span> 家机构已入驻</h4>
							<div class="org-join-con">
								<div class="cooperation">
									<p class="grey3">合作邮箱：BM@doc88.com</p>
									<a href="/jigou.php" class="apply-org" target="_blank">申请机构认证</a>
								</div>
								<div class="org-scroll">
									<div class="org-scroll-list">
										<a href="/jingshpro" target="_blank">
											<img class="orgh-img" src="ReceptionStyle/img/index-imgs/72014231-m.jpg" alt="">
										</a>
										<div class="org-add-time">
											<h5><a href="/jingshpro" target="_blank">京师智库</a></h5>
											<p>官方机构入驻 <span class="org-add">2月前</span></p>
										</div>
									</div>
									<div class="org-scroll-list">
										<a href="/easytowntrans" target="_blank"><img class="orgh-img" 
											src="ReceptionStyle/img/index-imgs/71940540-m.jpg" alt="">
										</a>
										<div class="org-add-time">
											<h5><a href="/easytowntrans" target="_blank">易语堂翻译</a></h5>
											<p>官方机构入驻 <span class="org-add">2月前</span></p>
										</div>
									</div>
									<div class="org-scroll-list">
										<a href="/empaercom" target="_blank"><img class="orgh-img" 
											src="ReceptionStyle/img/index-imgs/71848312-m.jpg" alt=""></a>
										<div class="org-add-time">
											<h5><a href="/empaercom" target="_blank">安帕尔科技</a></h5>
											<p>官方机构入驻 <span class="org-add">2月前</span></p>
										</div>
									</div>
									<div class="org-scroll-list">
										<a href="/huatujinlingren" target="_blank">
											<img class="orgh-img" src="ReceptionStyle/img/index-imgs/71239885-m.jpg" alt="">
										</a>
										<div class="org-add-time">
											<h5><a href="/huatujinlingren" target="_blank">华图金领人</a></h5>
											<p>官方机构入驻 <span class="org-add">4月前</span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--<div class="banner-ad">
				&lt;!&ndash;<a href="">
					<img src="http://static.doc88.com/resources/images/banner-ad-2.jpg" alt="">
				</a>&ndash;&gt;
			</div>-->

				<div class="currency">
					<div class="currency-title">
						<h3>机构专区</h3>
						<span class="currency-task-tips">已有<strong>1381</strong>家机构</span>
						<a class="task-guide" href="/jigou.php" target="_blank"><span>+</span> 申请加入</a>
					</div>
					<ul class="org-img" id="organization_zone_content">
						<li>
							<a href="/zgcs8440" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537510997.png" alt="">
							</a>
						</li>
						<li>
							<a href="/scdianzishu" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537512195.png" alt=""></a>
						</li>
						<li>
							<a href="/shengshihuayan" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1539742974.png" alt=""></a>
						</li>
						<li>
							<a href="/YouCore" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537512506.png" alt=""></a>
						</li>
						<li>
							<a href="/beidingedu" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537512474.png" alt=""></a>
						</li>
						<li>
							<a href="/ccxedu" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537511398.png" alt=""></a>
						</li>
						<li>
							<a href="/wwwoffcn" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537511223.png" alt=""></a>
						</li>
						<li>
							<a href="/ZhengXueWang" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537512287.png" alt=""></a>
						</li>
						<li>
							<a href="/tj001kaoyan" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1537512317.png" alt=""></a>
						</li>
						<li>
							<a href="/xinyijiaoyuxue" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1539934922.png" alt=""></a>
						</li>
						<li>
							<a href="/dongaokuaiji1" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1540795832.png" alt=""></a>
						</li>
						<li>
							<a href="/zxyjhhlzz" target="_blank">
								<img src="ReceptionStyle/img/index-imgs/jigou1540795978.png" alt=""></a>
						</li>
					</ul>
				</div>

			</div>
		</div>
		<!-- 内容 -->
		<!-- 公共页脚 -->
		<div class="footer">
			<!--<div class="wrapper">-->
			<div class="activelist">
				<ul class="columns">
					<li class="h3">
						<a href="/help/about.html" target="_blank">关于我们</a>
					</li>
					<li>
						<a href="/help/about.html" target="_blank">关于道客巴巴</a>
					</li>
					<li>
						<a href="/help/join_wysjs.html" target="_blank">人才招聘</a>
					</li>
					<li>
						<a href="/help/contact.html" target="_blank">联系我们</a>
					</li>
				</ul>
				<ul class="columns">
					<li class="h3">
						<a href="/help/copyright_bqsm.html" target="_blank">网站声明</a>
					</li>
					<li>
						<a href="/help/websitemap.html" target="_blank">网站地图</a>
					</li>
					<li>
						<a href="/app.html" target="_blank">APP下载</a>
					</li>
				</ul>
				<ul class="columns">
					<li class="h3">
						<a href="/help/help_list.html" target="_blank">帮助中心</a>
					</li>
					<li>
						<a href="/help/help_info_1_1.html" target="_blank">会员注册</a>
					</li>
					<li>
						<a href="/help/help_info_4_18.html" target="_blank">文档下载</a>
					</li>
					<li>
						<a href="/help/help_info_4_19.html" target="_blank">如何获取积分</a>
					</li>
				</ul>
				<ul class="columns">
					<li class="h3">
						<a href="javascript:;">关注我们</a>
					</li>
					<li>
						<a href="http://weibo.com/doc88" target="_blank">新浪微博</a>
					</li>
				</ul>

				<div class="columns-us">
					<div class="qrcode">
						<h3>官方微信</h3>
						<img src="ReceptionStyle/img/index-imgs/weixin.jpg" alt="">
					</div>
					<div class="qrcode">
						<h3>APP下载</h3>
						<img src="ReceptionStyle/img/index-imgs/client.png" alt="">
					</div>
				</div>
			</div>
			<!--</div>-->
			<div class="ft">
				<div class="wrapper">
					<div class="ft-logo">
						<img src="img/index-imgs/logo88.png" alt="">
						<p>道客巴巴 在线文档分享平台</p>
						<p>道客巴巴网站 版权所有 - ©2008-2018 - 京ICP备18056798号 - 京公网安备1101082111号</p>
						<p>
							<a target="_blank" href="/help/complain.html" style="color: #666;font-size: 14px;">互联网违法和不良信息举报</a>&nbsp;&nbsp;电话：400-088-8278&nbsp;&nbsp;邮箱：complaint@doc88.com </p>
					</div>
					<div class="ft-safety">
						<a href="http://webscan.360.cn/index/checkwebsite/url/www.doc88.com" target="_blank" class="ft-qq"></a>
						<a href="/help/contact.html" class="ft-360" target="_blank"></a>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="ReceptionStyle/js/index-js/window.js" language="JavaScript"></script>
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

		<script type="text/javascript">
			var site_url = "http://www.doc88.com";
			var site_png = "http://png.doc88.com/";
			var city = "0";
			var state = "1";
			var check_level = 1;
			var wx_login_type = "index";
		</script>
		<script type="text/javascript" src="ReceptionStyle/js/index-js/index.js"></script>
		<script type="text/javascript" src="ReceptionStyle/js/index-js/captcha.js"></script>

		<script type="text/javascript">
			$(function() {
				if(window.PIE) {
					$('.rounded').each(function() {
						PIE.attach(this);
					});
				}
				Captcha.init('nocaptcha_login');

				if("1") {
					//none
					$('.user_login').html('');
					//get_login_done();
					function getMessageState() {
						$.ajax({
							url: '/uc/index.php?act=message_read_state',
							type: "get",
							dataType: "html",
							success: function(msg) {
								if(msg != '00') {
									$("#new_msg").html('<span class="red"></span>');
								} else {
									$("#new_msg").html("");
								}
							}
						});
					}
					getMessageState();
				} else {
					re_wxcode();
				}
			});

			//获取banner

			fetchBanner();
			//用户头像

			//猜你喜欢
			indexLike();
			//频道
			channelShow();
			//var current_type= $('#current_type_doc').children('.current').attr('value');
			//免费下载的分类
			fetchFreeDownloadCatalog();
			//免费下载
			getFreeDownload();
			//广告位1
			fetchAdsShow1();
			//最新上传的分类
			fetchLastUploadDoc();
			//最新上传
			getQualityDoc();
			//最新模板
			fetchNewModule();
			//广告位2
			fetchAdsShow2();
			//文档求助
			getDocHelp();
			//中标动态
			getBiddingDynamics(site_url);
			//文辑广场
			getCorpusSquare();
			//机构专区
			getOrganizationZone();
			//判断显示是否是vip 还是热门
			//judgeVipDiscountDoc();
			if(city == 0) {
				//不是北京 vip文档
				var html1 = '';
				html1 += '<a class="up-vip-min" href="/vip.html" target="_blank">升级VIP</a>VIP折扣文档';
				$('#show_doc_type').html(html1);
				/*<a class="up-vip-min" href="http://static.doc88.com/vip.html" target="_blank">升级VIP</a>VIP折扣文档*/
				vipDiscountDoc();
			} else {
				var html2 = '';
				html2 += '热门文档';
				$('#show_doc_type').html(html2);
				hotDocShow();
			}
			/*//vip折扣文档
			vipDiscountDoc();
			//热门文档
			hotDocShow();*/
			//推荐文辑
			corpusRecommend();
			//judgeVipDiscountDoc();
			//认证用户
			authenticationUser();
			/*//机构分类图片
			authenticationInstitutionImage();*/
			//机构文档
			authenticationInstitutionDoc();
			//入驻文库的机构
			joinStoreInstitution();
			//入驻文库的机构的数量
			/*joinStoreNumber();*/
			/*setDocImg("http://png.doc88.com");*/

			function search_submit() {
				//获取格式
				var form_id = $('.type-cho-con').children('label').find('b.check').children('input').attr('id');
				//console.log(form_id);
				//form_id.replace('t_','');
				var form = form_id.toLocaleUpperCase();
				form = form.replace('T_', '');
				if(form == 'ALL') {
					form = '';
				}
				//console.log(form);
				setCookie('cdb_search_format', form);
				/*var form_sign=getCookie('cdb_form');
				console.log(form_sign);*/
				keyword = document.getElementById("keyword").value;
				var regEx = /[\^\{\}\?\*\\]/g;
				keywordnew = keyword.replace(regEx, "");
				regEx = /[\[\]\(\)\/]/g;
				keywordnew = keywordnew.replace(regEx, " ");
				if(keyword != keywordnew) {
					keyword = keywordnew;
					document.getElementById("keyword").value = keyword;
				}
				if(keyword == "") {
					document.getElementById("keyword").focus();
					return false;
				}
				var searchForm1 = document.getElementById('searchForm');
				searchForm1.action = '/tag/' + encodeURIComponent(document.getElementById("keyword").value);
				return true;
			}

			function doc_for_help() {
				//获取格式
				var form_id = $('.type-cho-con').children('label').find('b.check').children('input').attr('id');
				//console.log(form_id);
				//form_id.replace('t_','');
				var form = form_id.toLocaleUpperCase();
				form = form.replace('T_', '');
				if(form == 'ALL') {
					form = '';
				}
				//console.log(form);
				setCookie('cdb_search_format', form);
				/*var form_sign=getCookie('cdb_form');
				 console.log(form_sign);*/
				keyword = document.getElementById("keyword").value;
				var regEx = /[\^\{\}\?\*\\]/g;
				keywordnew = keyword.replace(regEx, "");
				regEx = /[\[\]\(\)\/]/g;
				keywordnew = keywordnew.replace(regEx, " ");
				if(keyword != keywordnew) {
					keyword = keywordnew;
					document.getElementById("keyword").value = keyword;
				}
				if(keyword == "") {
					document.getElementById("keyword").focus();
					return false;
				}
				var searchForm = document.getElementById('searchForm');
				window.location.href = '/t-list-1-00000-1-' + encodeURIComponent(document.getElementById("keyword").value) + '.html';
			}

			function search_submit_float() {
				//alert(111);
				keyword = document.getElementById("keyword1").value;
				//alert(keyword);
				var regEx = /[\^\{\}\?\*\\]/g;
				keywordnew = keyword.replace(regEx, "");
				regEx = /[\[\]\(\)\/]/g;
				keywordnew = keywordnew.replace(regEx, " ");
				if(keyword != keywordnew) {
					keyword = keywordnew;
					document.getElementById("keyword1").value = keyword;
				}
				if(keyword == "") {
					document.getElementById("keyword1").focus();
					return false;
				}
				//alert(222);
				var searchForm = document.getElementById('searchForm1');
				searchForm.action = '/tag/' + encodeURIComponent(document.getElementById("keyword1").value);
				//window.location.href="http://www.baidu.com";
				return true;
			}

			function float_doc_for_help() {
				//alert(111);
				keyword = document.getElementById("keyword1").value;
				//alert(keyword);
				var regEx = /[\^\{\}\?\*\\]/g;
				keywordnew = keyword.replace(regEx, "");
				regEx = /[\[\]\(\)\/]/g;
				keywordnew = keywordnew.replace(regEx, " ");
				if(keyword != keywordnew) {
					keyword = keywordnew;
					document.getElementById("keyword1").value = keyword;
				}
				if(keyword == "") {
					document.getElementById("keyword1").focus();
					return false;
				}
				//alert(222);
				var searchForm1 = document.getElementById('searchForm1');
				window.location.href = '/t-list-1-00000-1-' + encodeURIComponent(document.getElementById("keyword1").value) + '.html';
				//window.location.href="http://www.baidu.com";
			}
		</script>
	</body>

</html>