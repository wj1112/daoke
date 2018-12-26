growth_medal_check_read();

// 检查用户获得徽章，有未读的徽章记录则弹窗显示最后的徽章并所有徽章置为已读
function growth_medal_check_read() {
    $.get("/member.php?act=islogin", function (data) {
        if (data == "1") {
            $.ajax({
                url: "/uc/growth.php?act=check_medal_read",
                type: "post",
                data: {},
                dataType: "json",
                success: function (msg) {
                    if (msg.result > 0) {
                        if (msg.result == 1) {
                            showUpgradePage(msg.img_num);
                        } else if (msg.result == 2) {
                            alert(msg.message);
                        }
                    }
                }
            });
        }
    });
}

function showUpgradePage(level) {
    DOC88Window.win({
        message: "/uc/growth.php?act=show_upgrade_page&level=" + level,
        width: 600,
        height: 525,
        title: '',
        iframe: true
    });

    return false;
}