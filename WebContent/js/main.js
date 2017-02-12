jQuery.noConflict();
jQuery(document).ready(function() {

    /* ---------------------------------------------- /*
     * SMOOTH SCROLL
    /* ---------------------------------------------- */    
    jQuery('.sscroll').bind('click.smoothscroll', function(e) {
        e.preventDefault();
        jQuery('.sscroll').parent().removeClass('active');
        jQuery(this).parent().addClass('active');
        jQuery('html,body').animate({
            scrollTop: jQuery(this.hash).offset().top
        }, 1200);
    });

    /* ---------------------------------------------- /*
     * RESPONSIVE VIDEO
    /* ---------------------------------------------- */    
    if(jQuery.fn.fitVids){
        jQuery('.fitvids').fitVids();
    }

    /* ---------------------------------------------- /*
     * BIG SLIDE
    /* ---------------------------------------------- */
    jQuery('#home-slide').superslides({
        animation: 'fade', // You can choose either fade or slide
        play: 6000,
        pagination: false
    });


    /* ---------------------------------------------- /*
     * PORTFOLIO
    /* ---------------------------------------------- */
    jQuery('.portfolioContainer').mixitup({
        filterSelector: '.portfolioFilter li',
        targetSelector: '.portfolio-item',
        effects: ['fade', 'scale']
    });
    
  
    /* ---------------------------------------------- /*
     * QUOTE SLIDE  
    /* ---------------------------------------------- */    
    jQuery('.bxslider').bxSlider({
        pagerCustom: '#bx-pager',
        controls: false
    });

    /* ---------------------------------------------- /*
     * CLIENT SLIDE 
    /* ---------------------------------------------- */    
    if (jQuery('.client-slider').length > 0) {
        jQuery('.client-slider').carouFredSel({
            responsive: true,
            width: '100%',
            scroll: 1,
            items: {
                width: 116,
                //  height: '30%',  //  optionally resize item-height
                visible: {
                    min: 1,
                    max: 4
                }
            }
        });
    }

    /* ---------------------------------------------- /*
     * Back To Top
    /* ---------------------------------------------- */    
    jQuery("#backtotop").backToTop();

    /* ---------------------------------------------- /*
     * Bootstrap Tooltip
    /* ---------------------------------------------- */    
    jQuery('a[data-toggle="tooltip"]').tooltip();
    

    /* ---------------------------------------------- /*
     * NIVOLightbox
    /* ---------------------------------------------- */    
    if(jQuery.fn.nivoLightbox){
        jQuery('.popup').nivoLightbox({
            effect: 'fall'
        });
    }
    

    /* ---------------------------------------------- /*
     * E-mail validation
    /* ---------------------------------------------- */
    function isValidEmailAddress(emailAddress) {
        var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
        return pattern.test(emailAddress);
    }
    ;

    /* ---------------------------------------------- /*
     * Contact form ajax
    /* ---------------------------------------------- */

    jQuery('#contact-form').submit(function (e) {

        e.preventDefault();

        var c_name = jQuery('#c_name').val();
        var c_email = jQuery('#c_email').val();
        var c_message = jQuery('#c_message ').val();
        var response = jQuery('#contact-form .ajax-response');

        var formData = {
            'name': c_name,
            'email': c_email,
            'message': c_message
        };

        if ((c_name == '' || c_email == '' || c_message == '') || (!isValidEmailAddress(c_email))) {
            response.fadeIn(500);
            response.html('<i class="fa fa-warning"></i> Please fix the errors and try again.');
        }

        else {
            jQuery.ajax({
                type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                url: 'php/contact.php', // the url where we want to POST
                data: formData, // our data object
                dataType: 'json', // what type of data do we expect back from the server
                encode: true,
                success: function (res) {
                    var ret = jQuery.parseJSON(JSON.stringify(res));
                    response.html(ret.message).fadeIn(500);
                }
            });
        }
        return false;
    });
    
    
});








/*Ajax操作*/


/**
 * Ajax方式打开页面
 * @param type 打开页面的类型，规定取值：DIV表示在普通页面打开，MODAL表示在bootstrap modal中打开
 * @param divId 如果type值为DIV则是已预定义好的div id；如果type值为MODAL则会新创建一个modal div，以divId作为唯一标识
 * @param pageUrl 打开页面的url
 * @param parameters 需要传参的序列化参数
 * @param modalWidth 如果type值为MODAL，表示modal的宽度
 * @returns void
*/
function ajaxOpenPage(type, divId, pageUrl, parameters, modalWidth) {
    $.ajaxSetup ({
        cache: false //关闭Ajax缓存
    });
    
    if (type == "DIV") {    
        if (parameters == "") {
            $("#" + divId).load(pageUrl);
        }
        else {
            $.post(pageUrl, parameters,
                function(backData, status){
                    $("#" + divId).html(backData);
                }
            );
        }
    }
    if (type == "MODAL") {
        //判断modal是否已存在
        if(!($("#" + divId).length > 0)) {
            var modalDiv;
            //判断modalWidth是否为空，如果为空则使用默认值
            modalDiv = "<div id='"+divId+"' class='modal fade' role='dialog' aria-hidden='true'>"
                        + "<div class='modal-dialog' role='document'>"
                            + "<div class='modal-content'>"
                            + "</div>"
                        + "</div>"
                     + "</div>";
            
            //bootstrap默认会根据modal div的顺序来分层展示，div越靠后，modal越置前。因此设置：每打开一个modal前，将modal div内容附加到父div最后
            $(modalDiv).appendTo($("#mainModal"));
        }
        
        //添加modalWidth属性，如果为空则使用默认值
        if (modalWidth != "") {
            $("#" + divId).find(".modal-dialog").css("width", modalWidth);
        }
        
        if (parameters == "") {
            $("#" + divId).find(".modal-content").load(pageUrl);
        }
        else {
            $.post(pageUrl, parameters,
                function(backData, status){
                    $("#" + divId).find(".modal-content").html(backData);
                }
            );
        }
        
        $("#" + divId).modal("show");
    }
}

/**
 * Ajax方式执行操作，后台封装json格式数据返回前台解析处理
 * @param actionUrl 执行操作的url
 * @param parameters 需要传参的序列化参数
 * @returns void
*/
function ajaxToDo(actionUrl, parameters) {
    if (parameters == "") {
        $.get(actionUrl, 
            function(backData, status){
                //回调函数
                parsingBackJaon(backData);
            }
        );
    }
    else {
        $.post(actionUrl, parameters, 
            function(backData, status){
                //回调函数
                parsingBackJaon(backData);
            }
        );
    }
}

/**
 * 解析后台返回的自定义json格式数据
 * @param backData 后台返回的json数据
 * @returns void
*/
function parsingBackJaon(backData){
    var jsonObj = $.parseJSON(backData);//将返回的json字符串转换为JavaScript的json对象
    //var jsonObj = backData;//【备注：后台controller使用ModelAndView给前台返回文本，已经是json格式，而不是字符串，因而不需要解析】
    
    var showMessage = "";
    if(jsonObj.statusCode == "200"){
        showMessage = "<span class='label label-lg label-success label-white'>" +
                      "<i class='ace-icon fa fa-check'></i>成功" +
                      "</span>&nbsp;&nbsp;" +
                      jsonObj.message;
    }
    if(jsonObj.statusCode == "300"){
        showMessage = "<span class='label label-lg label-warning label-white'>" +
                      "<i class='ace-icon fa fa-exclamation-triangle'></i>警告" +
                      "</span>&nbsp;&nbsp;" +
                      jsonObj.message;
    }
    
    //1.关闭modal
    if(jsonObj.closeModalDiv != ""){
        $("#" + jsonObj.closeModalDiv).modal("hide");//隐藏modal div
        $("#" + jsonObj.closeModalDiv).find(".modal-content").empty();//清空modal的内容
    }
    
    //2.弹出提示框
    bootbox.dialog({
        title : "提示",
        message : showMessage,
        buttons : {
            main : {
                label : "确定",
                className : "btn-sm btn-primary"
            }
        }
    });
    
    //3.根据需要刷新页面
    ajaxOpenPage(jsonObj.refreshType, jsonObj.refreshDiv, jsonObj.refreshUrl, "", "");
}

/**
 * 封装"确认删除"弹出框与操作
 * @param delUrl 删除操作的url
 * @returns void
*/
function confirmDelete(delUrl) {
    bootbox.setLocale("zh_CN");//使用中文
    bootbox.confirm("确认要删除吗？", function(result) {
        if (result == true) {
            ajaxToDo(delUrl, "");
        }
    });
}

/**
 * 封装"确认退出系统"弹出框与操作
 * @param logoutUrl 登出操作的url
 * @returns void
*/
function confirmLogout(logoutUrl) {
    bootbox.setLocale("zh_CN");//使用中文
    bootbox.confirm("确认要退出系统吗？", function(result) {
        if (result == true) {
            window.open(logoutUrl, "_self");
        }
    });
}

/**
 * 封装"权限不足"弹出框与操作【仅使用jquery datatables获取数据列表时，根据后台返回值判断权限然后调用；其他权限控制均为后台返回json，前台jquery回调函数解析】
 * @returns void
*/
function permissionDenied(){
    bootbox.dialog({
        title : "提示",
        message : "<span class='label label-lg label-warning label-white'>" +
                  "<i class='ace-icon fa fa-exclamation-triangle'></i>警告" +
                  "</span>&nbsp;&nbsp;" +
                  "权限不足",
        buttons : {
            main : {
                label : "确定",
                className : "btn-sm btn-primary"
            }
        }
    });
}




/* 控制侧边栏开闭 */
var toggle = false;
$(".sidebar-icon").click(function() {                
    if (toggle)
    {
        $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
        $("#menu span").css({"position":"absolute"});
    }
    else
    {
        $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
        setTimeout(function() {
            $("#menu span").css({"position":"relative"});
        }, 400);
    }               
    toggle = !toggle;
});