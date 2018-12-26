/**
 *
 */
$(document).ready(function () {
    getNewUserTaskDegree();
    getLeftmenuState();
    checkVip();
    changeMemberAccount();
    getLaboratoryUnionState();
})

function getLeftmenuState() {
    $.ajax({
        url: "/uc/authentication.php?act=leftmenu_state",
        type: "get",
        dataType: "json",
        success: function (msg) {
            $("#au_vip").addClass("");
            $("#au_vip").removeAttr("target");
            if (msg.result == 0) {
                $("#au_vip").html("申请认证");
            } else if (msg.result == 1 || msg.result == 2) {
                $("#au_vip").html("等待审核");
            } else if (msg.result == 9) {
                $("#au_vip").addClass("red");
                $("#au_vip").html("认证失败");
                if ("<tpl>$smarty.session.s_login.member_type</tpl>" == 1) {
                    $("#au_vip").attr("href", "<tpl>$site_url</tpl>/uc/authentication.php?act=request&type=pa");
                } else if ("<tpl>$smarty.session.s_login.member_type</tpl>" == 2) {
                    $("#au_vip").attr("href", "<tpl>$site_url</tpl>/uc/authentication.php?act=request&type=oa");
                }
            } else if (msg.result == 3 || msg.result == 4 || msg.result == 5) {
                if (msg.result == 5) {
                    $("#au_vip").html("已实名");
                } else {
                    $("#au_vip").html("认证用户");
                }
                //$("#au_vip").attr("href", "<tpl>$site_url</tpl>/uc/usr_member.php?show=7");
                $("#au_vip").attr("target", "_blank");
            }
        }
    });
}

function add_verify() {
    DOC88Window.win({
        message: '/uc/authentication.php?act=index',
        width: 600,
        height: 178,
        title: '选择认证类型',
        iframe: true
    });
}

//
function getNewUserTaskDegree() {
    // if (getCookie('new_user_task_degree') != '') {
    //     var degree = getCookie('new_user_task_degree');
    //     $(".inforange-co").width(degree + "%");
    // } else {
    //     $.ajax({
    //         url: "/uc/index.php?act=get_new_user_task_degree",
    //         type: "get",
    //         dataType: "json",
    //         success: function(msg) {
    //             $(".inforange-co").width(msg.data + "%");
    //         }
    //     });
    // }
    $.ajax({
        url: "/uc/index.php?act=get_new_user_task_degree",
        type: "get",
        dataType: "json",
        success: function (msg) {
            $(".inforange-co").width(msg.data + "%");
        }
    });
}

//判断vip显示与否
function checkVip() {
    $.ajax({
        url: "/uc/usr_center.php?act=check_vip",
        type: "get",
        dataType: "json",
        success: function (msg) {
            if (msg.result == 1) {
                $("#my_vip").show();
                $("#vip_img").show();
                $(".tens-activity").show();
            } else {
                $("#my_vip").hide();
                $("#vip_img").hide();
                $(".tens-activity").hide();
            }
        }
    });
}

//更新积分值
function changeMemberAccount() {
    $.ajax({
        url: "/uc/usr_center.php?act=ajax_change_member_account",
        type: "get",
        dataType: "json",
        success: function (msg) {
            if (msg.result == 1) {
                $("#curr_amount").html(msg.money);
            }
        }
    });
}
//查询道客联盟申请状态
function getLaboratoryUnionState() {
    $.ajax({
        url: "/uc/usr_center.php?act=laboratory_union_state",
        type: "get",
        dataType: "json",
        success: function (msg) {
            if (msg.result == 1) {
                $("#laboratory_union").show();
            } else {
                $("#laboratory_union").hide();
            }
        }
    });
}