<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx"  value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Dashboard - Ace Admin</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- basic styles -->

    <link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css"/>

    <!--[if IE 7]-->
    <link rel="stylesheet" href="${ctx}/assets/css/font-awesome-ie7.min.css"/>
    <!--[endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="${ctx}/assets/css/ace-fonts.css"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="${ctx}/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css"/>

    <!--[if lte IE 8]-->
    <link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css"/>
    <!--[endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="${ctx}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]-->
    <script src="${ctx}/assets/js/html5shiv.js"></script>
    <script src="${ctx}/assets/js/respond.min.js"></script>
    <!--[endif]-->
</head>

<body>
<%@include file="head.jsp"%>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <%@include file="tree.html"%>
        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <a href="TreeAction"> <i class="icon-home home-icon"></i></a>
                    </li>

                </ul><!-- .breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="icon-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- #nav-search -->
            </div>
            <jsp:include page="${page eq null ? '/UsersManager/userList.jsp' : page }"></jsp:include>
        </div><!-- /.main-content -->
    </div><!-- /.main-container-inner -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!-- [if IE]-->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
</script>
<!-- [endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${ctx}/assets/js/bootstrap.min.js"></script>
<script src="${ctx}/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!-- [if lte IE 8]-->
<script src="${ctx}/assets/js/excanvas.min.js"></script>
<!-- [endif]-->

<script src="${ctx}/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${ctx}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${ctx}/assets/js/jquery.slimscroll.min.js"></script>
<script src="${ctx}/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="${ctx}/assets/js/jquery.sparkline.min.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.min.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.resize.min.js"></script>
<script src="${ctx}/assets/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->

<script src="${ctx}/assets/js/ace-elements.min.js"></script>
<script src="${ctx}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

</body>
</html>
