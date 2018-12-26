$(document).ready(function(){
    $("#pwd").focus(function(){
        $("#private_error").html("").hide();
    })
});

function reloadcodeimage(){
    setTimeout(function(){
        document.getElementById('regcodeImg').src = "/check.php?" + Math.random();
    }, 100);
    $("#checkcode").val("");
    $("#checkcode").focus();
    $("#codeTip").hide();
}

function checkCode(obj, tipImg){
    $("#msg_valide").html("");
    if (obj.value.length == 4) {
        $.ajax({
            url: "/member.php?act=check_valide&checkcode=" + obj.value,
            dataType: 'html',
            success: function(msg){
                $("#" + tipImg).show();
                if (msg == 0) 
                    $("#" + tipImg).attr("src", "/assets/images/icons/ok.png");
                else 
                    $("#" + tipImg).attr("src", "/assets/images/icons/error.png");
            }
        });
    }
    else {
        $("#" + tipImg).hide();
    }
}

//关闭弹窗
function closeIframe(){
    parent.DOC88Window.close();
}

//创建私有文档分享链接
function createUrl(p_id){
    $.ajax({
        url: "/uc/usr_center.php?act=create_share_url",
        type: "post",
        data: {
            p_id: p_id
        },
        dataType: "json",
        async: false,
        success: function(msg){
            if (msg.result == 1) {
                //               var html = "<p>私密链接</p>";
                //               html += "<input id=\"private_url\" class=\"pri_link\" readonly=\"readonly\" type=\"text\" />";
                //               html += "<p>提取密码</p>";
                //               html += "<input id=\"private_pwd\" class=\"pri_password\" readonly=\"readonly\" type=\"text\" />";
                //               html += "<button id=\"copy_url\" class=\"pri_copy\" onclick=\"abc(this)\">复制链接及密码</button>";
                //               html += "<p class=\"pri_tips\">可将链接发送给好友 <span class=\"pri_success\">复制成功！</span></p>";
                //               $(".pri_box").html(html);
                
                $("#private_url").val(msg.url).attr("value", msg.url);
                $("#private_pwd").val(msg.pwd).attr("value", msg.pwd);
            }
        }
    });
}

//检验密码
function checkPwd(){
    var pwd = $("#pwd").val();
    if (pwd == "") {
        $("#private_error").html("不能为空").show();
        return false;
    }
    if (pwd.length != 4) {
        $("#private_error").html("密码为4位字符").show();
        return false;
    }
    
    var valide = $("#valide").val();
    
    $.ajax({
        url: "/uc/usr_center.php?act=check_jurisdiction",
        type: "post",
        data: {
            pwd: pwd,
            valide: valide
        },
        dataType: "json",
        success: function(msg){
            if (msg.result == 1) {
                location.reload();
            }
            else {
                $("#private_error").html(msg.msg).show();
                if (msg.num > 5 || msg.result == -4) {
                    $("#private_code").html("<input class=\"textcsss\" id=\"valide\" name=\"valide\" type=\"text\" maxlength=\"4\" onkeyup=\"checkCode(this,'codeTip')\" /><img src=\"/check.php\" class=\"formtip2\" onclick=\"reloadcodeimage();\" id=\"regcodeImg\" style=\"cursor:pointer;margin-top:-4px;\" /><span class=\"formtip1\"><a href=\"javascript:void(0);\" onclick=\"reloadcodeimage();\">换一张</a></span><img src=\"<tpl>$siteurl_static</tpl>/assets/images/icons/error.png\" id=\"codeTip\" class=\"formtip2\" style=\"display:none;height:18px;\" /><span id=\"msg_valide\" class=\"red\"></span>")
                }
            }
            //            if (msg.result < 0) {
            //                $("#error_pwd").html(msg.msg);
            //            }
        }
    });
}
