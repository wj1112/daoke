var show=0;
var stop=0;
function fileQueued(file) {

	try {
//		if(show==0){
//		show=1;
//		document.getElementById("fast-upload").style.display="block";
//		document.getElementById("fast-q").className  ="hideupload";
//		document.getElementById("goto").className  ="hideupload";
//		$(".spanButton").addClass('hideswf');
//		}
		 
		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.toggleCancel(true, this);
		//upform();

		swfu.startUpload();

	} catch (ex) {
		this.debug(ex);
	}
}

function fileQueueError(file, errorCode, message) {
	try {
		

		if (errorCode === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
			obj.childNodes[2].title='数量超出限制';
			return;
		}

		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setError();
		progress.toggleCancel(false);

		var fileProgressID = file.id;
//		alert(fileProgressID);
		var obj=document.getElementById(fileProgressID);
		obj.childNodes[2].innerHTML="失败";
//		obj.childNodes[2].title=uploadRet.message;
		obj.childNodes[1].className = "red";
		obj.childNodes[0].style.display="none";
		
		switch (errorCode) {
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			obj.childNodes[2].title='文件大小超出限制';
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			obj.childNodes[2].title='不能上传空文件';
			this.debug("Error Code: Zero byte file, File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			obj.childNodes[2].title='文件类型错误';
			break;
		default:
			if (file !== null) {
				obj.childNodes[2].title='未知错误';
			}
			this.debug("Error Code: " + errorCode + ", File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
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

		var progress = new FileProgress(file, this.customSettings.progressTarget);
		progress.setProgress(percent);
//		progress.setStatus("正在上传");
	} catch (ex) {
		this.debug(ex);
	}
}

function uploadSuccess(file, serverData) {
	try {
		var uploadRet = eval("("+serverData+")") ;
		var fileProgressID = file.id;
		var obj=document.getElementById(fileProgressID);
		var suc=document.getElementById("count-success");
		if(uploadRet.result!='0'){
			obj.childNodes[2].innerHTML="失败";
			obj.childNodes[2].title=uploadRet.message;
			obj.childNodes[1].className = "red";
			obj.childNodes[0].style.display="none";
			if(uploadRet.result==5){
				stop=1;
			}
		}else {
			obj.childNodes[2].style.display="none";
			obj.childNodes[0].title="删除";
			obj.childNodes[0].className = "del";
			obj.childNodes[0].setAttribute('onclick','del_doc(this,"'+uploadRet.p_id+'")');
			suc.innerHTML=parseInt(suc.innerHTML)+1;
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

		switch (errorCode) {
		case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
			progress.setStatus("上传失败.");
			this.debug("Error Code: HTTP Error, File name: " + file.name + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
			progress.setStatus("上传失败.");
			this.debug("Error Code: Upload Failed, File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.IO_ERROR:
			progress.setStatus("网络异常，请联系当地网络服务商.");
			this.debug("Error Code: IO Error, File name: " + file.name + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
			progress.setStatus("网络异常，请联系当地网络服务商.");
			this.debug("Error Code: Security Error, File name: " + file.name + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
			progress.setStatus("最大文件不能超过50M.");
			this.debug("Error Code: Upload Limit Exceeded, File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
			progress.setStatus("文件不合法,请重新选择稳健.");
			this.debug("Error Code: File Validation Failed, File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
			progress.setStatus("取消上传");
			progress.setCancelled();
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
			progress.setStatus("停止上传");
			break;
		default:
			progress.setStatus("Unhandled Error: " + errorCode);
			this.debug("Error Code: " + errorCode + ", File name: " + file.name + ", File size: " + file.size + ", Message: " + message);
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
//	alert('aas');
}
