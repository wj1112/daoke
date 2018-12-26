function FileProgress(file, targetID) {

	this.fileProgressID = file.id;
	this.fileProgressWrapper = document.getElementById(this.fileProgressID);
	//alert(this.fileProgressWrapper);
	var str=file.name;
	var strs= new Array(); //定义一数组 
	strs=str.split("."); //字符分割 
	preimg=siteurl_static+'/assets/images/icons/type/'+strs[strs.length-1].toUpperCase()+'.png';
	if (!this.fileProgressWrapper) {
		//alert("dd");
		this.fileProgressWrapper = document.createElement("dl");
		this.fileProgressWrapper.className = "editlayout";
		this.fileProgressWrapper.id = this.fileProgressID;

		this.fileProgressElement = document.createElement("dt");
		this.fileProgressh = document.createElement("h6");
		this.fileProgressimg = document.createElement("img");
		this.fileProgressimg.className = "type";
		this.fileProgressimg.src = preimg;
		
		this.fileProgressbg = document.createElement("div");
		this.fileProgressbg.className = "planbg";
		this.fileProgressbg.style.width = "0%";
		this.filemark = document.createElement("div");
		this.filemark.className = "bookmark";
		if(isprivate=='1'){this.filemark.innerHTML = s_count;s_count++;}
		else{this.filemark.innerHTML = p_count;p_count++;}
		
		this.bookshop = document.createElement("div");
		this.bookshop.className = "bookshop";
		this.bookshop.innerHTML = '<a href="javascript:;" class="switch off no" title="编辑">编辑</a><a id="btnCancel" href="javascript:before_del('+this.fileProgressID+');" class="delete" title="删除">&nbsp;</a>';
//		
//		this.fileProgressElement = document.createElement("a");
//		this.fileProgressElement.className = "progressContainer";
		
		this.fileNmae = document.createElement("a");
		this.fileNmae.className = "filename";
		
		this.fileProgress = document.createElement("em");
		this.fileProgress.className = "plan";
		this.fileProgress.innerHTML='0%';

		this.fileNmae.innerHTML =file.name;
		//this.fileProgressWrapper.appendChild(this.fileProgressElement);
		this.fileProgressh.appendChild(this.fileProgressimg);
		this.fileProgressh.appendChild(this.fileNmae);
		this.fileProgressh.appendChild(this.fileProgress);
		
		this.fileProgressElement.appendChild(this.fileProgressh);
		this.fileProgressElement.appendChild(this.fileProgressbg);
		this.fileProgressWrapper.appendChild(this.fileProgressElement);
		this.fileProgressWrapper.appendChild(this.filemark);
		this.fileProgressWrapper.appendChild(this.bookshop);
		document.getElementById(targetID).appendChild(this.fileProgressWrapper);
		
		if(isprivate=='1'){
			if(s_show==0){s_show==1;$("#fsUploadProgress"+isprivate).show();}
		}else{if(p_show==0){s_show==1;$("#fsUploadProgress"+isprivate).show();}}
		
	} else {
//		this.fileProgressElement = this.fileProgressWrapper.firstChild;
//		this.fileProgressh = this.fileProgressElement.firstChild;
//		this.fileProgressbg = this.fileProgressElement.childNodes[1];
		//this.fileNmae.innerHTML = file.name;
		//alert("aa");
		
	}

	//this.height = this.fileProgressWrapper.offsetHeight;
	this.setTimer(null);
}

FileProgress.prototype.addInfo = function (){
		//this.fileProgressElement.appendChild(binfo);
		//this.fileProgressElement.appendChild(info);
}
FileProgress.prototype.setTimer = function (timer) {
	this.fileProgressWrapper["FP_TIMER"] = timer;
};
FileProgress.prototype.getTimer = function (timer) {
	return this.fileProgressWrapper["FP_TIMER"] || null;
};

FileProgress.prototype.reset = function () {
	//this.fileProgressElement.className = "reset";
	//this.fileProgressElement.title = "shanchu";
	//this.fileProgressWrapper.childNodes[2].innerHTML = "0%";
	//alert('ss');
	//this.fileProgressElement.childNodes[0].className = "progressBarStatus";
	
	//this.appear();	
};

FileProgress.prototype.setProgress = function (percentage) {
	//alert("bb");
	////this.fileProgressElement.childNodes[0].className = "progressBarInProgress";
	//this.fileProgressWrapper.childNodes[2].className = "setPro";
	//alert(percentage);
	this.fileProgressWrapper.childNodes[0].childNodes[0].childNodes[2].innerHTML = percentage + "%";
	this.fileProgressWrapper.childNodes[0].childNodes[1].style.width = percentage + "%";

	//this.appear();	
};
FileProgress.prototype.setComplete = function () {
	
};
FileProgress.prototype.setError = function () {
	//this.fileProgressWrapper.className = "progressBarError";
};
FileProgress.prototype.setCancelled = function () {

};
FileProgress.prototype.setStatus = function (status) {
	//this.fileProgressWrapper.childNodes[0].title = status;
};

// Show/Hide the cancel button
FileProgress.prototype.toggleCancel = function (show, swfUploadInstance) {
	//this.fileProgressElement.childNodes[0].style.visibility = show ? "visible" : "hidden";
	//this.fileProgressElement.style.display = show ? "block" : "none";
	//if (swfUploadInstance) {
		//var fileID = this.fileProgressID;
		//this.fileProgressWrapper.onclick = function () {
		//	swfUploadInstance.cancelUpload(fileID);
		//	return false;
		//};
	//}
};
FileProgress.prototype.showInfo = function (show) {
	//this.fileProgressElement.childNodes[0].style.visibility = show ? "visible" : "hidden";
//	/this.fileProgressElement.style.display = show ? "block" : "none";
};

FileProgress.prototype.appear = function () {
	if (this.getTimer() !== null) {
		clearTimeout(this.getTimer());
		this.setTimer(null);
	}
	
	if (this.fileProgressWrapper.filters) {
		try {
//			this.fileProgressWrapper.filters.item("DXImageTransform.Microsoft.Alpha").opacity = 100;
		} catch (e) {
			// If it is not set initially, the browser will throw an error.  This will set it if it is not set yet.
//			this.fileProgressWrapper.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=100)";
		}
	} else {
//		this.fileProgressWrapper.style.opacity = 1;
	}
		
//	this.fileProgressWrapper.style.height = "";
	
//	this.height = this.fileProgressWrapper.offsetHeight;
//	this.opacity = 100;
//	this.fileProgressWrapper.style.display = "";
	
};

// Fades out and clips away the FileProgress box.
FileProgress.prototype.disappear = function () {

	var reduceOpacityBy = 15;
	var reduceHeightBy = 4;
	var rate = 30;	// 15 fps

	if (this.opacity > 0) {
		this.opacity -= reduceOpacityBy;
		if (this.opacity < 0) {
			this.opacity = 0;
		}

		if (this.fileProgressWrapper.filters) {
			try {
				//this.fileProgressWrapper.filters.item("DXImageTransform.Microsoft.Alpha").opacity = this.opacity;
			} catch (e) {
				// If it is not set initially, the browser will throw an error.  This will set it if it is not set yet.
				this.fileProgressWrapper.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=" + this.opacity + ")";
			}
		} else {
			this.fileProgressWrapper.style.opacity = this.opacity / 100;
		}
	}

	if (this.height > 0) {
		this.height -= reduceHeightBy;
		if (this.height < 0) {
			this.height = 0;
		}

		//this.fileProgressWrapper.style.height = this.height + "px";
	}

	if (this.height > 0 || this.opacity > 0) {
		var oSelf = this;
		this.setTimer(setTimeout(function () {
			//oSelf.disappear();
		}, rate));
	} else {
		//this.fileProgressWrapper.style.display = "none";
		this.setTimer(null);
	}
};
function before_del(id){
	$(id).slideUp();
	
}
