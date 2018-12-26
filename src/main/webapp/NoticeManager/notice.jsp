<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/v4-shims.css">
<div class="page-content">
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<div class="row">
				<div class="col-xs-12">
					<h3 class="header smaller lighter blue">公告管理</h3>
					<div class="table-header">最新的公告查询结果</div>
					<div class="table-responsive">
						<table id="sample-table-2"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">序号</th>
									<th class="hidden-480">作者</th>
									<th><i class="bigger-110"></i>标题</th>
									<th class="hidden-480">公告编号</th>
									<th >公告类型</th>
									<th><i class="icon-time bigger-110 hidden-480"></i> 上传时间</th>
									<th><i class="icon-time bigger-110 hidden-480"></i> 修改时间</th>
									<th><i class="bigger-110"></i>公告内容</th>
									<th></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="uploadNotice" items="${uploadNotices }"
									varStatus="vs">
									<tr>
										<td class="center">${vs.count }</td>
										<td class="hidden-480">${uploadNotice.userId }</td>
										<td>${uploadNotice.title }</td>
										<td class="hidden-480">${uploadNotice.code }</td>
										<td class="hidden-480"><span
											class="label label-sm label-warning">${uploadNotice.type }</span>
										</td>
										<td class="hidden-480">${uploadNotice.createtime }</td>
										<td class="hidden-480">${uploadNotice.updatetime }</td>
										<td>${uploadNotice.content }</td>
										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
												<a class="blue"
													href="NoticeUploadServelt?method=input&id=${uploadNotice.id }">
													<i class="icon-zoom-in bigger-130"></i>
												</a> <a class="green"
													href="NoticeUploadServelt?method=input&id=${uploadNotice.id }">
													<i class="icon-pencil bigger-130"></i>
												</a> <a class="red" href="#"
													onclick="deleteUsers(${uploadNotice.id})"> <i
													class="icon-trash bigger-130"></i>
												</a>
												<a class="purple" href="notice-save.jsp">
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
<script src='assets/js/jquery-2.0.3.min.js'></script>
<script type="text/javascript">
jQuery(function($) {
	 var oTable1 = $('#sample-table-2').dataTable( {
	"aoColumns": [
     { "bSortable": false},
     null, null,null, null,null,null,null,
	  { "bSortable": false }
	] } );
});
	function deleteUsers(id){
		if(confirm("确认要删除吗?")){
			location.href="NoticeUploadServelt?method=delete&id=" + id;
		}
	}
</script>