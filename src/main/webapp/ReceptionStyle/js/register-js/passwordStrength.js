var passwordStrength = function(){};
passwordStrength.getScope = function(passwd)
{
	var scores = this.ratepasswd(passwd);
	if(scores < 35 && scores >=0){
		return 1;
	}else if(scores < 60 && scores >=35){
		return 2;
	}else if(scores >= 60){
		return 3;
	}
}
passwordStrength.ratepasswd=function(passwd){
	//判断密码强度
	var len = passwd.length, scores;
	if(len >= 6 && len <= 16){
		scores = this.checkStrong(passwd);
	}else{
		scores = -1;
	}
	
	return scores/4*100;
	
}

//密码强度;
passwordStrength.checkStrong=function(content){
var modes = 0, len = content.length;
for(var i = 0;i < len; i++){
	modes |= this.charMode(content.charCodeAt(i));
}
return this.bitTotal(modes);	
}

//字符类型;
passwordStrength.charMode=function(content){
if(content >= 48 && content <= 57){ // 0-9
	return 1;
}else if(content >= 65 && content <= 90){ // A-Z
	return 2;
}else if(content >= 97 && content <= 122){ // a-z
	return 4;
}else{ // 其它
	return 8;
}
}

//计算出当前密码当中一共有多少种模式;
passwordStrength.bitTotal=function(num){
var modes = 0;
for(var i = 0;i < 4;i++){
	if(num & 1){modes++;}
	num >>>= 1;
}
return modes;
}
