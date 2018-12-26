var show=0;
var stop=0;
function fileQueued(file) {
try {
var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.toggleCancel(true, this);
		//upform();
		//alert(swfu);
		swfu.startUpload();
	} catch (ex) {
		this.debug(ex);
	}
}
function fileQueueError(file, errorCode, message) {
	try {
		if (errorCode === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
			alert("请选择少于100篇文档");
			return;
		}

		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setError();
		progress.toggleCancel(false);
		
		var fileProgressID = file.id;
		var obj=document.getElementById(fileProgressID);

		switch (errorCode) {
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="文件大小超出限制";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="不能上传空文件";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="文件类型错误";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		default:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="未知错误";
		obj.childNodes[0].childNodes[1].style.width="";
		obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
		obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
		break;
		}
	} catch (ex) {
        this.debug(ex);
    }
}

function uploadStart(file) {
	try {
		/* I don't want to do any file validation or anything,  I'll just update the UI and
		return true to indicate that the upload should start.
		It's important to update the UI here because in Linux no uploadProgress events are called. The best
		we can do is say we are uploading.
		 */
		if(stop==1)swfu.cancelUpload();
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setStatus("正在上传");
		progress.toggleCancel(true, this);
		
		//progress.showInfo(true);
	}
	catch (ex) {}
	
	return true;
}

function uploadProgress(file, bytesLoaded, bytesTotal) {
	try {
		var percent = Math.ceil((bytesLoaded / bytesTotal) * 100);
		//alert(this.customSettings.progressTarget);
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setProgress(percent);
		//progress.setStatus("正在上传");
	} catch (ex) {
		this.debug(ex);
	}
}

function uploadSuccess(file, serverData) {
	try {
		var uploadRet = eval("("+serverData+")") ;
		var fileProgressID = file.id;
		var obj=document.getElementById(fileProgressID);
		var suc;
		var fai;
		if(uploadRet.result!='0'){
			var message = uploadRet.message;
			if(uploadRet.result==5||uploadRet.result==6||uploadRet.result==7||uploadRet.result==8||uploadRet.result==9){
				message= "上传失败"
			}
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML=message;
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			
			
			if(isprivate=='1'){
				fai=document.getElementById("s_fail");
			}else  fai=document.getElementById("p_fail");
			fai.innerHTML=parseInt(fai.innerHTML)+1;
			obj.childNodes[2].childNodes[1].href="javascript:del_fdoc('"+fileProgressID+"');";
//			6,今日上传文档数已经超过上限,申请个人或机构认证解除上传数量限制
//			7,今日上传文档数已经超过上限,请先验证邮件提高上传上限
//			8,今日上传文档数已经超过上限,绑定微信提高上传上限
//			9,上传时间限制
			if(uploadRet.result==5||uploadRet.result==6||uploadRet.result==7||uploadRet.result==8||uploadRet.result==9){
				//显示报错信息
				if(uploadRet.result==9)
				{
					$("#czmessage_inner").html(uploadRet.message);
					$("#levellink").html("用户权利义务");
				}
				var czmessage=document.getElementById('czmessage');
				czmessage.style.display="";
				
				stop=1;
			}
		}else {
//			obj.childNodes[0].childNodes[1].className="";
			if(isprivate=='1'){
				suc=document.getElementById("s_success");
				showinfo(uploadRet.p_id,fileProgressID);
			}else{
				suc=document.getElementById("p_success");
				showinfo(uploadRet.p_id,fileProgressID);
			}
			var suc_num=parseInt(suc.innerHTML)+1;
			suc.innerHTML=suc_num;
			if(suc_num>1){$("#batch").show();$("#s_batch").show();}
			//obj.childNodes[2].childNodes[0].href="javascript:showinfo('"+uploadRet.p_id+"','"+fileProgressID+"');";
			obj.childNodes[2].childNodes[1].href="javascript:del_sdoc('"+uploadRet.p_id+"','"+fileProgressID+"');";
			obj.childNodes[2].childNodes[0].className="switch off";
			$.get("/uc/index.php?act=collectionadd&r="+fileProgressID);
		}
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setComplete();
		progress.setStatus(uploadRet.message);
		progress.toggleCancel(false);
		progress.showInfo(false);
	} catch (ex) {
		this.debug(ex);
	}
}

function uploadError(file, errorCode, message) {
	try {
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setError();
		progress.toggleCancel(false);
		var fileProgressID = file.id;
		var obj=document.getElementById(fileProgressID);

		switch (errorCode) {
		case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML=message;
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="上传失败.";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.IO_ERROR:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="网络异常，请联系当地网络服务商.";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="网络异常，请联系当地网络服务商.";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="最大文件不能超过50M.";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="文件不合法,请重新上传.";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="取消上传";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML="停止上传";
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		default:
			obj.childNodes[0].childNodes[0].childNodes[2].innerHTML=errorCode;
			obj.childNodes[0].childNodes[1].style.width="";
			obj.childNodes[0].childNodes[1].style.background="#ffe5e5";
			obj.childNodes[0].childNodes[1].style.borderColor="#ffe5e5";
			break;
		}
	} catch (ex) {
        this.debug(ex);
    }
}
function fileDialogComplete(numFilesSelected, numFilesQueued) {
	//showMessage("numFilesSelected:" + numFilesSelected + ", numFilesQueued:" + numFilesQueued);
	
		

}
// This event comes from the Queue Plugin
function queueComplete(numFilesUploaded) {
	//var status = document.getElementById("divStatus");
	//status.innerHTML = numFilesUploaded + " file" + (numFilesUploaded === 1 ? "" : "s") + " uploaded.";
}

