<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/v4-shims.css">
<style type="text/css">
	    .modal-content{
	    	width: 330px;
	    }
	    .modal.fade.in{
	    	top:90px;
	    }
	    .modal-body{
	    	margin-left: 40px;
	    }
	    .modal-body button{
	    	margin-left: 10px;
	    }
	</style>
<div class="page-content">
	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->

			<div class="row">
				<div class="col-xs-12">
					<h3 class="header smaller lighter blue">文档管理</h3>
					<div class="table-header">最新的文档查询结果</div>
					<div class="table-responsive">
						<table id="sample-table-2"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">序号</th>
									<th style="display: none;">id</th>
									<th>作者</th>
									<th>文件名</th>
									<th><i class="icon-time bigger-110 hidden-480"></i> 上传时间</th>
									<th class="hidden-480">文件类型</th>
									<th class="hidden-480">文件状态</th>
									<th class="hidden-480">文件路径</th>
									<th class="hidden-480">点击量</th>
									<th></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="uploadFile" items="${uploadFiles }"
									varStatus="vs">
									<tr>
										<td class="center">${vs.count }</td>
										<td style="display: none;">${uploadFile.id }</td>
										<td>${uploadFile.users.username }</td>
										<td>${uploadFile.filename }</td>
										<td class="hidden-480">${uploadFile.createtime }</td>
										<td>${uploadFile.type }</td>
										<!-- 黄色警告，绿色通过，灰色表示不通过 -->
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
										<td>${uploadFile.download}</td>
										<td>
											<a style="text-decoration:none" id="shehe" data-toggle="modal" data-target="#myModal" href="#" title="审核">审核</a>
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
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
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
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body"><!-- style="display: none;" -->
				<form class="contact" style="display: none;" action="FileUploadAction" method="post" id="form">
					<input  type="text" name="method" id="method" value="save_shehe" />
					<input  type="text" name="id" id="id" value="" />
					<input  type="text" name="audit" id="audit" value="" />
				</form>
				<button type="button" class="btn btn-primary" onclick="submitForm1()">
					通过
				</button>
				<button type="button" class="btn btn-primary" onclick="submitForm2()">
					不通过
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
			<div class="modal-footer">
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	 jQuery(function($) {
		 var oTable1 = $('#sample-table-2').dataTable( {
		"aoColumns": [
	     { "bSortable": false},
	     null, null,null,null,null,null,null,null,
		  { "bSortable": false }
		] } );
	}); 
	 function deleteUsers(id){
			if(confirm("确认要删除吗?")){
				location.href="FileUploadAction?method=delete&id=" + id;
			}
		}
	 function submitForm1(){
		 var form = document.getElementById("form");
		 $("#audit").val(2);
		 form.submit();
	 }
	 function submitForm2(){
		 var form = document.getElementById("form");
		 $("#audit").val(-1);
		 form.submit();
	 }
	 $( "#shehe" ).click( function() {
			$( "table tr" ).click( function() {
				var td = $( this ).find( "td" );
				$("#id").val(td.eq( 1 ).text());
			} );
		} );
</script>