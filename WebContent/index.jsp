<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="keywords" content="HTML, CSS, JavaScript">

    <!-- Mobile Specific Metas-->
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Roboto -->
    <link href='css/fonts-useso-400-700.css' rel='stylesheet' type='text/css'>
    <link href='css/fonts-useso-carrois-gothic.css' rel='stylesheet' type='text/css'>
    <link href='css/fonts-useso-400-500-600.css' rel='stylesheet' type='text/css'>
    <!-- Stylesheets -->
    <!-- jQuery UI -->
    <link href="css/jquery-ui.css" rel="stylesheet">

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet">
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet">
    <!-- Swiper slider -->
    <link href="css/external/idangerous.swiper.css" rel="stylesheet">
    <!-- Custom -->
    <link href="css/style.css" rel="stylesheet">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">

    <!-- Modernizr --> 
    <script src="js/external/modernizr.custom.js"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/JavaScript" src="js/jquery.mousewheel.js"></script> 
    <!-- Load the CloudCarousel JavaScript file -->
    <script type="text/JavaScript" src="js/cloud-carousel.1.0.5.js"></script>

    <script type="text/javascript" src="js/showhide.js"></script>
    
    <title>AMC管理信息系统</title>
</head>

<body>
<!-- 插入header -->
<%@ include file="header.jsp" %>

<div class="wrapper">
    <div class="page-container sidebar-collapsed">
        <div class="sidebar-menu">
            <div class="logo">
                <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span></a>
            </div>
            <div class="menu">
                <ul id="menu">
                    <!-- 主页 -->
                    <li id="menu-home">
                        <a href="index.jsp">
                            <i class="fa fa-home"></i><span>主页</span>
                        </a>
                    </li>
                    <!-- 人事管理 -->
                    <li>
                        <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'humanResource.jsp', '', '')">
                        <i class="fa fa-user"></i><span>人事管理</span></a>
                    </li>
                    <!-- 销售管理 -->
                    <li>
                        <a href="#">
                            <i class="fa fa-car"></i>
                            <span>销售管理</span>
                            <span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul>
                            <li>
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'orders.jsp', '', '')">订单管理</a>
                            </li>
                            <li>
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'customers.jsp', '', '')">顾客管理</a>
                            </li>                    
                        </ul>
                    </li>
                    <!-- 库存管理 -->
                    <li >
                        <a href="#">
                            <i class="fa fa-database nav_icon"></i>
                            <span>库存管理</span><span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul>
                            <li style="width: 120px">
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'pikingLists.jsp', '', '')">备货单</a>
                            </li>
                            <li >
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'purchaseOrders.jsp', '', '')">进货通知单</a>
                            </li>
                            <li >
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'products.jsp', '', '')">产品管理</a>
                            </li>
                        </ul>
                    </li>
                    <!-- 采购管理 -->
                    <li >
                        <a href="#">
                            <i class="fa fa-shopping-cart nav_icon"></i>
                            <span>采购管理</span><span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul >
                            <li style="width: 120px">
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'shortageLists.jsp', '', '')">缺货单</a>
                            </li>
                            <li >
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'reorderLists.jsp', '', '')">再订货单</a>
                            </li>
                            <li >
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'vendors.jsp', '', '')">供应商管理</a>
                            </li>
                        </ul>
                    </li>
                    <!-- 财务管理 -->
                    <li>
                        <a href="#">
                            <i class="fa fa-cny nav_icon"></i>
                            <span>财务管理</span><span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul>
                            <li style="width: 120px">
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'accountsReceivable.jsp', '', '')">应收账管理</a>
                            </li>
                            <li>
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'accountsPayable.jsp', '', '')">应付账管理</a>
                            </li>
                            <li>
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'salesBills.jsp', '', '')">销售账管理</a>
                            </li>
                            <li>
                                <a href="javascript:;" onClick="ajaxOpenPage('DIV', 'mainContent', 'purchaseBills.jsp', '', '')">采购账管理</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>


        
        <div class="right-content">

            <!-- 右侧页面通过ajax填充 -->
            <div class="content-wrapper" id="mainContent">
                
            </div>

            <!-- 插入footer -->
            <%@ include file="footer.jsp" %>
        </div>

        
    </div>
</div>



    <!-- JavaScript-->
    <!-- jQuery 1.11.3--> 
    <script src="js/jquery-1.11.3.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
    <!-- Migrate --> 
    <script src="js/external/jquery-migrate-1.2.1.min.js"></script>
    <!-- jQuery UI -->
    <script src="js/jquery-ui.min.js"></script>
    <!-- Bootstrap 3--> 
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery REVOLUTION Slider -->
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!-- Mobile menu -->
    <script src="js/jquery.mobile.menu.js"></script>
    <!-- Select -->
    <script src="js/external/jquery.selectbox-0.2.min.js"></script>
    <!-- Swiper slider -->
    <script src="js/external/idangerous.swiper.min.js"></script>
    <!-- Stars rate -->
    <script src="js/external/jquery.raty.js"></script>

    <!-- Form element -->
    <script src="js/external/form-element.js"></script>
    <!-- Form validation -->
    <script src="js/form.js"></script>

    <!-- Custom -->
    <script src="js/custom.js"></script>

    <script src="js/main.js"></script>

    <!-- 控制逐行添加产品 -->
    <!-- <script>  
        console.log('loaded');
        
         
        //var AddButton       = $("#addProduct"); //Add button ID  
          
        
         
          
        function addProduct(e)  //on add input button click  
        {
            var InputWrapper   = $("#inputWrapper");//Input boxes wrapper ID  
            var FieldCount=1; //to keep track of text box added 
            var x = InputWrapper.length; //initlal text box count  
            var MaxInputs       = 5; //maximum input boxes allowed  

            console.log('pressed');

            if(x <= MaxInputs) //max input box allowed  
            {  
                FieldCount++; //text box added increment  
                //add input box  
                $(InputWrapper).append('<tr id="product-'+FieldCount+'">\n'+
                    '                                        <td>\n'+
                    '                                            <select id="product-name" name="product-name" class="form-control">\n'+
                    '                                                <option value ="">曲轴</option>\n'+
                    '                                                <option value ="">连杆</option>\n'+
                    '                                                <option value ="">产品3</option>\n'+
                    '                                                <option value ="">产品4</option>\n'+
                    '                                                <option value ="">产品5</option>\n'+
                    '                                            </select>\n'+
                    '                                        </td>\n'+
                    '                                        <td>\n'+
                    '                                            <input type="text" id="quantity" name="quantity" class="form-control">\n'+
                    '                                        </td>\n'+
                    '                                        <td>\n'+
                    '                                            <a href="#" class="remove">\n'+
                    '                                                <span class="fa fa-remove"></span>\n'+
                    '                                            </a>\n'+
                    '                                        </td>\n'+
                    '                                    </tr>');  
                x++; //text box increment  
            }  
            return false;  
        };  
          
        $("body").on("click",".remove", function(e){ //user click on remove text  
            // console.log('pressed')
            $(this).parent('td').parent('tr').remove(); //remove text box  
            return false;  
        })   
    </script> -->

    <!-- <script type="text/javascript">
        $(document).ready(function() {
            init_Home();
        });
    </script> -->
    
</body>

</html>