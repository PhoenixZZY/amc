<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Logo link-->
        <a href='index.jsp' class="logo">
            <img alt='logo' src="images/logo.png">
        </a>
        
        <!-- Main website navigation-->
        <nav id="navigation-box">
            <!-- Toggle for mobile menu mode -->
            <a href="#" id="navigation-toggle">
                <span class="menu-icon">
                    <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                      <span class="lines"></span>
                    </span>
                </span>
            </a>
            
            <!-- Link navigation -->
            <ul id="navigation">
                <li>
                    <span class="sub-nav-toggle plus"></span>
                    <script type="text/javascript" src="js/timer.js"></script>
                </li>
                <li>
                    <span class="sub-nav-toggle plus"></span>
                    <a href="login.jsp" class="sub-nav-toggle plus">当前用户：？？？</a>
                </li>
                <li>
                    <span class="sub-nav-toggle plus"></span>
                    <a href="login.jsp" class="sub-nav-toggle plus">注销</a>
                </li>
            </ul>
        </nav>
        
        <!-- Additional header buttons / Auth and direct link to booking-->
        
    </div>
</nav>


<!-- 登录窗体 -->
<!-- <div class="overlay overlay-hugeinc">
    <section class="container">
        <div class="col-sm-4 col-sm-offset-4">
            <button type="button" class="overlay-close">关闭</button>

            <form id="login-form" class="login" method='get' novalidate=''>
                <p class="login__title">登录<br></p>
                
                <div class="field-wrap">
                    <input type='email' placeholder='邮箱' name='user-email' class="login__input">
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
    </section>
</div> -->

<!-- 控制导航滚动 -->
<script type="text/javascript">
    function elementPosition(obj) {
        var curleft = 0, curtop = 0;
        if (obj.offsetParent) {
            curleft = obj.offsetLeft;
            curtop = obj.offsetTop;
            while (obj = obj.offsetParent) {
                curleft += obj.offsetLeft;
                curtop += obj.offsetTop;
            }
        }
        return { x: curleft, y: curtop };
    }
    function ScrollToControl(id)
    {
        var elem = document.getElementById(id);
        var scrollPos = elementPosition(elem).y;
        scrollPos = scrollPos - document.documentElement.scrollTop;
        var remainder = scrollPos % 50;
        var repeatTimes = (scrollPos - remainder) / 50;
        ScrollSmoothly(scrollPos,repeatTimes);
        window.scrollBy(0,remainder);
    }
    var repeatCount = 0;
    var cTimeout;
    var timeoutIntervals = new Array();
    var timeoutIntervalSpeed;
    function ScrollSmoothly(scrollPos,repeatTimes)
    {
        if(repeatCount < repeatTimes)
        {
            window.scrollBy(0,50);
        }
        else
        {
            repeatCount = 0;
            clearTimeout(cTimeout);
            return;
        }
        repeatCount++;
        cTimeout = setTimeout("ScrollSmoothly('"+scrollPos+"','"+repeatTimes+"')",10);
    }
</script>
</body>
</html>