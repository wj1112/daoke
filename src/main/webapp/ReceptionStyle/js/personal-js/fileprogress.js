function FileProgress(file, targetID) {
	this.fileProgressID = file.id;
	this.fileProgressWrapper = document.getElementById(this.fileProgressID);
//	alert(this.fileProgressWrapper);
	var str=file.name;
	var strs= new Array(); //定义一数组 
	strs=str.split("."); //字符分割 
	preimg='<img src="/assets/images/icons/type/'+strs[strs.length-1].toUpperCase()+'.png"  class="type">';
	//preimg='<img src="/assets/images/icons/type/PDF.png" class="type">';
	if (!this.fileProgressWrapper) {
		this.fileProgressWrapper = document.createElement("li");
		//this.fileProgressWrapper.className = "progressWrapper";
		this.fileProgressWrapper.id = this.fileProgressID;

		this.fileProgressElement = document.createElement("a");
		this.fileProgressElement.className = "progressContainer";
		
		this.fileNmae = document.createElement("span");
		this.fileNmae.className = "filename";
		
		this.fileProgress = document.createElement("span");
		this.fileProgress.className = "plan";
		this.fileProgress.innerHTML='(0%)';
		this.fileNmae.innerHTML =preimg+file.name ;
		this.fileProgressWrapper.appendChild(this.fileProgressElement);
		this.fileProgressWrapper.appendChild(this.fileNmae);
		this.fileProgressWrapper.appendChild(this.fileProgress);

		document.getElementById(targetID).appendChild(this.fileProgressWrapper);
		
		if(show==0){
			show=1;
			document.getElementById("fast-upload").style.display="block";
			document.getElementById("fast-q").className  ="hideupload";
			document.getElementById("goto").className  ="hideupload";
			$(".spanButton").addClass('hideswf');
			}

	} else {

		this.fileProgressWrapper.childNodes[1].innerHTML =preimg+file.name ;
		
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
	
	this.appear();	
};

FileProgress.prototype.setProgress = function (percentage) {
	////this.fileProgressElement.childNodes[0].className = "progressBarInProgress";
	//this.fileProgressWrapper.childNodes[2].className = "setPro";
	this.fileProgressWrapper.childNodes[2].innerHTML ="("+ percentage + "%)";

	this.appear();	
};
FileProgress.prototype.setComplete = function () {
	this.fileProgressWrapper.childNodes[0].className = "del";
	this.fileProgressWrapper.childNodes[2].className  = "plan";
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
			this.fileProgressWrapper.filters.item("DXImageTransform.Microsoft.Alpha").opacity = 100;
		} catch (e) {
			// If it is not set initially, the browser will throw an error.  This will set it if it is not set yet.
			this.fileProgressWrapper.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=100)";
		}
	} else {
		this.fileProgressWrapper.style.opacity = 1;
	}
		
	this.fileProgressWrapper.style.height = "";
	
	this.height = this.fileProgressWrapper.offsetHeight;
	this.opacity = 100;
	this.fileProgressWrapper.style.display = "";
	
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
				this.fileProgressWrapper.filters.item("DXImageTransform.Microsoft.Alpha").opacity = this.opacity;
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

