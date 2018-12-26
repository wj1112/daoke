			$("#slider2").slider({
				width: 280, // width
				height: 35, // height
				sliderBg: "", // 滑块背景颜色,这里给默认的颜色
				color: "#black", // 文字颜色
				fontSize: 14, // 文字大小
				bgColor: "#33CC00", // 背景颜色
				textMsg: "请拖动滑块到最右面", // 提示文字
				successMsg: "验证通过", // 验证成功提示文字
				successColor: "#ffffff", // 滑块验证成功提示文字颜色
				time: 100, // 返回时间
				callback: function(result) { // 回调函数，true(成功),false(失败)
					$("#result2").text(result);
				}
			});
			// 还原
			$("#reset2").click(function() {
				$("#slider2").slider("restore");
			});
			$("#username").click(function() {
				document.getElementById('username_remind').innerHTML = '6-16个字符，请用字母加数字或下划线的组合。';
			});
			$("#email").click(function() {
				document.getElementById('email_remind').innerHTML = '请填写有效的电子邮件地址。';
			});
			$("#password").click(function() {
				document.getElementById('password_remind').innerHTML = '6-16个字符，请用字母加数字或符号的组合。';
			});
			$("#repassword").click(function() {
				document.getElementById('repassword_remind').innerHTML = '请确认登录密码';
			});

			function disappear() {
				document.getElementById("username_remind").innerHTML = ' ';
				document.getElementById("email_remind").innerHTML = ' ';
				document.getElementById("password_remind").innerHTML = ' ';
				document.getElementById("repassword_remind").innerHTML = ' ';
			}

			//表单验证

			$(document).ready(function() {

				$("#context_1_1").submit(function() {
					return validate();
				});
			});

			//验证用户名
			function checkUsername() {
				//取值
				var username = $("#username").val();
				//判断
				if(username == '') {
					$("#username_remind").css("color", "red").html("用户名不为空");
					return false;
				} else {
					//长度6-12之间
					if(username.length < 6 || username.length > 16) {
						$("#username_remind").css("color", "red").html("用户名至少是6个字符");
						return false;
					} else {
						var reg_username = /^[a-zA-Z0-9_]{6,16}$/;
						if(!reg_username.test(username)) {
							$("#username_remind").css("color", "red").html("用户名格式不正确，请重新输入");
							return false;
						} else {
							$("#username_remind").css("color", "dodgerblue").html("恭喜您，用户名可以使用。");
						}
					}
				}
				return true;
			}
			//验证邮箱
			function checkEmail() {
				//取值
				var email = $("#email").val();
				//判断
				if(email == '') {
					$("#email_remind").css("color", "red").html("邮箱不为空");
					return false;
				} else {
					//数字、字母、下划线 + @ + 数字、英文 + . +英文（长度是2-4）
					var reg_email = /^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
					if(!reg_email.test(email)) {
						$("#email_remind").css("color", "red").html("邮箱格式不正确");
						return false;
					} else {
						$("#email_remind").css("color", "dodgerblue").html("恭喜您，EMail可以使用。");
					}
				}
				return true;
			}

			function checkPassword() {
				//取值
				var password = $("#password").val();
				//判断
				if(password == '') {
					$("#password_remind").css("color", "red").html("密码不为空");
					return false;
				} else {
					//长度6-12之间
					if(password.length < 6 || password.length > 16) {
						$("#password_remind").css("color", "red").html("密码至少是6个字符");
						return false;
					} else {
						var reg_password = /^[a-zA-Z0-9_]{6,16}$/;
						if(!reg_password.test(password)) {
							$("#password_remind").css("color", "red").html("密码过于简单，请重新填写");
							return false;
						} else {
							$("#password_remind").css("color", "dodgerblue").html("密码可以使用。");
						}
					}
				}
				return true;
			}

			//验证密码是否一致
			function checkrePassword() {
				var password = $("#password").val();
				var repassword = $("#repassword").val();
				if(repassword == '') {
					$("#repassword_remind").css("color", "red").html("密码不为空");
					return false;
				} else {
					if(repassword != password) {
						$("#repassword_remind").css("color", "red").html("两次输入的密码不一致。");
						return false;
					} else {
						$("#repassword_remind").css("color", "dodgerblue").html("密码一致。");
					}
				}
				return true;
			}
			//判断滑块是否验证成功
			function checkSlide() {
				var result2 = $("#result2").text();
				//alert(result);
				if(result2 == '') {
					alert("未进行滑块验证");
					return false;
				} else {
					if(result2 == false) {
						alert("滑块验证未完成");
						return false;
						
					} else {
//						alert("滑块验证完成");
						return true;
					}
				}
				return true;
			}

			function validate() {
				var result = true;
				if(!checkUsername()) {
					result = false;
				}

				if(!checkEmail()) {
					result = false;
				}
				if(!checkPassword()) {
					result = false;
				}
				if(!checkrePassword()) {
					result = false;
				}
				if(!checkSlide()) {
					result = false;
				}

				return result;
			}