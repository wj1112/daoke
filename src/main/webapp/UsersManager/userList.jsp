<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-content">
    <div class="page-header">
        <h1>
            Tables
            <small>
                <i class="icon-double-angle-right"></i>
                userList
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->
            <div class="table-header">
                search result
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="table-responsive">
                        <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>账号</th>
                                <th>密码</th>
                                <th>性别</th>
                                <th>生日</th>
                                <th>账号类型</th>
                                <th>qq号</th>
                                <th>电话</th>
                                <th>邮箱</th>
                                <th>创建时间</th>
                                <!--<th class="hidden-480">Clicks</th>-->

                                <!--<th>
                                    <i class="icon-time bigger-110 hidden-480"></i>
                                    Update
                                </th>-->
                                <!--<th class="hidden-480">Status</th>-->
                                <th></th>

                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${usersList}" var="users" varStatus="vs" >
                            <tr>
                                <td>${vs.count}</td>
                                <td>${users.username}</td>
                                <td>${users.password}</td>
                                <td>${users.sex}</td>
                                <td>${users.birthday}</td>
                                <td>${users.userType}</td>
                                <td>${users.qq}</td>
                                <td>${users.mobile}</td>
                                <td>${users.email}</td>
                                <td>${users.createTime}</td>

                                <%--<td class="hidden-480">
                                    <span class="label label-sm label-warning">Expiring</span>
                                </td>--%>

                                <td>
                                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="detailUsers?id=${users.id}">
                                            <i class="icon-zoom-in bigger-130"></i>
                                        </a>

                                        <a class="green" href="editUsers?id=${users.id}">
                                            <i class="icon-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="javascript:deleteUser(${users.id})">
                                            <i class="icon-trash bigger-130"></i>
                                        </a>

                                        <a class="purple" href=addUsers>
                                            <div style="font-size: 16px">
                                                <i class="fas fa-plus-circle"></i>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="visible-xs visible-sm hidden-md hidden-lg">
                                        <div class="inline position-relative">
                                            <button class="btn btn-minier btn-yellow dropdown-toggle"
                                                    data-toggle="dropdown">
                                                <i class="icon-caret-down icon-only bigger-120"></i>
                                            </button>

                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                <li>
                                                    <a href="UserAction?method=detail&id=${usersLists.id}" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="UserAction?method=input&id=${usersLists.id}" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="javascript:deleteUser(${usersLists.id}) " class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="TreeAction?method=saveUser" class="tooltip-add" data-rel="tooltip" title="Add">
																				<span class="purple">
																					<i class="fas fa-plus-circle"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
<!-- basic scripts -->

<script type="text/javascript">
    function deleteUser(id) {
        if (confirm("确认删除数据")) {
            location.href = "deleteUsers?id=" + id;
        }
    }

</script>

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]-->
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
</script>
<!--[endif]-->

<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<%--<script src="assets/js/bootstrap.min.js"></script>--%>
<script src="assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/v4-shims.css">


<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {
        var oTable1 = $('#sample-table-2').dataTable({
            "aoColumns": [
                {"bSortable": false, "bSearchable": false},
                null,
                {"bSortable": false, "bSearchable": false},
                null, null, null, null, null,null,null,
                {"bSortable": false}
            ]
        });
    })
</script>
