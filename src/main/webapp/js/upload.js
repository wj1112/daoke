//文档上传
$(document).ready(function(){
  // 上传文档列表显示操作
  $(".upload-list2 dd").mouseover(function(){
      $(this).find("p.shop").fadeIn("fast");
  $(".upload-list2 dd").mouseleave(function(){
      $(this).find("p.shop").fadeOut("fast");
      })
  });
});
function swfload() {
	var settings = {
	flash_url : "/assets/uc/js/swfupload.swf",
	upload_url: uploadurl,
	post_params: {"act":"upload","uploadsessionid":"<tpl>$sessionid</tpl>"},
	file_size_limit : "500 MB",
	file_types :"*.dps;*.et;*.wps;*.pdf;*.doc;*.docx;*.ppt;*.pps;*.pptx;*.xls;*.xlsx;*.rtf;*.txt;*.zip",
	file_types_description :"doc88 Files",
	file_upload_limit : 100,
	file_queue_limit : 0,
		custom_settings : {
			progressTarget : "fsUploadProgress"+isprivate,
			cancelButtonId : "btnCancel"
		},
	debug: false,

	// Button settings
	//button_image_url: "/assets/uc/images/swf_bg.jpg",
	button_width: "880",
	button_height: "174",
	button_color: '#eee',
	button_placeholder_id: "spanButtonPlaceHolder",
	button_text: '<span class="theFont"></span>',
	//button_text_style: ".theFont { font-size: 12;}",
	button_text_left_padding: 16,
	button_text_top_padding: 7,
	button_cursor:SWFUpload.CURSOR.HAND,
					
					// The event handler functions are defined in handlers.js
					file_queued_handler : fileQueued,
					file_queue_error_handler : fileQueueError,
					upload_start_handler : uploadStart,
					upload_progress_handler : uploadProgress,
					upload_error_handler : uploadError,
					upload_success_handler : uploadSuccess
	};
swfu = new SWFUpload(settings);
};
  // 上传区域宽度动画
//	$(".uploadtag").find(".swfover").mouseover(function(){
//		$(".swfover").unblind("mouseover");
//		$(".swfover").removeClass("swfover");
//			$(this).trigger("click");
//	});	 
$(document).ready(function(){
//$(".flashupload>li").bind("mouseover",function(){$(this).trigger("click");$(".flashupload>li").unbind("mouseover");return;});
  $(".flashupload>li").click(function(){
	  /*if($("#file-upload").is(":checked")){
		if($(this).find("#swfload").length>0)
		{
			return ;
		}
      $(".flashupload>li").addClass("besides");
      $(".flashupload>li").removeClass("current");
      $("#swfload").remove();
      $(".flashupload").find("dd").hide();
      $(".flashupload").find("dt").show();
      $("#fsUploadProgress"+isprivate).hide();
      isprivate=$(this).find(".ispublic").html();
      //if(p_count>1)$("#fsUploadProgress"+isprivate).show();
      
      if(isprivate=='1'){
    	  $(".msg-for-all").hide();$(".msg-for-open").hide();$(".msg-for-lock").show();
			if(s_count>1)$("#fsUploadProgress"+isprivate).show();
		}else{
			$(".msg-for-all").hide();$(".msg-for-open").show();$(".msg-for-lock").hide();
			if(p_count>1)$("#fsUploadProgress"+isprivate).show();
		}
      $(this).removeClass("besides");

      $(this).append('<div style="top:0px;position:absolute;" id="swfload"><span id="spanButtonPlaceHolder" ></span></div>');
      swfload();

      $(this).find("dd").show();$(this).find("dt").hide();
      $(this).addClass("current");
	  }else{
		  alert("上传文档前请仔细阅读并接受《用户上传协议》。");
	  }*/
});
});
  function showinfo(id,progressid){
  		htmlobj = $.get("/uc/usr_doc_manager.php", {
  		act: "getDocInfo",
  		p_id: id,
  		e_class:"upload"
  	}, function(data){
  		if (data) {
  			//alert(data);
  			//$("#"+progressid).hide();
  			$("#"+progressid).append(data);
  			$("#"+progressid).find(".editupload").hide();
  			if(isprivate!='1'){
  			$("#"+progressid).find(".switch").removeClass("off"); 
  			$("#"+progressid).find("dt").hide(); 
  		  	$("#"+progressid).find(".editupload").slideDown();
  		  	$("#"+progressid).find(".switch").html('收起'); 
  		  	$("#"+progressid).find(".switch").attr('href','javascript:changedown("'+progressid+'")'); 
  		  	//默认勾选
  		  $("#"+progressid).find(".shareto").parent().addClass('check'); 
  		  $("#"+progressid).find(".shareto").attr('value',1); 
  		  $("#"+progressid).find(".shareto").attr("checked", true);
  			}else $("#"+progressid).find(".switch").attr('href','javascript:changeup("'+progressid+'")'); 
//  			$("#"+progressid).find(".shareto").attr("checked", true);
  			//$(this).href="http://www.baidu.com";
  		}
  	});
  //alert(progressid);
  }
  function changeup(progressid){
	 // alert("fdsa");
  	$("#"+progressid).find(".switch").removeClass("off"); 
  	$("#"+progressid).find("dt").hide(); 
  	$("#"+progressid).find(".editupload").slideDown();
  	$("#"+progressid).find(".switch").attr('href','javascript:changedown("'+progressid+'")'); 
  	$("#"+progressid).find(".switch").html('收起'); 
  }
  function changedown(progressid){
  	$("#"+progressid).find(".editupload").slideUp();
  	$("#"+progressid).find(".switch").addClass("off"); 
  	$("#"+progressid).find("dt").show(); 
  	$("#"+progressid).find(".switch").attr('href','javascript:changeup("'+progressid+'")'); 
  	$("#"+progressid).find(".switch").html('编辑'); 
  	}
  function del_sdoc(id,progressid){
		//alert(id);
		htmlobj = $.get("/uc/index.php", {
				act: "del_doc",
				id: id
			}, function(data){
				if (data == 1) {
					$("#"+progressid).remove();
					if(isprivate=='1'){
						suc=document.getElementById("s_success");
					}else{
						suc=document.getElementById("p_success");
					}
					var num=parseInt(suc.innerHTML) - 1;
					suc.innerHTML = num;
					if(num<=1){$("#batch").hide();}
				}
			});
	}
	function del_fdoc(progressid){
		$("#"+progressid).remove();
		if(isprivate=='1'){
			fai=document.getElementById("s_fail");
		}else{
			fai=document.getElementById("p_fail");
		}
		 var num=parseInt(fai.innerHTML) - 1;
		 fai.innerHTML =num;
		 if(num<=1){$("#s_batch").hide();}
	}
//function switchtab(progressid){	
//	if(isprivate=='1'){
//		if(s_show==0){s_show==1;$("fsUploadProgress"+isprivate)show;}
//	}else{if(p_show==0){s_show==1;$("fsUploadProgress"+isprivate)show;}}
//}
//alert(progressid);
	var sub_all_count=0;
function sub_all(id){
	sub_all_count=0;
	if ($(id).parents("form").find("input[name='pcid']").val() == "" || $(id).parents("form").find("input[name='pcid']").val() == 0) {
        var obj = $(id).parents("form").find(".catelog");
        analogselect(obj);
        $(id).parents("form").find(".msgs").html('分类不能为空');
        return false;
    }
	$(".editupload").each(function(){
		var obj=$(this).find(".btncss1");
		var id=obj.attr("onclick").replace(/[^0-9]/ig,"");
		var res=subEdit(id,obj,true);

		if(res==false){$.scrollTo('#myedit_'+id,500);return false;}
	});
	//if(flag=='1')window.location.href = "/uc/doc_manager.php?act=doc_list&state=all&list_num=small";
}
function editNull(){
    $.ajax({
        url: '/uc/usr_doc_manager.php',
        type: 'post',
        dataType: 'html',
        data: "act=getNullInfo",
        success: function(msg){
            $("#edit_null").html(msg);
			msg = msg.replace("jifen_class","s_jifen_class");
            $("#s_edit_null").html(msg);
        }
    });
}
function edit_null_close(){
//	$("#batch").html("取消批量填写");
//	$("#s_batch").html("");
	
	$("#edit_null").slideUp();
    $("#s_edit_null").slideUp();
}
function closetip(){
	$("#czmessage").hide();
}
