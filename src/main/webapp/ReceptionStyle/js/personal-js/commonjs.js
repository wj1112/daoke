//commonjs?v=1.33
// JavaScript Document
// 顶部登陆表单弹出
$(document).ready(function(){
    // 个人主页 馆藏 展开更多文件夹
    $(".moreFolder").click(function(){
        // $(this).parent().find("ul").toggleClass("open")
    });

    $(".moreFolder").click(function(){
        $(this).find("a").toggleClass("open");
        var cur_height = $(".folderUL").height();
        var min_height = $(".folderUL").attr("min_height");
        var max_height = $(".folderUL").attr("max_height");
        if (cur_height == min_height) {
            $(".folderUL").animate({
                height: max_height + "px"
            });
        }
        else {
            $(".folderUL").animate({
                height: min_height + "px"
            });
        }
    });
    if ($("#keyword").length > 0) {
        var params = {
            "XOffset": 0, //提示框位置横向偏移量,单位px
            "YOffset": 0, //提示框位置纵向偏移量,单位px
            "width": 200, //提示框宽度，单位px
            "fontColor": "#000", //提示框文字颜色
            "fontColorHI": "#FFF", //提示框高亮选择时文字颜色
            "fontSize": "13px", //文字大小
            "fontFamily": "宋体", //文字字体
            "borderColor": "gray", //提示框的边框颜色
            "bgcolorHI": "#03c", //提示框高亮选择的颜色
            "sugSubmit": false //在选择提示词条是是否提交表单
        };
        BaiduSuggestion.bind("keyword", params, null);
    }
});

// 回复
$(document).ready(function(){
    $(".formbox .itosay").click(function(){
        $(this).hide();
        $(this).parent().find("form").show();
    });
    $(".formbox form").blur(function(){
        $(this).hide();
        $(this).parent().find(".itosay").show()

    });
});

// 添加到群组与创建分组
$(".addgroup .start,.addfile .start").click(function(){
    $(this).hide();
    $(this).parent().find("form").show();
    $(".addgroup .cancel,.addfile .cancel").click(function(){
        $(this).parent().parent().find("form").hide();
        $(this).parent().parent().find(".start").show();
    })
});

//保存到位置的
function addgroupstart(id,parent_mf_id){
    $(id).hide();
    $(id).parent().find("div").show();
    $(id).find("#addFolderButton").val(parent_mf_id);
}

function refresh_err(id){
    $(id).removeClass("textmsg");
    $(id).next().next().next().slideUp();
}

//保存到位置 添加分类
function addCategory_edit(id){
    if ($(id).prev().val() == '') {
        $(id).prev().addClass("textmsg");
        $(id).next().next().html('不能为空').slideDown();
        return false;
    }
    category_name = $(id).prev().val();
    $.ajax({
        url: '/uc/usr_folder.php?act=save&mf_name=' + encodeURI(category_name),
        dataType: "json",
        success: function(msg){
            if (msg.result == 5) {
                $(id).parent().parent().find("div").hide();
                $(id).parent().parent().find(".start").show();
                $(".addgroup").before('<dd><p class="analog-radio" onclick="selectpcid(this);"><b><input type="radio" name="p_save" value="' + msg.mf_id + '" title="' + category_name + '" p_id="' + msg.mf_id + '"></b>' + category_name + '</p></dd>');
            }
            else
            if (msg.result == 2) {
                $(id).prev().addClass("textmsg");
                $(id).next().next().html(msg.message).slideDown();
            }
        }
    });
}

function addCategory_edit_more(id){
    if ($(id).prev().val() == '') {
        $(id).prev().addClass("textmsg");
        $(id).next().next().html('不能为空').slideDown();
        return false;
    }
    category_name = $(id).prev().val();
    $.ajax({
        url: '/uc/usr_folder.php?act=save&mf_name=' + encodeURI(category_name),
        type: 'post',
        dataType: "json",
        success: function(msg){
            if (msg.result == 5) {
                //$(id).parent().parent().find("div").hide();
                //$(id).parent().parent().find(".start").show();
                $(id).parent().parent().before('<dd><p class="analog-radio" onclick="analogradio(this);selectradio(this);changeCategoryMore(\'' + category_name + '\',\'' + msg.mf_id + '\')"><b><input type="radio" name="p_save" value="' + msg.mf_id + '" title="' + category_name + '" p_id="' + msg.mf_id + '"></b>' + category_name + '</p></dd>');
                $('#newfolder').val('');
            }
            else
            if (msg.result == 2) {
                $("#msg_non").html(msg.message);
                $(id).prev().addClass("textmsg");
                //$(id).next().next().html(msg.message).slideDown();
            }
        }
    });
}

//分类管理 添加分类
// function Category_add_admin(id,type){
//     if ($("#mf_name").val() == '') {
//         $(id).prev().addClass("textmsg");
//         $(id).next().next().html('不能为空').slideDown();
//         return false;
//     }
//     category_name = $("#mf_name").val();
// 	//var parent_mf_id = $("#new_folder").attr("value");
//     var parent_mf_id = 0;
//
//     $.ajax({
//         url: "/uc/usr_folder.php?act=save",
//         type: 'post',
//         data: {
//             mf_name: encodeURI(category_name),
// 			parent_mf_id:parent_mf_id
//         },
//         dataType: "json",
//         success: function(msg){
//             if (msg.result == 5) {
//                 $(id).parent().parent().find("div").hide();
//                 $(id).parent().parent().find(".start").show();
// 				if(type==0){
// 					$("#div_folder_"+parent_mf_id).siblings("ul").removeClass("hide");
// 					var level = $("#div_folder_"+parent_mf_id).attr("value");
// 					if(level==""){
// 						level = 0;
// 					}
// 					var next_level = parseInt(level)+1;
// 					if(parent_mf_id==0){
// 						next_level=1;
// 					}
// 					var html = "<li class=\"level_"+next_level+"\">";
// 					html += "<div id=\"div_folder_"+msg.mf_id+"\" class=\"multi-space\" value=\""+next_level+"\">";
// 					html += '<div class="w70">';
// 					// if(next_level<5){
// 					// 	html += '<a href="javascript:void(0);" title="添加" class="addchild" onclick="addNextFolder('+msg.mf_id+')"></a>';
// 					// }
// 					html += '<a href="javascript:void(0);" title="编辑" class="bianj" onclick="editFoder('+msg.mf_id+',this,\''+category_name+'\')"></a>';
// 					html += '<a href="javascript:void(0);" title="删除" class="shanc" onclick="deleteFolder('+msg.mf_id+')"></a>';
// 					html += '</div>';
// 					// html += '<div onclick="showMultiFolder(this);">';
//                     html += '<div>';
// 					html += '<i class="iconfont">&#xe613;</i><span class="mf_name">'+category_name+'</span>';
// 					html += '</div>';
// 					html += '</div>';
// 					// if (next_level < 5) {
// 					// 	html +='<ul class="hide">';
// 					// 	html += '</ul>';
// 					// }
// 					html += '</li>';
//
// 					if(parent_mf_id==0){
// 						$(".multi-file").append(html);
// 					}else{
// 						$("#div_folder_"+parent_mf_id).siblings("ul").append(html);
// 					}
// 				}else if(type == 1){
// 					$("#listTr").append('<tr id="li' + msg.mf_id + '"><td class="tw40px"><p class="analog-radio" onclick="selectpcid_flie(this);"><b class=""><input type="radio" name="radioMfID" value="' + msg.mf_id + '"/></b></p></td>  <td><span class="nf_name" id="nf_name' + msg.mf_id + '">' + msg.mf_name + '</span><span class="gray9">（0）</span></td><td class="tw50px"><a href="javascript:editFoder(\'' + msg.mf_id + '\')" title="编辑" class="bianj"></a><a href="javascript:deleteFolder(\'' + msg.mf_id + '\')" title="删除" class="shanc"></a></td></tr>');
// 				}
//             }
//             else
//                 if (msg.result == 2) {
//                     $(id).prev().addClass("textmsg");
//                     $(id).next().next().html(msg.message).slideDown();
//                 }
//         }
//     });
// }

//分类管理 添加分类
function Category_add_admin(id,type){
    if ($("#mf_name").val() == '') {
        $(id).prev().addClass("textmsg");
        $(id).next().next().html('不能为空').slideDown();
        return false;
    }
    category_name = $("#mf_name").val();
    $.ajax({
        url: '/uc/usr_folder.php?act=save&mf_name=' + encodeURI(category_name),
        type: 'post',
        dataType: "json",
        success: function(msg){
            if (msg.result == 5) {
                $(id).parent().parent().find("div").hide();
                $(id).parent().parent().find(".start").show();
                if(type==0){
                    $("#listTr").append('<tr id="li' + msg.mf_id + '"><td><span class="nf_name">' + msg.mf_name + '</span><span class="gray9">（0）</span></td><td class="tw50px"><a href="javascript:editFoder(\'' + msg.mf_id + '\')" title="编辑" class="bianj"></a><a href="javascript:deleteFolder(\'' + msg.mf_id + '\')" title="删除" class="shanc"></a></td></tr>');
                }else if(type == 1){
                    $("#listTr").append('<tr id="li' + msg.mf_id + '"><td class="tw40px"><p class="analog-radio" onclick="selectpcid_flie(this);"><b class=""><input type="radio" name="radioMfID" value="' + msg.mf_id + '"/></b></p></td>  <td><span class="nf_name" id="nf_name' + msg.mf_id + '">' + msg.mf_name + '</span><span class="gray9">（0）</span></td><td class="tw50px"><a href="javascript:editFoder(\'' + msg.mf_id + '\')" title="编辑" class="bianj"></a><a href="javascript:deleteFolder(\'' + msg.mf_id + '\')" title="删除" class="shanc"></a></td></tr>');
                }
                var folder_count = $("#folder_count").val();
                $("#folder_count").val(parseInt(folder_count)+1);
                resizeWindow();
            }
            else
            if (msg.result == 2) {
                $(id).prev().addClass("textmsg");
                $(id).next().next().html(msg.message).slideDown();
            }
        }
    });
}


// //分类管理 添加分类
// function Category_edit_admin(id, mf_id){
//     if ($(id).prev().val() == '') {
//         $(id).prev().addClass("textmsg");
//         $(id).next().next().html('不能为空').slideDown();
//         return false;
//     }
//     category_name = $(id).prev().val();
//     $.ajax({
//         url: "/uc/usr_folder.php?act=save",
//         type: 'post',
//         data: {
//             mf_name: encodeURI(category_name),
// 			mf_id:mf_id
//         },
//         dataType: "json",
//         success: function(msg){
//             if (msg.result == 5) {
//                 $("#div_folder_"+mf_id+" .mf_name").html(category_name);
//                 cancle_edit(mf_id);
//             }
//             else
//                 if (msg.result == 2) {
//                     $(id).prev().addClass("textmsg");
//                     $(id).next().next().html(msg.message).slideDown();
//                 }
//         }
//     });
// }
//分类管理 添加分类
function Category_edit_admin(id, mf_id){
    if ($(id).prev().val() == '') {
        $(id).prev().addClass("textmsg");
        $(id).next().next().html('不能为空').slideDown();
        return false;
    }
    category_name = $(id).prev().val();
    $.ajax({
        url: '/uc/usr_folder.php?act=save&mf_name=' + encodeURI(category_name) + '&mf_id=' + mf_id,
        dataType: "json",
        success: function(msg){
            if (msg.result == 5) {
                $('#li' + mf_id).find('.nf_name').html(category_name);
                cancle_edit(mf_id);
            }
            else
            if (msg.result == 2) {
                $(id).prev().addClass("textmsg");
                $(id).next().next().html(msg.message).slideDown();
            }
        }
    });
}

function addgroupcancle(id){
    $(id).parent().parent().find("div").hide();
    $(id).parent().parent().find(".start").show();
    $("#msg_non").html("");
    $("#new_folder").attr("value",0);
}

$(document).ready(function(){
    $(".grouping .activate,.grouping big").click(function(){
        $(this).parent().find(".selectwrap,.selectshare,.filewrap,.selectgroup").slideToggle("fast");

    });
    $(".addgroup .start,.addfile .start").click(function(){
        $(this).hide();
        $(this).parent().find("form").show();
        $(".addgroup .cancel,.addfile .cancel").click(function(){
            $(this).parent().parent().find("form").hide();
            $(this).parent().parent().find(".start").show();
        })
    });
    // 列表 分享 未通过 提示关闭操作
    $(".selectshare p.msg .close").click(function(){
        $(this).parent().parent().find("p.msg").slideUp(300);
    });
    // 列表 分享 到群组 选择群组列表的开关
    $(".selectshare h6 .shop").click(function(){
        $(this).parent().parent().find(".categorie").slideToggle(300);
    });

    /***
     $(".selectshare").mouseleave(function(){
     $(this).hide();
     });
     $(".selectshare").mouseover(function(){
     $(this).attr("over","1");
     });
     **/
});

//快捷传文档、发状态
$(document).ready(function(){
    $(".wantto q").click(function(){
        // $(this).parent().find("q").slideUp(300);
        // $(this).parent().find("form").slideDown(300);
    });
    $(".wantto .buttoncss1").click(function(){
        $(this).parent().parent().parent().parent().find("form").hide();
        $("#goto").removeClass("hideupload");
        $(".spanButton").removeClass('hideswf');
        $("#goto").addClass("goto");
        $("#fast-q").removeClass("hideupload");
        $("#fsUploadProgress").empty();
        $("#count-success").html('0');
        //        getDocList();//重新加载新鲜事        
        //$(this).parent().parent().parent().parent().find("q").show();
        show = 0;
    });

});

$(document).ready(function(){
    //	$(".bookshow4 li").click(function(){
    //		alert("123");
    //        $(this).toggleClass("current");
    //    });

    // 选择用户
    //    $(".usershow3 .userpto").click(function(){
    //        $(this).toggleClass("current");
    //    });
    //	// 选择分类
    //	$(".filtrate2 li").click(function(){
    //		$(this).toggleClass("current");
    //	});

    // 分享提示
    $(".sharemsg").mousemove(function(){
        if ($(this).find(".msgbox").is(":visible")) {
            return;
        }
        $(".msgbox").fadeOut(300);
        $(this).find(".msgbox").fadeIn(300);
        $(".msgbox").mouseleave(function(){
            setTimeout(function(){
                $(".msgbox").fadeOut(300)
            }, 1000)
        });
        $(".msgbox .close").click(function(){
            $(this).parent().parent().find(".msgbox").fadeOut(300);
        })
    });

    // 选择文档
    //    $(".bookshow3 li .bookmark").click(function(){
    //
    //    });

    //	// 打开编辑文档
    //	$(".bookshow3 li .textedit a.edit").click(function(){
    //		$(this).parent().parent().find(".bookimg,.bookdoc,.textedit").hide();
    //		$(this).parent().parent().find(".editlayout").show();
    //	});
    // 在 bookshow3 中取消列表文档编辑
    $(".bookshow3 li .editlayout a.close").click(function(){
        $(this).parent().parent().find(".bookimg,.bookdoc,.textedit").show();
        $(this).parent().parent().find(".editlayout").hide();
    });
    // 在 bookshow4 中打开列表文档编辑
    $(".bookshow4 li .topic a.docedit").click(function(){
        $(this).parent().parent().parent().find(".editlayout").slideToggle("fast");
    });
    // 在 bookshow4 中取消列表文档编辑
    $(".bookshow4 li .editlayout a.close").click(function(){
        $(this).parent().parent().find(".editlayout").slideUp("fast");
    });
    // 文档列表内容管理 展开更多筛选条件
    //var siftState = 1;

    var siftMoreState = 0;
    // 展开更多分类选项
    $(".siftbox .open-more").click(function(){
        // $(this).toggleClass("close-more");
        $(this).parent().find(".filtrate2").toggleClass("filtrate3");
        if (siftMoreState == 0) {
            $(this).removeClass("open-more");
            $(this).addClass("close-more");
            siftMoreState = 1;
            $(this).parent().find(".nametag").slideDown("fast");
        }
        else {
            $(this).removeClass("close-more");
            $(this).addClass("open-more");
            siftMoreState = 0;
            $(this).parent().find(".nametag").slideUp("fast");
        }
    });

    // 选择名称首字母ABCD……
    $(".nametag li").mousemove(function(){
        $(".nametag li").removeClass("current");
        $(this).addClass("current");
    });
    // 充值页面下拉菜单
    $(".portal li").mousemove(function(){
        if ($(this).find(".dorpmenu").is(":visible")) {
            return;
        }
        $(this).find(".dorpmenu").slideDown("fast").mouseleave(function(){
            $(".dorpmenu").slideUp("fast");
        })
    });
    $(".portal li").mouseleave(function(){
        $(this).find(".dorpmenu").slideUp("fast");
    });
    // 充值页面选择推荐金额
    $(".czoptions li").click(function(){
        $(".czoptions li").removeClass("current");
        $(this).addClass("current");
    });

    // 私信列表-发私信
    $("#newmail").click(function(){
        $(".newmail").slideDown("fast");
    });
    $(".newmail .buttoncss1").click(function(){
        $(".newmail").slideUp("fast");
    });
    $(".newmail .textand .btn").click(function(){
        $(this).parent().parent().find(".useradd").slideToggle("fast");
    });
    // 私信列表打开操作
    //    $(".mailshop").click(function(){
    //        $(this).find(".dorpmenu").slideToggle("fast");
    //    });
    // 个人主页 更换 Banner 与 皮肤
    $(".editbg .icobtn").click(function(){
        $(".myTemplate").slideToggle("normal")
    });
    // 个人主页 馆藏 文件夹编辑按钮
    $(".myFolder ul li").mousemove(function(){
        //$(this).find(".shop").fadeIn("fast");
    })
    $(".myFolder ul li").mouseleave(function(){
        // $(this).find(".shop").fadeOut("fast");
    });

    // 个人主页 个人资料 添加信息，如：添加教育信息
    $(".addInfoBtn").click(function(){
        $(this).slideUp("fast")
        $(this).parent().find(".addInfoBox").slideDown("fast")
    });
    $(".addInfoBox .buttoncss1").click(function(){
        $(this).parent().parent().parent().parent().parent().parent().find(".addInfoBox").slideUp("fast")
        $(this).parent().parent().parent().parent().parent().parent().find(".addInfoBtn").slideDown("fast")
    });
    //阻止冒泡时间方法，兼容ie(e.cancleBubble)和ff(e.stopProgation)
    function stopBubble(e){
        var evt = e || window.event;
        evt.stopPropagation ? evt.stopPropagation() : (evt.cancelBubble = true); //阻止冒泡
        evt.preventDefault(); //阻止浏览器默认行为，这样链接就不会跳转
    }
});

// 哎~！专门给 IE6 & 7 写的 Z-INDEX 层级，依赖于jquery库
var zIndexNumber = 1000;
$('.editlayout,.edit-table td').each(function(){
    $(this).css('zIndex', zIndexNumber);
    zIndexNumber -= 1;
});

// 编辑头像
$(document).ready(function(){
    $(".photoframe .photo").mousemove(function(){
        $(this).find(".enit").fadeIn("normal");
        $(".photoframe .photo").mouseleave(function(){
            $(this).find(".enit").fadeOut("normal");
        })
    });
});

$(document).ready(function(){
    //选择群组
    function select_group(group_number, obj){
        alert(group_number);
        $(obj).find("b").addClass("check");
    }
});

// 积分双击查看详细
$(document).ready(function(){
    $(".tableQuartern th").dblclick(function(){
        var flag = 0;
        if ($(this).width() > 350) {
            return false;
        }
        else {
            $(".tableQuartern th").each(function(){
                if ($(this).width() > 350) {
                    $(this).animate({
                        width: "15%"
                    }, 300);
                    flag = 1;
                    return;
                }
            });
            if (flag == 0) {
                $(".tableQuartern th").animate({
                    width: "15%"
                }, 300)
                $(this).animate({
                    width: "55%"
                }, 300)
            }
            else {
                $(this).animate({
                    width: "55%"
                }, 300);
            }
        }
    });
    $(".tableQuartern").mouseleave(function(){
        $(".tableQuartern th").each(function(){
            if ($(this).width() > 350) {
                $(this).animate({
                    width: "25%"
                }, 300);
            }
            if ($(this).width() < 140) {
                $(this).animate({
                    width: "25%"
                }, 300);
            }
        });
    });
    $(".gotop").mousemove(function(){
        $(".doc88miao .tips p").text("艾玛~尖尖的太可怕了！朕担心它上来的太快会把朕给爆了！");
    });
    $(".gotop").mouseleave(function(){
        $(".doc88miao .tips p").text("hi~你好，我是赵铁柱！今天的任务完成了吗？真的送好多积分啊！");
    });
});

// 弹出窗口居中
//$(window).resize(function(){
//    var div = $(".popup");
//    var iHeight = div.height();
//    var iWidth = div.width();
//    div.css("margin-top", -(iHeight) / 2).css("margin-left", -(iWidth) / 2);
//});
//$(function(){
//    $(window).resize();
//});

// 关闭弹出窗口
$(document).ready(function(){
    $(".popup .close").click(function(){
        $(".shadefull,.popup").fadeOut("fast");
    });
});

// Common 各行换色
$(document).ready(function(){
    $(".smalltable tr,.myTableEdit tr").mouseover(function(){
        $(this).addClass("over");
    }).mouseout(function(){
        $(this).removeClass("over");
    })
    $(".smalltable tr:even").addClass("alt")

});

// 收支记录筛选选项菜单
//$(document).ready(function(){
//    $("caption .menu").click(function(){
//        $(this).toggleClass("current");
//        $(this).parent().find(".search").slideToggle(300);
//    })
//});

// 模拟 Select 设计
$(document).ready(function(){
    $(".sltDesign1 dt").click(function(){
        $(this).parent().find("dd").slideToggle(300);
        $(this).toggleClass("current");
    });
    $(".sltDesign1").mouseleave(function(){
        $(this).find("dd").slideUp(300);
        $(this).find("dt").removeClass("current")
    });
});

//SELECT 控件模拟 选项展开与收起
function analogselect(id){
    $(id).parent().find(".options-wrap").slideToggle("fast");
    // 三级分类id
    var cid = $(id).parent().find('.class-id').val();
    var sid,fid,lid;

    // 根据当前的cid 获得上一级分类的id
    for (var i = 0; i < subcat.length; i++) {
        if (subcat[i][1] == cid) {
            sid = subcat[i][2];
        };
    };

    for (var i = 0; i < subcat.length; i++) {
            if (subcat[i][1] == sid ) {
                fid = subcat[i][2];
            };
    };

    for (var i = 0; i < subcat.length; i++) {
            if (subcat[i][1] == fid ) {
                lid = subcat[i][2];
            };
    };

    var nextstr4 = '<ul class="hierarchy">';
    var nextstr3 = '<ul class="hierarchy">';
    var nextstr2 = '<ul class="hierarchy">';
    for (var i = 0; i < subcat.length; i++) {
        if (subcat[i][2] == sid) {
            if (subcat[i][4] == 0) {
                nextstr3 += '<li id="' + subcat[i][1] + '" onclick="treeok(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '">' + subcat[i][0] + '</li>';
            }else{
                nextstr3 += '<li id="' + subcat[i][1] + '" onclick="getTree(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '"><b class="arr"></b>' + subcat[i][0] + '</li>';
            }
        }
        if (subcat[i][2] == fid) {
            if (subcat[i][4] == 0) {
                nextstr2 += '<li id="' + subcat[i][1] + '" onclick="treeok(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '">' + subcat[i][0] + '</li>';
            }else{
                nextstr2 += '<li id="' + subcat[i][1] + '" onclick="getTree(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '"><b class="arr"></b>' + subcat[i][0] + '</li>';
            }
        }

        // 并且不是一级分类
        if (subcat[i][2] == lid && lid != 1) {
            if (subcat[i][4] == 0) {
                nextstr4 += '<li id="' + subcat[i][1] + '" onclick="treeok(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '">' + subcat[i][0] + '</li>';
            }else{
                nextstr4 += '<li id="' + subcat[i][1] + '" onclick="getTree(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '"><b class="arr"></b>' + subcat[i][0] + '</li>';
            }
        }
    }
    nextstr4 += '</ul>';
    nextstr3 += '</ul>';
    nextstr2 += '</ul>';
    nextstrAll = nextstr4 + nextstr2 + nextstr3;

    var ulnum = $(id).parent().find(".options-wrap ul").length;
    if (ulnum <= 1) {
        $(id).parent().find(".options-wrap").append(nextstrAll);
        // 分类旧数据处理
        $(id).parent().find(".options-wrap ul").each(function(){
            var liNum = $(this).find('li').length;
            if (liNum == 0) {
                $(this).css('display', 'none');
            };
        });
    };
    $(id).parent().find(".options-wrap li[id="+ cid +"]").addClass('current');
    $(id).parent().find(".options-wrap li[id="+ sid +"]").addClass('current');
    $(id).parent().find(".options-wrap li[id="+ fid +"]").addClass('current');
    $(id).parent().find(".options-wrap li[id="+ lid +"]").addClass('current');  
}

function hierarchyli(id){
    $(id).parent().find("li").removeClass("current");
    $(id).addClass("current");
}

//模拟 Select 设计
$(document).ready(function(){
    // $(".sltDesign1 dt").click(function(){
    //     $(this).parent().find("dd").slideToggle(300);
    //     $(this).toggleClass("current");
    // });
    // $(".sltDesign1").mouseleave(function(){
    //     $(this).find("dd").slideUp(300);
    //     $(this).find("dt").removeClass("current")
    // });
});
$(document).ready(function(){
    //    $(".layers .analog-select").click(function(){
    //        $(this).parent().find(".options-wrap").slideToggle("fast");
    //    });
    // 多层级级联选择 选中状态
    //    $(".hierarchy li").click(function(){
    //        $(this).parent().find("li").removeClass("current");
    //        $(this).addClass("current");
    //    });
    // 群组复选框选中展开群组选项
    //    $("#groupCheck").click(function(){
    //        if (document.getElementById("groupCheck").checked) {
    //            $(".categorie").slideDown();
    //        }
    //        else {
    //            $(".categorie").slideUp();
    //        }
    //    });
});

// 复选 & 单选 控件模拟
function analogcheck(id){
    $(id).toggleClass("check");
    $(id).find("input").val() == "1" ? $(id).find("input").val("0") : $(id).find("input").val("1");
}

function analogcheckAll(id){
    $(id).hasClass("check") ? $("input[name='sharetodoc']").parent().removeClass("check") : $("input[name='sharetodoc']").parent().addClass("check");
    $(id).find("input").val() == "1" ? $("input[name='sharetodoc']").val("0") : $("input[name='sharetodoc']").val("1");
}

function analogradio(id){
    $(".analog-radio b").removeClass("check");
    $(".analog-radio b").find("input").attr("checked", false);
    $(id).find('b').addClass("check");
    $(id).find("input").attr("checked", "checked");
}

//删除了设计中的效果

function selectpcid(id){
    $(id).parent().parent().find("b").removeClass("check");
    $(id).find("b").addClass("check");
    $(id).find("input").attr("checked", "checked");
    $(id).parent().parent().parent().prev().html('<em></em>' + $(id).find("input").attr("title"));
    $(id).parent().parent().parent().slideUp();
}

function selectpcidAll(id){
    $(id).parent().parent().find("b").removeClass("check");
    $(id).find("b").addClass("check");
    var val = $(id).find("input").attr("value");
    $("input[name='p_save'][value=" + val + "]").attr("checked", true);
    $("input[name='p_save'][value=" + val + "]").parent().parent().parent().parent().find("b").removeClass("check");
    $("input[name='p_save'][value=" + val + "]").parent().addClass("check");
    $(id).find("input").attr("checked", "checked");
    $(".docselect").html('<em></em>' + $(id).find("input").attr("title"));
    $(id).parent().parent().parent().slideUp();
}

function selectradio(id){
    $(id).parent().parent().find("b").removeClass("check");
    $(id).find("b").addClass("check");
    $(id).find("input").attr("checked", "checked");
    //$(id).parent().parent().parent().prev().html('<em></em>' + $(id).find("input").attr("title"));
}

//文件夹管理单选按钮
function selectpcid_flie(id){
    $(id).parent().parent().parent().find("b").removeClass("check");
    $(id).find("b").addClass("check");
    $(id).find("input").attr("checked", "checked");
}

var tree0 = "";
// var once = true;
function getTree(id, li_id, nodeif){
    $(li_id).parent().parent().parent().find("input").val(0);
    var nextstr = '<ul class="hierarchy">';
    for (var i = 0; i < subcat.length; i++) {
        if (subcat[i][2] == id) {
            if (subcat[i][4] == 0) {
                nextstr += '<li onclick="treeok(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '">' + subcat[i][0] + '</li>';
            }else{
                nextstr += '<li onclick="getTree(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '"><b class="arr"></b>' + subcat[i][0] + '</li>';
            }
        }
    }
    nextstr += '</ul>';
    $(li_id).parent().find("li").removeClass("current");
    $(li_id).addClass("current");
    $(li_id).parent().nextAll().remove();
    $(li_id).parent().parent().append(nextstr);

    var lic = $(li_id).parent().parent().find("li");
    var arrCategory = [];
    for (var i = 0; i < lic.length; i++) {
         if( lic.eq(i).hasClass('current') ){
            tree0 = setContent( $(lic.eq(i)).html());
            arrCategory.push(tree0);
         }
    };
    tree0 = arrCategory.join(">");

    $(li_id).parent().parent().parent().find(".analog-select").html('<em></em>' + tree0);
    $(li_id).parents('.editlayout').find('.msgs').html('');
}

function getTreeAll(id, li_id, nodeif){
    $(".class-id").val('0');
    var nextstr = '<ul class="hierarchy">';
    for (var i = 0; i < subcat.length; i++) {
        if (subcat[i][2] == id) {
            if (subcat[i][4] == 0) {
                nextstr += '<li onclick="treeokAll(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '">' + subcat[i][0] + '</li>';
            }else{
                nextstr += '<li onclick="getTreeAll(' + subcat[i][1] + ',this,1)" title="' + subcat[i][0] + '"><b class="arr"></b>' + subcat[i][0] + '</li>';
            }
        }
    }
    nextstr += '</ul>';
    $(li_id).parent().find("li").removeClass("current");
    $(li_id).addClass("current");
    $(li_id).parent().nextAll().remove();
    $(li_id).parent().parent().append(nextstr);
    // $(".catelog").html('<em></em>' + setContent($(li_id).html()));
    // tree0 = setContent($(li_id).html());

    var lic = $(li_id).parent().parent().find("li");
    var arrCategory = [];
    for (var i = 0; i < lic.length; i++) {
         if( lic.eq(i).hasClass('current') ){
            tree0 = setContent( $(lic.eq(i)).html());
            arrCategory.push(tree0);
         }
    };
    tree0 = arrCategory.join(">");

    $(".catelog").html('<em></em>' + tree0);
    $(li_id).parents('.editlayout').find('.msgs').html('');
}

function treeok(id, li_id, nodeif){
    $(li_id).parent().parent().parent().find("input").val(id);

    $(li_id).parent().find("li").removeClass("current");
    $(li_id).addClass("current");

    $(li_id).parent().nextAll().remove();
    var lic = $(li_id).parent().parent().find("li");
    var arrCategory = [];
    for (var i = 0; i < lic.length; i++) {
         if( lic.eq(i).hasClass('current') ){
            tree1 = setContent( $(lic.eq(i)).html());
            arrCategory.push(tree1);
         }
    };
    tree1 = arrCategory.join(">");

    $(li_id).parent().parent().parent().find(".analog-select").html('<em></em>' + tree1);
    $(li_id).parent().parent().parent().find(".analog-select").attr('title', tree1);
    
    $(li_id).parent().parent().slideUp();
}
function treeokAll(id, li_id, nodeif){
    $(".class-id").val(id);
    // tree1 = tree0 + '>' + setContent($(li_id).html());
    $(li_id).parent().find("li").removeClass("current");
    $(li_id).addClass("current");

    $(li_id).parent().nextAll().remove();
    var lic = $(li_id).parent().parent().find("li");
    var arrCategory = [];
    for (var i = 0; i < lic.length; i++) {
         if( lic.eq(i).hasClass('current') ){
            tree1 = setContent( $(lic.eq(i)).html());
            arrCategory.push(tree1);
         }
    };
    tree1 = arrCategory.join(">");

    $(".catelog").html('<em></em>' + tree1);
    $(li_id).parent().parent().slideUp();
}

function batch_all(){
    window.setTimeout(function(){
        $("#jifen_class").msDropdown().data("dd").visibleRows(4);
    }, 10);
    $("#edit_null").slideDown();
}

//文档编辑部分
function reset_edit(id){
    if ($(id).val() != '') {
        $(id).removeClass('warning');
        $(id).parents('.editlayout').find('.msgs').html('');
    }
}

function s_batch_all(is_show){
    if (is_show == undefined) {
        is_show = false;
    }
    if (is_show) {
        $("#s_edit_null").slideDown();
        // window.setTimeout(function(){
        //     $("#s_jifen_class").msDropdown().data("dd").visibleRows(3);
        // }, 10);

        $("#s_edit_null").find(".shareto").parent().removeClass('check');
        $("#s_edit_null").find(".shareto").attr('value', 0);
        $("#s_edit_null").find(".shareto").attr("checked", false);
        $("#s_edit_null").find("tr[name='score_edit']").addClass("hide");
    }
    $("#fsUploadProgress1 .editlayout").each(function(){
        var progressid = $(this).attr("id");

        if (progressid != 's_edit_null' && $(this).find(".plan").html() == "100%") {
            changeup(progressid);
        }
    });
}

//去除HTML标签
function setContent(str){
    str = str.replace(/<\/?[^>]*>/g, ''); //去除HTML tag
    return str;
}

function jifen(id){
    var num = $(id).val();
    if (num == 2||num==3) {
        $(id).parents("tr").find(".price_input").show();
        //$(id).parents("tr").find(".price_input .number").val(100);
        $(id).parents("tr").find(".price_input .number").attr("disabled", false);
    }
    else {
        $(id).parents("tr").find(".price_input").hide();
        //$(id).parents("tr").find(".price_input .number").val(0);
        $(id).parents("tr").find(".price_input .number").attr("disabled", true);
    }
}

function jifenall(id){
    var num = $(id).val();
    $(".p_download").val(num);
    $(".p_download").each(function(){
        var id = $(this).attr("id");
        $("#" + id).msDropdown().data("dd").refresh()
    });
    if (num == 2||num==3) {
        $(".price_input").show();
        //$(".price_input .number").val(100);
        $(".price_input .number").attr("disabled", false);
    }
    else {
        $(".price_input").hide();
       // $(".price_input .number").val(0);
        $(".price_input .number").attr("disabled", true);
    }
}

function changejifen(id){
    $(".number").val($(id).val());
}

function changekeyword(id){
    $(".keyword").val($(id).val());
}

function subEdit(li_id, id, is_all){
    if (is_all == undefined) {
        is_all = false;
    }

    var aa = $(id).parents("form").serialize();

    if ($(id).parents("form").find("input[name='title']").val() == "") {
        $(id).parents("form").find("input[name='title']").focus();
        $(id).parents("form").find("input[name='title']").addClass("warning");
        $(id).parents("form").find(".msgs").html('标题不能为空');
        return false;
    }
    if ($(id).parents("form").find("textarea").val() == "") {
        $(id).parents("form").find("textarea").focus();

        $(id).parents("form").find("textarea").addClass("warning");
        $(id).parents("form").find(".msgs").html('描述不能为空');
        return false;
    }
    if ($(id).parents("form").find("input[name='pcid']").val() == "" || $(id).parents("form").find("input[name='pcid']").val() == 0) {
        var obj = $(id).parents("form").find(".catelog");
        analogselect(obj);
        $(id).parents("form").find(".msgs").html('分类不能为空');
        return false;
    }

    var group_list = "";
    var group_free_list = "";

    $(id).parents("form").find("#group_num b[class=check]").each(function(){
        group_list += $(this).parent().parent().parent().attr("id").split("_")[1] + ",";
    });

    $(id).parents("form").find("#group_num i[check=1]").each(function(){
        group_free_list += $(this).parent().parent().attr("id").split("_")[1] + ",";
    });

    group_list = $.trim(group_list);
    group_free_list = $.trim(group_free_list);
    var price = $(id).parents("form").find("input[name=p_price]").val();
    var download = $(id).parents("form").find("select[name=download]").val();
    if (download==2&&(isNaN(price) || price <= 0)) {
        $(id).parents("form").find("input[name=p_price]").focus();
        return false;
    }

    // 批量保存，保存文档到文件夹
    var save_f = "";
    if (is_all) {
        var p_save = $("input[name='p_save']:checked").val();

        if (p_save == 'undefined' || p_save == "") {
            p_save = 0;
        }

        var save_f = "&p_save=" + p_save;
    }

    $(id).parents("form").find(".formtip").show();
    $(id).attr('disabled', true);
    $.ajax({
        type: "post",
        url: "/uc/index.php",
        data: aa + "&act=save_info&group_list=" + group_list + "&group_free_list=" + group_free_list + save_f,
        timeout: 15000,
        success: function(data){
            $(id).attr('disabled', false);
            var data = eval('(' + data + ')');

            $("#myedit_" + li_id).find(".formtip").hide();

            //更新原有列表信息
            $("#bdoc_" + li_id).find('.title').html($(id).parents("form").find("input[name='title']").val());
            $("#sdoc_" + li_id).find('.topic h6 a').html($(id).parents("form").find("input[name='title']").val());
            $("#bdoc_" + li_id).find('.outline').html($(id).parents("form").find("textarea").val());
            $("#bdoc_" + li_id).find('.catelog_name').html(setContent($(id).parents("form").find(".catelog").html()));
            //$("#bdoc_" + li_id).find('.orange').html(setContent($(id).parents("form").find(".docselect").html()));
            var tmp = $(id).parents("form").find(".p_download").val();
            var jifentip = '';
            if (tmp == 0) {
                jifentip = '<strong class="black">不允许下载</strong>';
            }
            if (tmp == 1) {
                jifentip = '<strong class="green">免费</strong>';
            }
            if (tmp == 2 || tmp == 3) {
                jifentip = '<strong class="red">' + $(id).parents("form").find(".number").val() + '</strong>';
            }

            $("#bdoc_" + li_id).find('.jifentip').html(jifentip);
            if (data.other == '1')
                $("#bdoc_" + li_id).find('.edit').html("");
            var statetip = '';
            if (data.state == '2')
                statetip = '提交中';
            if (data.state == '3')
                statetip = '提交失败';
            if (data.state == '4')
                statetip = '分享成功';
            if (data.state == '6')
                statetip = '私有';
            if (data.state == '7')
                statetip = '分享中';
            if (data.state == '8')
                statetip = '分享未成功';
            if (statetip != '')
                $("#bdoc_" + li_id).find('.sharemsg').html(statetip);

            if (typeof(menuIndex) != 'undefined' && menuIndex == '3' && (data.state == '4' || data.state == '7' || data.state == '8'))
                $("#myedit_" + li_id).slideUp();
            else
            if (typeof(menuIndex) != 'undefined' && menuIndex == '4' && (data.state == '6'))
                $("#myedit_" + li_id).slideUp();
            else {
                $("#bdoc_" + li_id).show();
                $("#myedit_" + li_id).hide();
            }
            if (typeof(flag) != 'undefined' && flag) {
                changedown($(id).parents(".editlayout").attr("id"));
            }
            if (typeof(sub_all_count) != 'undefined' && is_all) {
                sub_all_count += 1;
                $(".sub_all_count").html(sub_all_count);
                if (isprivate == '1') {
                    var suc_num = $("#s_success").html();
                }
                else {
                    var suc_num = $("#p_success").html();
                }
                if (suc_num == sub_all_count) {
                    window.location.href = "/uc/doc_manager.php?act=doc_list&state=all&list_num=small";
                }
            }


        },
        complete: function(){
            $("#sdoc_" + li_id).slideDown();
            $(id).attr('disabled', false);
            $(id).parents("form").find(".formtip").hide();
            var group_list = "";
            $("#myedit_" + li_id).remove();
        }
    });
}

var ie6 = !-[1, ] && !window.XMLHttpRequest;
$(document).ready(function(){

    $("#gotop").click(function(){
        $(window).scrollTop(0);
    });
    if (screen.width > 900) {
        $("#gotop").show();
    }
    $(".bookslist").mousemove(function(){
        $(this).find(".downmenu2").slideDown("fast");
    });
    $(".header").mouseleave(function(){
        $(this).find(".downmenu2").hide();
    });

    if (!ie6) {
        $(".header").css({
            position: "fixed",
            top: "0px",
            width: "100%"
        });
        $("#maintop").css("margin-top", "50px");
        $('.menupanel').css({
            position: "fixed",
            top: "50px",
            left: "auto"
        });
    }

    $(window).bind("scroll", function(event){
        var Y = $(this).scrollTop();
        var ph = $(document).height();
        if (!ie6) {
            if (Y > 250) {
                /**
                 $('.listmanage').css({
                 position: "fixed",
                 top: "50px",
                 bottom: "auto"
                 });
                 **/
            }
            if ((Y + $(".menupanel").height() + 80) > ph - 192) {
                $('.menupanel').css({
                    position: "fixed",
                    bottom: "192px",
                    top: "auto"
                });
            }
            else {
                $('.menupanel').css({
                    position: "fixed",
                    top: "50px",
                    bottom: "auto"
                });
            }

            if (Y > 774) {
                if ((Y + $("#adPanel").height() + 80) > ph - 192) {
                    $('#adPanel').css({
                        position: "fixed",
                        bottom: "192px",
                        top: "auto"
                    });
                }
                else {
                    $('#adPanel').css({
                        position: "fixed",
                        top: "50px",
                        bottom: "auto"
                    });
                }

            }
            else {
                $('#adPanel').css({
                    position: "static",
                    top: "0px",
                    bottom: "auto"
                });
            }
        }
    });
    /**
     $(".sidebar").append("<div id='adPanel'></div>");
     $("#adPanel").append('<div class="adpx250" style="padding-top:5px;" ><iframe  width="250" src="http://www.doc88.com/ads/tb_250_250_1.html" height="250" frameborder="0" scrolling="no"></iframe></div>');

     $("#adPanel").append('<div class="adpx250" style="padding-top:5px;" ><iframe  width="250" src="http://www.doc88.com/ads/bd_250_250_1.html" height="250" frameborder="0" scrolling="no"></iframe></div>');
     **/
    /**
     var params = {
     "XOffset":0, //提示框位置横向偏移量,单位px
     "YOffset":0, //提示框位置纵向偏移量,单位px
     "width":200, //提示框宽度，单位px
     "fontColor":"#000", //提示框文字颜色
     "fontColorHI":"#FFF",	//提示框高亮选择时文字颜色
     "fontSize":"13px",		//文字大小
     "fontFamily":"宋体",	//文字字体
     "borderColor":"gray", 	//提示框的边框颜色
     "bgcolorHI":"#03c",		//提示框高亮选择的颜色
     "sugSubmit":false		//在选择提示词条是是否提交表单
     };
     BaiduSuggestion.bind("keyword",params,null);
     **/
});
globePageWidth = 1000;
function pageInit(){
    if (true) {
        return;
    }
    if (screen.width <= 1024) {
        globePageWidth = 988;
        if (ie6) {

        }
        else {
            document.write('<style>.mainpart{position:relative;width:1000px;margin:0 auto;}.mainbody{float:left; width:840px;}</style>');
        }
    }
    else
    if (screen.width <= 1440) {
        globePageWidth = 1020;
        if (ie6) {
        }
        else {
            document.write('<style>.mainpart{position:relative;width:1020px;margin:0 auto;}.mainbody{float:left; width:860px;}</style>');
        }
    }
    else {
        globePageWidth = 1220;
        if (ie6) {
        }
        else {
            document.write('<style>.mainpart{position:relative;width:1220px;margin:0 auto;}.mainbody{float:left; width:1060px;}</style>');
        }
    }
}

//Tabs
function setTab(name, cursel, n){
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "current" : "";
        con.style.display = i == cursel ? "block" : "none";
    }
}

function getLoginBar(divId, type){
    $.ajax({
        url: "/member.php?act=bar&u=1&t=" + type,
        dataType: 'html',
        success: function(msg){
            $("#" + divId).html(msg);
        }
    });
}

function setDocImg(siteUrl){
    var imgA = document.getElementsByTagName("a");
    for (var i = 0; i < imgA.length; i++) {
        var orig = imgA[i].getAttribute('orig');
        if (orig) {
            if (siteUrl + "/" != orig) {
                //imgA[i].style.backgroundImage='url('+siteUrl+'/'+orig+')';
                imgA[i].style.backgroundImage = 'url(' + orig + ')';
            }
        }
    }
}

function search_submit(){
    keyword = document.getElementById("keyword").value;
    var regEx = /[\^\{\}\?\*\\]/g;
    keywordnew = keyword.replace(regEx, "");
    regEx = /[\[\]\(\)\/]/g;
    keywordnew = keywordnew.replace(regEx, " ");
    if (keyword != keywordnew) {
        keyword = keywordnew;
        document.getElementById("keyword").value = keyword;
    }
    if (keyword == "") {
        document.getElementById("keyword").focus();
        return false;
    }
    var searchForm = document.getElementById('searchForm');
    searchForm.action = '/tag/' + encodeURIComponent(document.getElementById("keyword").value);
    searchForm.target = "_blank";
    return true;
}

function getCookie(name){
    var cValue = "";
    var cookies = document.cookie.split('; ');
    for (var i = 0, l = cookies.length; i < l; i++) {
        var parts = cookies[i].split('=');
        if (parts[0] == name) {
            if (parts.length > 1) {
                cValue = unescape(parts[1]);
            }
        }
    }
    return cValue;
}

function setCookie(name, value, objHours){
    delCookie(name);
    var name = escape(name);
    var value = escape(value);
    path = "/";
    path = path == "" ? "" : ";path=" + path;

    if (objHours > 0) {
        var date = new Date();
        var ms = objHours * 3600 * 1000;
        date.setTime(date.getTime() + ms);
        document.cookie = name + "=" + value + path + "; expires=" + date.toGMTString();
    }
    else {
        document.cookie = name + "=" + value + path;
    }
}

//删除cookie
function delCookie(name){
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    document.cookie = name + "=;expires=" + exp.toGMTString();
}

String.prototype.replaceAll = function(s1, s2){
    return this.replace(new RegExp(s1, "gm"), s2);
}

function getShareHtml(p_id, p_title, p_code, p_pic){
    var pageUrl = "http://www.doc88.com/p-" + p_code + ".html";
    var html = '<img src="https://static.doc88.com/assets/images/icons/linklogin/weibo.png" title="新浪微博" onclick="ajaxShareDoc(' + p_id + ',\'新浪微博\');sinaWb(\'' + p_title + '\',\'' + pageUrl + '\');">' +
        '<img src="https://static.doc88.com/assets/images/icons/linklogin/tqq.png" title="腾讯微博" onclick="ajaxShareDoc(' +
        p_id +
        ',\'腾讯微博\');postToWb(\'' +
        p_title +
        '\',\'' +
        pageUrl +
        '\',\'' +
        p_pic +
        '\');">' +
        '<img src="https://static.doc88.com/assets/images/icons/linklogin/renren.png" title="人人网" onclick="ajaxShareDoc(' +
        p_id +
        ',\'人人网\');shareToRenren(\'' +
        p_title +
        '\',\'' +
        pageUrl +
        '\');">' +
        '<img src="https://static.doc88.com/assets/images/icons/linklogin/baidu.png" title="百度搜藏" onclick="ajaxShareDoc(' +
        p_id +
        ',\'百度搜藏\');shareToBaidu(\'' +
        p_title +
        '\',\'' +
        pageUrl +
        '\');">' +
        '<img src="https://static.doc88.com/assets/images/icons/linklogin/qzone.png" title="QQ空间" onclick="ajaxShareDoc(' +
        p_id +
        ',\'QQ空间\');shareToQQ(\'' +
        pageUrl +
        '\');">';
    $("#share_" + p_code).html(html);
}

function sendPrivateMessage(username, member_id){
    var login_if = '';
    $.get("/member.php?act=islogin", function(data){
        login_if = data;
        if (login_if == 1) {
            DOC88Window.win({
                message: '/info.php?act=send_message&username=' + username + '&member_id=' + member_id,
                width: 600,
                height: 290,
                title: '发私信',
                iframe: true
            });
        }
        else {
            DOC88Window.win({
                message: '/js/home/window.html?act=window_login&actMethod=message',
                width: 600,
                height: 290,
                title: '发私信',
                iframe: true
            });
        }
    });
}

function showTipWin(tip){
    DOC88Window.win({
        message: '/js/home/window.tip.html?tip=' + encodeURIComponent(tip),
        width: 300,
        height: 180,
        title: '提示信息',
        iframe: true
    });
}

//鼠标离开收起操作
var count = '';
function wrapup_doc(type){
    clearTimeout(count);
    count = setTimeout(function(){
        if (type == 1) {
            $("#folder_wrap").slideUp("normal");
        }
        else
        if (type == 2) {
            $("#group_wrap").slideUp("normal");
        }
        else
        if (type == 3) {
            $("#edit_folder_wrap").slideUp("normal");
        }
    }, 500)
}

function wrapcancel_doc(type){
    if (type == 1) {
        $("#folder_wrap").mouseover(function(){
            clearTimeout(count);
        });
    }
    else
    if (type == 2) {
        $("#group_wrap").mouseover(function(){
            clearTimeout(count);
        });
    }
    else
    if (type == 3) {
        $("#edit_folder_wrap").mouseover(function(){
            clearTimeout(count);
        });
    }
}

//鼠标离开收起操作
var count = '';
function wrapup(id){
    clearTimeout(count);
    count = setTimeout(function(){
        $(id).slideUp("fast");
    }, 500)
}

function wrapcancel(id){
    $(id).mouseover(function(){
        clearTimeout(count);
    });
}

//收藏文档
function addToFolder(product_id, page_type){
    var title = '文档收藏';
    if (typeof(page_type) != "undefined" && page_type == '1') {
        title = '修改文件夹';
    }
    $.get("/member.php?act=islogin", function(data){
        var login_if = data;
        if (login_if != 1) {
            DOC88Window.win({
                message: '/js/home/window.html?act=window_login&actMethod=collect&page_type=' + page_type + '&p_id=' + product_id + '&logintitle=' + encodeURIComponent('登录后,可将此文档收藏到您的个人收藏夹中'),
                width: 600,
                height: 279,
                title: title,
                iframe: true
            });
            return;
        }
        else {
            DOC88Window.win({
                message: '/uc/usr_folder.php?t=1&act=list&p_id=' + product_id + '&fm_type=0&page_type=' + page_type,
                width: 600,
                height: 510,
                title: title,
                iframe: true
            });
        }
    });
}

//收藏成功后修改新的信息
function newfoldertip(id, name){
    $('#' + id).find('.orange').html(name);
}

//文件夹管理
function folderAdmin(){
    DOC88Window.win({
        message: '/uc/usr_folder.php?act=list&fm_type=1&adminIf=1',
        width: 600,
        height: 460,
        title: '文件夹管理',
        iframe: true
    });
    return false;
}

//下载投诉
function complaintButton(orderid){
    DOC88Window.win({
        message: '/uc/usr_complaint.php?act=complaint_sell&order_id=' + orderid,
        width: 600,
        height: 430,
        title: '投诉',
        iframe: true
    });
    return false;
}

//添加某个用户为好友
function addToFriend(member_id, type, id, action){
    if (action == undefined) {
        action = 1;
    }
    var login_if = '';
    $.get("/member.php?act=islogin", function(data){
        login_if = data;
        if (login_if != 1) {
            DOC88Window.win({
                message: '/js/home/window.html?act=window_login&logintitle=',
                width: 600,
                height: 270,
                title: '用户登录',
                iframe: true
            });
            return;
        }
    });

    var act = "deleteFriend";
    if (action == 1) {
        act = "ajax_addFriend";
    }
    $.ajax({
        url: '/uc/usr_friend.php',
        type: 'get',
        dataType: 'json',
        data: 'act=' + act + '&friend_id=' + member_id,
        success: function(msg){
            if (msg.stateLogined == 0) {
                DOC88Window.win({
                    message: '/js/home/login_init.html?act=window_login&actMethod=addFriend&',
                    width: 600,
                    height: 200,
                    title: '',
                    iframe: true
                });
                return;
            }
            if (msg.self) {
                $(id).html('<em style="background-image:none;padding:0;">关注我<div class="nomsgbox1">不能关注自己！</div></em>');
                $(id).find(".nomsgbox1").fadeIn(300);
                setTimeout(function(){
                    $(".nomsgbox1").fadeOut(300)
                }, 1000)
                return;
            }
            //			if (msg.exist) {
            //				$(id).html('<em class="del">取消<div class="nomsgbox1">已经关注！</div></em>');
            //				$(id).attr('onclick', 'addToFriend('+member_id+',0,this,0)');
            //				$(id).find(".nomsgbox1").fadeIn(300);
            //		        setTimeout(function(){
            //		            $(".nomsgbox1").fadeOut(300)
            //		        },1000)
            //				return;
            //			}
            if (msg.max) {
                $(id).html('<em class="del">关注<div class="nomsgbox1">超过好友上线！</div></em>');
                $(id).find(".nomsgbox1").fadeIn(300);
                setTimeout(function(){
                    $(".nomsgbox1").fadeOut(300)
                }, 1000)
                return;
            }
            if (action == 0) {
                $(id).html('<em class="add">关注<div class="okmsgbox1">取消成功！</div></em>');
                //				$(id).attr('onclick', 'addToFriend('+member_id+',0,this)');
                $(id).removeAttr('onclick');
                $(id).unbind("click");
                $(id).bind('click', function(){
                    addToFriend(member_id, 0, $(id));
                });
            }
            else {
                $(id).html('<em class="del">取消<div class="okmsgbox1">关注成功！</div></em>');
                //				$(id).attr('onclick', 'addToFriend('+member_id+',0,this,0)');
                $(id).removeAttr('onclick');
                $(id).unbind("click");
                $(id).bind('click', function(){
                    addToFriend(member_id, 0, $(id), 0);
                });
            }
            $(id).find(".okmsgbox1").fadeIn(300);
            setTimeout(function(){
                $(".okmsgbox1").fadeOut(300)
            }, 1000)

            if (type == 1) {
                getAjaxContent('/uc/usr_friend.php?act=ajax_subscriber_list&member_id=' + member_id + '', "main_left_subscribe");
            }
        }
    });
    return;
}

//主页加关注
function addToFriend_home(member_id, type, id, action, t){
    if (action == undefined) {
        action = 1;
    }
    if (t == undefined) {
        t = 1;
    }
    var login_if = '';
    $.get("/member.php?act=islogin", function(data){
        login_if = data;
        if (login_if != 1) {
            DOC88Window.win({
                message: '/js/home/window.html?act=window_login&logintitle=',
                width: 600,
                height: 270,
                title: '用户登录',
                iframe: true
            });
            return;
        }
        else {
            var act = "deleteFriend";
            if (action == 1) {
                act = "ajax_addFriend";
            }
            $.ajax({
                url: '/uc/usr_friend.php',
                type: 'get',
                dataType: 'json',
                data: 'act=' + act + '&friend_id=' + member_id,
                success: function(msg){
                    if (msg.stateLogined == 0) {
                        DOC88Window.win({
                            message: '/js/home/login_init.html?act=window_login&actMethod=addFriend&',
                            width: 600,
                            height: 200,
                            title: '',
                            iframe: true
                        });
                        return;
                    }
                    if (msg.self) {
                        if (t == 1) {
                            $(id).html('关注我<div class="nomsgbox1">不能关注自己！</div>');
                            $(id).removeClass("current");
                        }
                        else
                        if (t == 2) {
                            $(id).html('<i class="iconfont">&#xe617;</i>关注<div class="nomsgbox1">不能关注自己！</div>');
                        }
                        $(id).find(".nomsgbox1").fadeIn(300);
                        setTimeout(function(){
                            $(".nomsgbox1").fadeOut(300)
                        }, 1000)

                        return;
                    }
                    if (action == 0) {
                        if (t == 1) {
                            $(id).html('关注我<div class="okmsgbox1">取消成功！</div>');
                            $(id).removeClass("current");
                        }
                        else
                        if (t == 2) {
                            $(id).html('<i class="iconfont">&#xe617;</i>关注<div class="okmsgbox1">取消成功！</div>');
                        }
                        $(id).removeAttr('onclick');
                        $(id).unbind("click");
                        $(id).bind('click', function(){
                            //addToFriend_home(member_id,0,$(id));
                            if (t == 1) {
                                addToFriend_home(member_id, 0, $(id), 1, 1);
                            }
                            else
                            if (t == 2) {
                                addToFriend_home(member_id, 0, $(id), 1, 2);
                            }
                        });
                    }
                    else {
                        if (t == 1) {
                            $(id).html('取消关注<div class="okmsgbox1">关注成功！</div>');
                            $(id).addClass("current");
                        }
                        else
                        if (t == 2) {
                            $(id).html('取消关注<div class="okmsgbox1">关注成功！</div>');
                        }
                        $(id).removeAttr('onclick');
                        $(id).unbind("click");
                        $(id).bind('click', function(){
                            if (t == 1) {
                                addToFriend_home(member_id, 0, $(id), 0, 1);
                            }
                            else
                            if (t == 2) {
                                addToFriend_home(member_id, 0, $(id), 0, 2);
                            }
                        });
                    }
                    $(id).find(".okmsgbox1").fadeIn(300);
                    setTimeout(function(){
                        $(".okmsgbox1").fadeOut(300)
                    }, 1000)

                    if (type == 1) {
                        getAjaxContent('/uc/usr_friend.php?act=ajax_subscriber_list&member_id=' + member_id + '', "main_left_subscribe");
                    }
                }
            });
        }
    });
}

function validEmail(objStr){
    var reg;
    reg = /^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/;
    var r = objStr.match(reg);
    if (r == null) {
        return false;
    }
    else {
        return true;
    }

}

function stopBubble(e){
    if (e && e.stopPropagation) {
        e.stopPropagation();
    }
    else {
        window.event.cancelBubble = true;
    }
}

function isIE7(){
    var browser = navigator.appName
    if (browser == "Microsoft Internet Explorer") {
        var b_version = navigator.appVersion
        var version = b_version.split(";");
        var trim_Version = version[1].replace(/[ ]/g, "");
        if (trim_Version == "MSIE7.0") {
            return true;
        }
    }
    return false;
}

function isIE6(){
    var browser = navigator.appName
    if (browser == "Microsoft Internet Explorer") {
        var b_version = navigator.appVersion
        var version = b_version.split(";");
        var trim_Version = version[1].replace(/[ ]/g, "");
        if (trim_Version == "MSIE6.0") {
            return true;
        }
    }
    return false;
}

//主导航子菜单
$(document).ready(function(){
    $(".mainnav li.dropdown").mousemove(function(){
        if ($(this).find(".dorpmenu1,.dorpmenu2").is(":visible")) {
            return;
        }
        if (isIE7() || isIE6()) {
            $(this).find(".dorpmenu2").show();
        }
        else {
            $(this).find(".dorpmenu2").slideDown("fast");
        }

    });
    $(".mainnav li.dropdown").mouseleave(function(){
        if (isIE7() || isIE6()) {
            $(this).find(".dorpmenu1,.dorpmenu2").hide();
        }
        else {
            $(this).find(".dorpmenu1,.dorpmenu2").slideUp("fast");
        }
    })
});

var JPlaceHolder = {
    _check: function(){
        return 'placeholder' in document.createElement('input');
    },
    init: function(){
        if (!this._check()) {
            this.fix();
        }
    },
    fix: function(){
        jQuery(':input[placeholder]').each(function(index, element){
            var self = $(this), txt = self.attr('placeholder');
            self.wrap($('<div></div>').css({
                position: 'relative',
                zoom: '1',
                border: 'none',
                background: 'none',
                padding: 'none',
                margin: 'none'
            }));
            var pos = self.position(), h = self.outerHeight(true), paddingleft = self.css('padding-left');
            var holder = $('<span></span>').text(txt).css({
                position: 'absolute',
                left: pos.left,
                top: pos.top,
                height: h,
                lineHeight: h + 'px',
                paddingLeft: paddingleft,
                color: '#aaa'
            }).appendTo(self.parent());
            self.focusin(function(e){
                holder.hide();
            }).focusout(function(e){
                if (!self.val()) {
                    holder.show();
                }
            });
            holder.click(function(e){
                holder.hide();
                self.focus();
            });
        });
    }
};
jQuery(function(){
    if (!isIE6()) {
        JPlaceHolder.init();
    }
});
//关闭编辑
function closeEdit(p_id){
    $("#bdoc_" + p_id).show();
    $("#sdoc_" + p_id).show();
    $("#myedit_" + p_id).remove();
}
