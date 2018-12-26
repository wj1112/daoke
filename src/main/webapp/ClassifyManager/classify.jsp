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
					<h3 class="header smaller lighter blue">分类管理</h3>
					<div class="table-header">最新的分类查询结果</div>
					<div class="table-responsive">
						<div>
							<form action="ClassifyAction?method=flcx" id="myform" method="post">
								<select onchange="submitForm();" id="operationGrade" name="classifyId">
										<option value="0">全部分类</option>
									<c:forEach var="classify_name" items="${classifies_name }" varStatus="vs">
										<c:if test="${classify_name.parent_id eq -1 }">
											<option value="${classify_name.id}">${classify_name.name }</option>
										</c:if>
									</c:forEach>
								</select>
							</form>
						</div>
						<table id="sample-table-2"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center">序号</th>
									<th style="display: none;">id</th>
									<th class="hidden-480">名字</th>
									<th class="hidden-480">编号</th>
									<th class="hidden-480">父节点</th>
									<th></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="classify" items="${classifies }" varStatus="vs">
									<tr>
										<td class="center">${vs.count }</td>
										<td style="display: none;">${classify.id }</td>
										<td>${classify.name }</td>
										<td>${classify.code }</td>
										<td class="hidden-480">${classify.parent_id }</td>
										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
												<a class="blue" href="#" data-toggle="modal" data-target="#myModal">
													<i class="icon-zoom-in bigger-130"></i>
												</a> 
												<a class="green" href="#" data-toggle="modal" data-target="#myModal">
													<i class="icon-pencil bigger-130"></i>
												</a> 
												<a class="red" href="#"
													onclick="deleteUsers(${classify.id})"> <i
													class="icon-trash bigger-130"></i>
												</a>
												<a class="purple" href="#" data-toggle="modal" data-target="#myModal">
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
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">添加分类</h4>
			</div>
			<div class="modal-body" style="padding-left: 120px;padding-top: 50px;">
				<div class="container">
					<form class="contact" action="ClassifyAction" method="post" id="form">
						<input style="display: none;" type="text" name="method" id="method" value="save" />
						<input style="display: none;" type="text" name="id" id="id" value="${classify.id }" />
						<label for="name" >名字&nbsp;&nbsp;</label>
						<input type="text" style="height: 30px; margin-bottom: 20px;" id="name" name="name" data-required="true" data-validation="text" data-msg="Invalid Name" placeholder="Ex：武功秘籍" value="" /><br />
						<label for="email">所属分类&nbsp;&nbsp;</label>
						<select style="height: 30px;" id="operationGrade2" name="parent_id"><br />
							<option value="-1">---添加分类---</option>
							<c:forEach var="classify_name" items="${classifies_name }" varStatus="vs">
								<c:if test="${classify_name.parent_id eq -1 }">
									<option value="${classify_name.id}">${classify_name.name }</option>
								</c:if>
							</c:forEach>
						</select>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="submitForm2()">提交更改</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>
<script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	var operaVal = "${flcx}"; 
	/* var operaVal = "教育"; */
	var obj = document.getElementById('operationGrade'); 
	for(var i = 0; i < obj.options.length; i++){
	    var tmp = obj.options[i].value;
	    if(tmp == operaVal){
	        obj.options[i].selected = 'selected';
	        break;
	    }
	}	
	function submitForm(){
		var form = document.getElementById("myform");
		form.submit();
	}
	function submitForm2(){
		var form = document.getElementById("form");
		form.submit();
	}
	 function deleteUsers(id){
			if(confirm("确认要删除吗?")){
				location.href="ClassifyAction?method=delete&id=" + id;
			}
		}
	jQuery(function($) {
		 var oTable1 = $('#sample-table-2').dataTable( {
		"aoColumns": [
	      { "bSortable": false},
	      null,null,null,null,
		  { "bSortable": false }
		] } );
	});
	
	$( ".green" ).click( function() {
		$( "table tr" ).click( function() {
			var td = $( this ).find( "td" );
			$("#id").val(td.eq( 1 ).text());
			$("#name").val(td.eq( 2 ).text());
		} );
	} );
	$('#myModal').on('show.bs.modal',centerModals);
    	$('#myModal').modal({
			backdrop: 'static',
			keyboard: false,//禁止键盘
			show:false
		});
		$(window).on('resize', centerModals);
		function centerModals() {   
		　　$('#myModal').each(function(i) {
		　　　　var $clone = $(this).clone().css('display','block').appendTo('body');
		　　　　var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
		　　　　top = top > 0 ? top : 0;   
		　　　　$clone.remove();   
		　　　　$(this).find('.modal-content').css("margin-top", top);   
		　　});   
		};    
</script>