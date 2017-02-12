<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="HTML, CSS, JavaScript">

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    

    <!-- 控制login界面样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/lib/font-awesome.css" rel="stylesheet">
    <link href="css/lib/nivo-lightbox.css" rel="stylesheet">
    <link href="css/lib/nivo-themes/default/default.css" rel="stylesheet">
    <link href="css/style-login.css" rel="stylesheet">


    
	
	<title>登录</title>
</head>

<body data-spy="scroll">

    <div id="main-wrapper">
        <div id="menu">
            <div class="col">
                <form id="login-form" class="login" method='get' novalidate=''>
                    <p class="login__title">登录<br></p>
                    
                    <div class="field-wrap">
                        <input type='username' placeholder='用户名' name='user-name' class="login__input">
                        <input type='password' placeholder='密码' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>记住我</label>
                     </div>
                    
                    <div class="login__control">
                        <button type='submit' class="btn btn-md btn--warning btn--wider">登录</button>
                        <a href="#" class="login__tracker form__tracker">忘记密码?</a>
                    </div>
                </form>
            </div>
                
        </div>


        <div id="container">
            <!-- BEGIN HOME -->
            <section id="home" class="home">
                <!-- Superslides -->
                <div id="home-slide">
                    <ul class="slides-container text-center">
                        <li>
                            <div class="slide-text">
                                <h2>AMC</h2>
                                <span>管理信息系统</span>
                                <br/>
                            </div>
                            <div class="slide-filter"></div>
                            <img src="images/slider/slide-1.jpg" class="par" alt="first">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>AMC</h2>
                                <span>管理信息系统</span>
                                <br/>
                            </div>
                            <div class="slide-filter"></div>
                            <img src="images/slider/slide-2.jpg" class="par" alt="second">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>AMC</h2>
                                <span>管理信息系统</span>
                                <br/>
                            </div>
                            <div class="slide-filter"></div>
                            <img src="images/slider/slide-3.jpg" class="par" alt="third">
                        </li>
                    </ul>
                    <nav class="slides-navigation slidez">
                        <a href="javascript:;" class="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                        <a href="javascript:;" class="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                    </nav>
                </div>
                <!-- End of Superslide -->
            </section>
        </div>
    </div>



    <!-- 控制login界面动作 -->
    <!-- Library Scripts -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/lib/jquery.preloader.js"></script>
    <script src="js/lib/nivo-lightbox.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/lib/jquery.superslides.min.js"></script>
    <script src="js/lib/smoothscroll.js"></script>
    <script src="js/lib/jquery.sudoslider.min.js"></script>
    <script src="js/lib/jquery.bxslider.min.js"></script>
    <script src="js/lib/jquery.mixitup.min.js"></script>
    <script src="js/lib/jquery.backtotop.js"></script>
    <script src="js/lib/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script src="js/lib/retina.min.js"></script>
    <!-- Custom Script -->    
    <script src="js/main.js"></script>

</body>

</html>