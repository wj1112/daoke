<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jQuery Contact Form Plugin: FFForm</title>
    <link href="${ctx}/css/demo.css" rel="stylesheet" type="text/css">
</head>
<body>
    <section id="getintouch" class="fadeInRightBig animated">
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>添加/修改 文档</span>
            </h1>
        </div>
        <div class="container">
            <form class="contact" action="FileUploadAction" method="post" id="form">
           	 <div class="row clearfix" style="display: none;">
                   <input type="text" name="method" id="method" value="save" />
            </div>
            <input style="display: none;" type="text" name="audit" id="audit" value="${uploadFile.audit }" />
            <div class="row clearfix" style="display: none;">
                  <input type="text" name="id" id="id" value="${uploadFile.id }" />
            </div>
             <div class="row clearfix" style="display: none;">
                  <input type="text" name="classifyId" id="classifyId" value="${uploadFile.classifyId }" />
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        	作者</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="userId" name="userId" data-required="true" data-validation="text"
                        data-msg="Invalid Name" placeholder="Ex：金三胖" value="${uploadFile.userId }"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        	文件名</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="filename" name="filename" data-required="true" data-validation="email"
                        data-msg="Invalid E-Mail" placeholder="Ex: 葵花宝典" value="${uploadFile.filename }"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                        	文件路径</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="path" id="path" placeholder="Ex: D:/file/葵花宝典.doc" value="${uploadFile.path }"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                       	 文件类型</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="type" id="type" placeholder="Ex: word" value="${ uploadFile.type} "/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                       	 下载量</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="download" id="download" placeholder="Ex: 222" value="${uploadFile.download }"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                       	 浏览量</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="browse" id="browse" placeholder="Ex: 332" value="${uploadFile.browse }"/>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="message">
                        	文章摘要</label>
                </div>
                <div class="ctrl">
                    <textarea id="outline" name="outline" rows="6" cols="10">${uploadFile.outline }</textarea>
                </div>
            </div>
            
            <div class="row  clearfix">
                <div class="span10 offset2">
                    <input type="submit" name="submit" id="submit" class="submit" value="提交">
                </div>
            </div>
            </form>
        </div>
    </section>
    <script src="${ctx}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="${ctx}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="${ctx}/js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
     <script src="${ctx}/js/jquery.ffform.js" type="text/javascript"></script>
    <script type="text/javascript">
	var operaVal = "${uploadFile.classifyId}"; 
	/* var operaVal = "教育"; */
	var obj = document.getElementById('operationGrade'); 
	for(var i = 0; i < obj.options.length; i++){
	    var tmp = obj.options[i].value;
	    if(tmp == operaVal){
	        obj.options[i].selected = 'selected';
	        break;
	    }
	}	
 	</script>
</body>
</html>
