<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/v4-shims.css">
<div class="page-content">
	<div class="page-header">
		<h1>
			Tables
			<small>
				<i class="icon-double-angle-right"></i>
				文档管理
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->

			<div class="row">
				<div class="col-xs-12">
					<div class="table-header">最新的文档查询结果</div>
					<div class="table-responsive">
						<table id="sample-table-2"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">序号</th>
									<th>作者</th>
									<th>文件名</th>
									<th><i class="icon-time bigger-110 hidden-480"></i> 上传时间</th>
									<th class="hidden-480">文件类型</th>
									<th class="hidden-480">文件状态</th>
									<th class="hidden-480">文件路径</th>
									<th class="hidden-480">文件分类</th>
									<th></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="uploadFile" items="${fileList }"
									varStatus="vs">
									<tr>
										<td class="center">${vs.count }</td>
										<td>${uploadFile.userId }</td>
										<td>${uploadFile.filename }</td>
										<td class="hidden-480"><fmt:formatDate value="${uploadFile.createtime }" pattern="yyyy-MM-dd"/></td>
										<td>${uploadFile.type }</td>
										<!-- 1绿色通过,0黄色警告待审核，-1灰色表示不通过 -->
										<td class="hidden-480">
											<c:choose>
												<c:when test="${uploadFile.audit eq 2}" >
													<span class="label label-sm label-success">通过</span>
												</c:when>
												<c:when test="${uploadFile.audit eq 1}">
													<span class="label label-sm label-warning">待审核</span>
												</c:when>
												<c:when test="${uploadFile.audit eq -1}">
													<span class="label label-sm label-defeated">未通过</span>
												</c:when>
											</c:choose>
										</td>
										<td>${uploadFile.path }</td>
										<td>${uploadFile.classifyId}</td>
										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
												<a class="blue"
													href="file/detail?id=${uploadFile.id }">
													<i class="icon-zoom-in bigger-130"></i>
												</a> <a class="green"
													href="file/edit?id=${uploadFile.id }">
													<i class="icon-pencil bigger-130"></i>
												</a> <a class="red" href="#"
													onclick="deleteUsers(${uploadFile.id})"> <i
													class="icon-trash bigger-130"></i>
												</a>
												<a class="purple" href="file/add">
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

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li>
															<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																<span class="red">
																	<i class="icon-trash bigger-120"></i>
																</span>
															</a>
														</li>
														<li>
															<a href="#" class="tooltip-add" data-rel="tooltip" title="Add">
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

			<div id="modal-table" class="modal fade" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header no-padding">
							<div class="table-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<span class="white">&times;</span>
								</button>
								Results for "Latest Registered Domains
							</div>
						</div>

						<div class="modal-body no-padding">
							<table
								class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
								<thead>
									<tr>
										<th>Domain</th>
										<th>Price</th>
										<th>Clicks</th>

										<th><i class="icon-time bigger-110"></i> Update</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td><a href="#">ace.com</a></td>
										<td>$45</td>
										<td>3,330</td>
										<td>Feb 12</td>
									</tr>

									<tr>
										<td><a href="#">base.com</a></td>
										<td>$35</td>
										<td>2,595</td>
										<td>Feb 18</td>
									</tr>

									<tr>
										<td><a href="#">max.com</a></td>
										<td>$60</td>
										<td>4,400</td>
										<td>Mar 11</td>
									</tr>

									<tr>
										<td><a href="#">best.com</a></td>
										<td>$75</td>
										<td>6,500</td>
										<td>Apr 03</td>
									</tr>

									<tr>
										<td><a href="#">pro.com</a></td>
										<td>$55</td>
										<td>4,250</td>
										<td>Jan 21</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="modal-footer no-margin-top">
							<button class="btn btn-sm btn-danger pull-left"
								data-dismiss="modal">
								<i class="icon-remove"></i> Close
							</button>

							<ul class="pagination pull-right no-margin">
								<li class="prev disabled"><a href="#"> <i
										class="icon-double-angle-left"></i>
								</a></li>

								<li class="active"><a href="#">1</a></li>

								<li><a href="#">2</a></li>

								<li><a href="#">3</a></li>

								<li class="next"><a href="#"> <i
										class="icon-double-angle-right"></i>
								</a></li>
							</ul>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- PAGE CONTENT ENDS -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</div>
<!-- /.page-content -->
<script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		 var oTable1 = $('#sample-table-2').dataTable( {
		"aoColumns": [
	    { "bSortable": false},
	    null, null,null,null,null,null,null,
		  { "bSortable": false }
		] } );
	});
	function deleteUsers(id){
		if(confirm("确认要删除吗?")){
			location.href="file/delete?id=" + id;
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
