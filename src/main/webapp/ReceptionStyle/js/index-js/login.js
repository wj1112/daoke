        function showWxLogin(envpath,logpage){
			//return false;
	        setCookie("doc88_lt","wx",24*365);
        	getWxqr(envpath);
		    checkWxLogin(logpage);
        }

		function showWxLoginIndex(envpath){
			//alert(111);
			setCookie("doc88_lt","wx",24*365);
			getWxqr(envpath);
			checkWxLoginIndex();
		}
        var wxrq_if = 0;
        function getWxqr(envpath){
	        if(wxrq_if==1){
		        return;	
	        }

	        $.ajax({
                url: '/member.php',
                type: 'get',
                dataType: 'html',
                data: 'act=get_wxlogin_img',
                success: function(data){
			        data=eval("("+data+")");
			        if (data.result == 1) {
				        qrcode_img(data.url,"doc_qrcode",130);
				        $("#logo img").attr('src',envpath + "/assets/uc/images/wxlogo.png");
				        wxrq_if = 1;
			        }
                }
            });
        }
        
        var wxLoginIntervalId = 0;
        var wxLoginIntervalTimes = 0;
        function checkWxLogin(logpage){
			wxLoginIntervalId = window.setInterval(function(){
				if (wxLoginIntervalTimes > 30) {
					window.clearInterval(wxLoginIntervalId);
				}
				$.ajax({
					url: '/member.php',
					type: 'get',
					dataType: 'json',
					data: 'act=wx_login_check',
					success: function(data){
						if (data.result == 1) {
							//showLoginSuccess();
							if (logpage == 'index') {
								//window.location.href = "index.php";
								window.location.href = "/uc/index.php";
							}else if(logpage == 'task_index_new'){
								window.location.reload();
							}
							else{
								var refer_url = $("#refer").val(); // refer 登录前的来源地址
								if(refer_url == ''){
									//window.location.href = "index.php";
									window.location.href = "/uc/index.php";
								}else{
									window.location.href = refer_url;
								}
							}

						}
					}
				});
				wxLoginIntervalTimes++;
			}, 5000);
		}
		function checkWxLoginIndex(){
			wxLoginIntervalId = window.setInterval(function(){
				if (wxLoginIntervalTimes > 30) {
					window.clearInterval(wxLoginIntervalId);
				}
				$.ajax({
					url: '/member.php',
					type: 'get',
					dataType: 'json',
					data: 'act=wx_login_check',
					success: function(data){
						if (data.result == 1) {
							//showLoginSuccess();
							window.location.reload();
						}
					}
				});
				wxLoginIntervalTimes++;
			}, 5000);
		}
		function clearAjax(){
			clearInterval(wxLoginIntervalId);
		}
        function showLoginSuccess(){
        	//window.location.href = 'index.php';
        	var refer_url = $("#refer").val(); // refer 登录前的来源地址
        }


		/*var count=0;*/
		/*var countwx=0;*/
		function login_back_login (logpage){
			//$("#msgs1").html("").slideUp();
			var login_name = $('#loginname1');
			if(login_name.val() == ""){
				login_name.focus();
				return false;
			}

			var login_pwd = $('#password1');
			if(login_pwd.val() == ""){
				login_pwd.focus();
				return false;
			}

			var captchaCode = $("#captchaCode").val();
			var code = $("#wx_valide_"+wx_login_type).val();
			/*console.log(captchaCode);
			console.log(check_level);*/

			if(check_level==0){
				Captcha.init('nocaptcha_login_web');
				var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&captchaCode="+captchaCode;
			}
			else if (check_level == 1){
				/*
				 滑动验证
				 */
				$('.pc-error').css('display','none');
				if(captchaCode=="2"){
					Captcha.init('nocaptcha_login_web');
					console.log('3');
					if (logpage == 'index' || logpage == 'login') {
						//$(".error-msg").html("请滑动验证");
						//$(".nc-lang-cnt").css('color','red');
						error('nc-lang-cnt',5);
					}else{
						// $("#msgs1").html("请滑动验证").slideDown();
						// $("#msgs1").removeClass().addClass("error");
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
					}

					return false;
				}
				if(captchaCode!="1"){
					console.log('4');
					if (logpage == 'index' || logpage == 'login') {
						//$(".error-msg").html("请滑动验证");
						//$(".nc-lang-cnt").css('color','red');
						error('nc-lang-cnt',5);
					}else{
						// $("#msgs1").html("请滑动验证").slideDown();
						// $("#msgs1").removeClass().addClass("error");
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
					}

					return false;
				}

				var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&captchaCode="+captchaCode;
			}else if(check_level == 2){
				//check_level=2;

				if(code.length!=4){
					$("#wx_error_"+wx_login_type).removeClass("hide");
					return false;
				}else{
					var res = checkWxCode();
					//console.log(res);
					if(res!=1){
						$("#wx_error_"+wx_login_type).removeClass("hide");
						return false;
					}/*else{
						countwx++;
					}*/
				}

				var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&wx_code="+code;
			}/*else{
			 var data = "txtloginname="+login_name.val()+"&txtPassword="+login_pwd.val();
			 }*/

//禁用登录点击，展示loading
			$("#login-loading-gif").show();
			//$("#login-btn").attr("onclick","return false;");
			$.ajax({
				type: 'post',
				url: '/member.php?act=ajax_loginsave',
				dataType: 'json',
				data: data,
				success: function(msg) {
					$("#loginLoadImg").hide();
					/*if (logpage == 'login') {
					 $("#msgs1").html(msg.message).slideDown();
					 }*/

					if (msg.result == '1')// 成功
					{

						if (logpage == 'login') {
							$(".check-it-text").html("恭喜您, 登录成功！");
							$url = $("#refer").val(); // refer 登录前的来源地址
							if($url == ''){
								window.location.href = "/uc/usr_center.php";
								//window.location.href = "index.php"; // 新版首页
							}else{
								window.location.href = "/";
							}
						}else if(logpage == 'index'){

							window.location.href = "index.php";
						}else if(logpage == 'union'){

							window.location.href = "/docunion.php?act=my_union";
						}

					}
					else if(msg.result==5)
					{
						//$('.analog-check').hide();
						$("#loginSubmit").attr("disabled", false);
						$("#loginname1").attr("disabled", false);
						$("#password1").attr("disabled", false);
						Captcha.init('nocaptcha_login_web',1);
						//$(".reg-silder").show();
						$("#login-loading-gif").hide();
					}
					else if(msg.result==6){
						check_level = 2;
						// 微信验证码
						//qrcode_img_spe(wx_code,"doc_qrcode",124);
						getWxcode();
						//出现微信验证码
						$(".reg-silder").hide();
						$("#wx_login_code_"+wx_login_type).show();


						$("#login-loading-gif").hide();

						$('.pc-error').css('display','').html("请输入微信验证码");

						$('.pc-error').addClass('shake animated infinite');
						setTimeout(function(){
							$('.pc-error').removeClass('shake animated infinite');
						}, 1000);
						//$("#login-btn").attr("onclick","return login_back_login('login');");
					}
					else{
						$("#login-loading-gif").hide();
						//$("#login-btn").attr("onclick","return login_back_login('login');");
						/*if (logpage == 'index') {

						 $(".error-msg").html("您输入的帐号或密码有误");
						 }else{
						 $(".check-it-text").html("您输入的");
						 }*/
						$('.pc-error').css('display','').html("帐号或密码有误");
						$('#wx_valide_big').attr('value','');

						$('.pc-error').addClass('shake animated infinite');
						setTimeout(function(){
							$('.pc-error').removeClass('shake animated infinite');
						}, 1000);

						if(msg.result!=4){
							//alert(123);
							Captcha.init('nocaptcha_login_web');
						}

						if(check_level==2)
						{
							// 微信验证码
							getWxcode();
							//qrcode_img_spe(wx_code,"doc_qrcode",124);
							//出现微信验证码
							$(".reg-silder").hide();
							$("#wx_login_code_"+wx_login_type).show();
							$("#login-loading-gif").hide();
						}
						else
						{
							Captcha.init('nocaptcha_login_web');
							//$(".reg-silder").show();
							$("#login-loading-gif").hide();
						}

					}
				}
			});

			return false;
		}
        //登录按钮
		function login_back (logpage){
			//$("#msgs1").html("").slideUp();
            var login_name = $('#loginname1');
            if(login_name.val() == ""){
		       login_name.focus();
		       return false;
	        }

	        var login_pwd = $('#password1');
	        if(login_pwd.val() == ""){	
		       login_pwd.focus();
		       return false;
	        }

			var captchaCode = $("#captchaCode").val();

			if (check_level == 1){
                /*
                滑动验证
                */

                if(captchaCode=="2"){
                    Captcha.init('nocaptcha_login');
                    console.log('3');
                    if (logpage == 'index' || logpage == 'login') {
                        //$(".error-msg").html("请滑动验证");
                        //$(".nc-lang-cnt").css('color','red');
                        error('nc-lang-cnt',5);
                    }else{
                        // $("#msgs1").html("请滑动验证").slideDown();
                        // $("#msgs1").removeClass().addClass("error");
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
                    }

                    return false;
                }
                if(captchaCode!="1"){
                    console.log('4');
                    if (logpage == 'index' || logpage == 'login') {
                        //$(".error-msg").html("请滑动验证");
                        //$(".nc-lang-cnt").css('color','red');
                        error('nc-lang-cnt',5);
                    }else{
                        // $("#msgs1").html("请滑动验证").slideDown();
                        // $("#msgs1").removeClass().addClass("error");
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
                    }

                    return false;
                }

                var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&captchaCode="+captchaCode;
            }else if(check_level == 2){
                var code = $("#wx_valide_"+wx_login_type).val();
                if(code.length!=4){
                    $("#wx_error_"+wx_login_type).removeClass("hide");
                    return false;
                }else{
                    var res = checkWxCode();
                    if(res!=1){
                        $("#wx_error_"+wx_login_type).removeClass("hide");
                        return false;
                    }
                }

                var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&wx_code="+code;
            }/*else{
				var data = "txtloginname="+login_name.val()+"&txtPassword="+login_pwd.val();
			}*/

//禁用登录点击，展示loading
	        $("#login-loading-gif").show();
	        //$("#login-btn").attr("onclick","return false;");
	        $.ajax({
	            type: 'post',
	            url: '/member.php?act=ajax_loginsave',
		        dataType: 'json',
	            data: data,
	            success: function(msg) {
	                $("#loginLoadImg").hide();
	                /*if (logpage == 'login') {
	                	$("#msgs1").html(msg.message).slideDown();
	                }*/

			        if (msg.result == '1')// 成功
			        {

				        if (logpage == 'login') {
				        	$(".check-it-text").html("恭喜您, 登录成功！");
                            $url = $("#refer").val(); // refer 登录前的来源地址
                            if($url == ''){
				        	   window.location.href = "/uc/usr_center.php";
				        	   //window.location.href = "index.php"; // 新版首页
				            }else{
					           window.location.href = "/";
				            }
				        }else if(logpage == 'index'){

                               window.location.href = "index.php";
				        }else if(logpage == 'union'){

                            window.location.href = "/docunion.php?act=my_union";
				        }

			        }
					else if(msg.result==5)
					{
						//$('.analog-check').hide();
						$("#loginSubmit").attr("disabled", false);
						$("#loginname1").attr("disabled", false);
						$("#password1").attr("disabled", false);
						Captcha.init('nocaptcha_login',1);
						//$(".reg-silder").show();
						$("#login-loading-gif").hide();
					}
					else if(msg.result==6){
                        check_level = 2;
                        // 微信验证码
                        qrcode_img_spe(wx_code,"doc_qrcode",124);

                        //出现微信验证码
                        $(".reg-silder").hide();
                        $("#wx_login_code_"+wx_login_type).show();


                        $("#login-loading-gif").hide();

                        $('.pc-error').css('display','').html("请输入微信验证码");

                        $('.pc-error').addClass('shake animated infinite');
                        setTimeout(function(){
                            $('.pc-error').removeClass('shake animated infinite');
                        }, 1000);
                        $("#login-btn").attr("onclick","return login_back('login');");
                    }
			        else{
			        	$("#login-loading-gif").hide();
				        $("#login-btn").attr("onclick","return login_back('login');");
			        	/*if (logpage == 'index') {

                            $(".error-msg").html("您输入的帐号或密码有误");
			        	}else{
			        		$(".check-it-text").html("您输入的");
			        	}*/
			        	$('.pc-error').css('display','').html("帐号或密码有误");
			        	$('#wx_valide_index').attr('value','');
			        	$('.pc-error').addClass('shake animated infinite');
		                    setTimeout(function(){
		                    $('.pc-error').removeClass('shake animated infinite');
	                    }, 1000);

						if(check_level==2)
						{
							// 微信验证码
							qrcode_img_spe(wx_code,"doc_qrcode",124);
							//出现微信验证码
							$(".reg-silder").hide();
							$("#wx_login_code_"+wx_login_type).show();
							$("#login-loading-gif").hide();
						}
						else
						{
							Captcha.init('nocaptcha_login');
							//$(".reg-silder").show();
							$("#login-loading-gif").hide();
						}

			        }
	            }
	        });

	        return false;
		}


		//登录按钮
		function login_back_index (logpage){
			//$("#msgs1").html("").slideUp();
			var login_name = $('#loginname1');
			if(login_name.val() == ""){
				login_name.focus();
				console.log('1');
				return false;
			}

			var login_pwd = $('#password1');
			if(login_pwd.val() == ""){
				login_pwd.focus();
				console.log('2');
				return false;
			}

			if (check_level == 1){
				/*
				 滑动验证
				 */
				var captchaCode = $("#captchaCode").val();

				if(captchaCode=="2"){
					Captcha.init('nocaptcha_login');
					console.log('3');
					if (logpage == 'index' || logpage == 'login') {
						//$(".error-msg").html("请滑动验证");
						//$(".nc-lang-cnt").css('color','red');
						error('nc-lang-cnt',5);
					}else{
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
					}

					return false;
				}
				if(captchaCode!="1"){
					console.log('4');
					if (logpage == 'index' || logpage == 'login') {
						//$(".error-msg").html("请滑动验证");
						//$(".nc-lang-cnt").css('color','red');
						error('nc-lang-cnt',5);
					}else{
						$("#msgs1").html("请滑动验证").slideDown();
						$("#msgs1").removeClass().addClass("error");
					}

					return false;
				}
				var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&captchaCode="+captchaCode;
			}else if(check_level==2){
				var code = $("#wx_valide_index").val();
				if(code.length!=4){
					$("#wx_error_index").removeClass("hide");
					//$('#wx_error_index').css({display:'block'});
					return false;
				}else{
					var res = checkWxCode();
					if(res!=1){
						//$('.error-msg').css({display:'none'});
						$("#wx_error_index").removeClass("hide");
						return false;
					}
				}
				var data = "txtloginname="+login_name.val()+"&txtPassword="+encodeURIComponent(login_pwd.val())+"&wx_code="+code;
			}
			/*if(captchaCode!="1"){
				console.log('4');
				if (logpage == 'index' || logpage == 'login') {
					//$(".error-msg").html("请滑动验证");
					//$(".nc-lang-cnt").css('color','red');
					error('nc-lang-cnt',5);
				}else{
					$("#msgs1").html("请滑动验证").slideDown();
					$("#msgs1").removeClass().addClass("error");
				}

				return false;
			}*/
//禁用登录点击，展示loading
			$("#login-loading-gif").show();
			$("#login-btn").attr("onclick","return false;");
			$.ajax({
				type: 'post',
				url: '/member.php?act=ajax_loginsave',
				data: data,
				dataType: 'json',
				//data: "txtloginname="+login_name.val()+"&txtPassword="+login_pwd.val()+"&captchaCode="+captchaCode,
				success: function(msg) {
					//console.log(msg);
					$("#loginLoadImg").hide();
					/*if (logpage == 'login') {
					 $("#msgs1").html(msg.message).slideDown();
					 }*/

					if (msg.result == '1')// 成功
					{
						//$(".check-it-text").html("恭喜您, 登录成功！");
						window.location.reload();
					}else if(msg.result==6){
						//console.log(msg);
						//console.log(wxcode);
						check_level = 2;
						$(".captcha-able").hide();
						$('.analog-check').css('display','none');
						// 微信验证码
						getWxcode();
						//qrcode_img_spe(wxcode,"doc_qrcode",110);

						//出现微信验证码
						$("#wx_login_code_index").show();


						/*$("#login-loading-gif").hide();*/

						$('.error-msg').html("请输入微信验证码").show();
						setTimeout(function(){
							$('.error-msg').hide();
						}, 1000);
						$("#login-btn").attr("onclick","return login_back_index('login');");
					}
					else{
						/*$("#login-loading-gif").hide();
						$("#login-btn").attr("onclick","return login_back_index('union');");*/
						/*if (logpage == 'index') {

						 $(".error-msg").html("您输入的帐号或密码有误");
						 }else{
						 $(".check-it-text").html("您输入的");
						 }*/
						$('.error-msg').html("帐号或密码有误").show();
						$('#wx_valide_index').attr('value','');
						
						setTimeout(function(){
							$('.error-msg').hide();
						}, 1000);
						if(msg.result!=4){
							//alert(123);
							Captcha.init('nocaptcha_login');
						}
					}
					/*else{
						//$("#login-btn").attr("onclick","return login_back_index('union');");
						/!*if (logpage == 'index') {

						 $(".error-msg").html("您输入的帐号或密码有误");
						 }else{
						 $(".check-it-text").html("您输入的");
						 }*!/
						$('.error-msg').html("帐号或密码有误").show();

						$('.error-msg').addClass('shake animated infinite');
						setTimeout(function(){
							$('.error-msg').removeClass('shake animated infinite').hide();
						}, 3000);

						Captcha.init('nocaptcha_login');
					}*/
				}
			});

			return false;
		}

		function getWxcode(){
			$.ajax({
				url:'/index.php?act=ajax_fetch_wx_code',
				type:'get',
				dataType:'json',
				success:function(msg){
					qrcode_img_spe(msg,"doc_qrcode",124);
				}
			});
		}
        // 闪烁提示
		function normal(cls,times){          
           var obj=$("."+cls);    
           obj.css("color","#444444");    
           if(times<0){     
              return;    
           }    
           times=times-1;    
           setTimeout("error('"+cls+"',"+times+")",150);    
        }    
        // 闪烁提示
        function error(cls,times){          
           var obj=$("."+cls);    
           obj.css("color","red");    
           times=times-1;    
           setTimeout("normal('"+cls+"',"+times+")",150);    
        } 
//密码登陆切换
function pw_cutover(obj){
	$(obj).parents('.wx').removeClass('show');
	$('.pw').addClass('show');
}
		