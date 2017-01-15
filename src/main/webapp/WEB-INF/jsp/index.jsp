<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE HTML>
<html>
<head>
    <title>Bike</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/slider.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/modernizr.custom.28468.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cslider.js"></script>
    <!----smoth-scrolling---->
    <script type="text/javascript">
        $(function () {
            $('a[href*=#]:not([href=#])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
    </script>
    <!----smoth-scrolling---->
    <script type="text/javascript">
        $(function ()

        $('#da-slider').cslider({
            autoplay: true,
            bgincrement: 450
        });

        })
        ;
    </script>
    <script type="text/javascript">
        $(function () {

            $('#da-slider1').cslider({
                autoplay: true,
                bgincrement: 450
            });

        });
    </script>
    <!-----script------------->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menu.js"></script>
    <!-----script------------->

</head>
<body>

<div id="top" class="main_bg">
    <div class="wrap">
        <!-----start-header----->
        <div class="header">
            <header id="topnav">
                <nav>
                    <ul>
                        <li class="active"><a href="#about-us" class="scroll">about us<img src="${pageContext.request.contextPath}/images/dot.png"
                                                                                           alt=""></a></li>
                        <li><a href="#work" class="scroll">work</a></li>
                        <li><a href="#shop" class="scroll">shop <img src="${pageContext.request.contextPath}/images/dot.png" alt=""></a></li>
                        <li><a href="#contact" class="scroll">Contact</a></li>
                        <div class="clear"></div>
                    </ul>
                </nav>
                <h1><a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""/> </a></h1>
                <a href="#" id="navbtn">Nav Menu</a>
                <div class="clear"></div>
            </header>
        </div>
    </div>
</div>

<div class="about-us" id="about-us">
    <div class="wrap">
        <div class="about">
            <div class="span">
                <img src="${pageContext.request.contextPath}/images/about-icon.png" alt="">
            </div>
            <h1>A new generation of vintage bike</h1>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
                into electronic typesetting, remaining essentially unchanged.</p>

        </div>
    </div>
</div>
<div class="work" id="work">

    <div class="work">
        <div class="bike-left">
            <img src="${pageContext.request.contextPath}/images/w-bycle.png" alt="">
        </div>
        <div class="bike-right">
            <div class="lable">
                <img src="${pageContext.request.contextPath}/images/w-icon.png" alt="">
                <h2>Vintage oliva</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.<i>Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, <span>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</span></i>
                </p>
            </div>
            <div class="line">
                <img src="${pageContext.request.contextPath}/images/line.png" alt="">
            </div>
            <div class="lable2">
                <img src="${pageContext.request.contextPath}/images/pic2.jpg" alt="">
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div class="work2">
        <div class="work-left">
            <div class="lable3">
                <img src="${pageContext.request.contextPath}/images/w-icon2.png" alt="">
                <h3>Laboriosa</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.<span>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,but also the leap into electronic typesetting, remaining essentially unchanged .</span>
                </p>
            </div>
            <div class="line">
                <img src="${pageContext.request.contextPath}/images/line.png" alt="">
            </div>
            <div class="lable5">
                <img src="${pageContext.request.contextPath}/images/pic3.jpg" alt="">
            </div>
        </div>
        <div class="work-right">
            <img src="${pageContext.request.contextPath}/images/w-bycle2.png" alt="">
        </div>
        <div class="clear"></div>
    </div>
    <div class="work3">
        <div class="w3-left">
            <img src="${pageContext.request.contextPath}/images/w-sidebycle.png" alt="">
        </div>
        <div class="work-middle">
            <div class="lable4">
                <img src="${pageContext.request.contextPath}/images/w-icon3.png" alt="">
                <h3>Retro bike-m.hulot</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <i>Lorem Ipsum has been
                    the industry's standard dummy text ever since the 1500s, Lorem Ipsum has been the industry's
                    standard dummy text ever since the 1500s,<span>but also the leap into electronic typesetting, remaining essentially unchanged .</span></i>
                </p>
            </div>
            <div class="line">
                <img src="${pageContext.request.contextPath}/images/line.png" alt="">
            </div>
            <div class="lable6">
                <img src="${pageContext.request.contextPath}/images/pic4.jpg" alt="">
            </div>
        </div>
        <div class="w3-right">
            <img src="${pageContext.request.contextPath}/images/w-sidebike2.jpg" alt="">
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a></div>
<div class="text-slider">
    <div id="da-slider" class="da-slider"><!-- start slider -->
        <div class="da-slide">
            <img src="${pageContext.request.contextPath}/images/twt-icon.png" alt="">

            <h2>AOD New York @aod <span>/35min </span></h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                scrambled it to make a type specimen book.</p>
        </div>
        <div class="da-slide">
            <img src="${pageContext.request.contextPath}/images/twt-icon.png" alt="">

            <h2>AOD New York @aod <span>/35min </span></h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                scrambled it to make a type specimen book.</p>
        </div>
        <div class="da-slide">
            <img src="${pageContext.request.contextPath}/images/twt-icon.png" alt="">

            <h2>AOD New York @ aod <span>/35min </span></h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                scrambled it to make a type specimen book.</p>
        </div>
        <div class="da-slide">
            <img src="${pageContext.request.contextPath}/images/twt-icon.png" alt="">

            <h2>AOD New York @aod <span>/35min </span></h2>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                scrambled it to make a type specimen book.</p>
        </div>
    </div><!-- end slider -->
</div>
<!------------start-shop------->

<div class="shop" id="shop">
    <div class="port-folio">
        <div class="bottom-grids">
            <div class="col-1">
                <div class="grid-1">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop1.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="grid-2 ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop2.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="grid-3">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop3.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="col-2">
                <div class="img-1  ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop4.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>

                </div>
                <div class="img-1 ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop5.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="col-3">
                <div class="lable-1 ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop6.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>

                </div>
                <div class="lable-2 ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop7.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>

                </div>
                <div class="lable-3 ">
                    <div class="view second-effect">
                        <img src="${pageContext.request.contextPath}/images/shop8.jpg"/>
                        <div class="mask">
                            <a href="#" class="info">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>

            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="para">

        <div class="button">
            <a class=href="#">Discover the shop</a>

        </div>
    </div>
</div>
<!------------end//shop------->
<!------------/contact/------->
<div class="contact" id="contact">
    <div class="consult">
        <div class="logo-2">
            <a href="#"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""></a>
        </div>
        <h5> Stay on the saddle!</h5>
        <div class="form">
            <form id="contact-form" action="#" method="post">
                <input placeholder="enter your email... " type="email" tabindex="2" required>
                <input type="submit" name="submit" id="contact-submit" value="Go">
            </form>

        </div>
    </div>

</div>
<!---//end-contact---->
<!---start-footer---->
<div class="footer">
    <div class="wrap">
        <div class="footer-con">
            <div class="footer-left">
                <ul>
                    <a href="#"><span class="simptip-position-bottom simptip-movable" data-tooltip="Twitter"> <img
                            src="${pageContext.request.contextPath}/images/twt-bird.png"></span></a>
                    <a href="#"> <span class="simptip-position-bottom simptip-movable" data-tooltip="Facebook"> <img
                            src="${pageContext.request.contextPath}/images/fb.png"></span></a>
                    <a href="#"> <span class="simptip-position-bottom simptip-movable" data-tooltip="Printrest"> <img
                            src="${pageContext.request.contextPath}/images/pro.png"></span></a>
                    <div class="clear"></div>
                </ul>
            </div>

            <div class="clear"></div>
        </div>
    </div>
</div>
<!---//end-footer---->
<!---smoth-scrlling---->
<a href="#top" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

</body>
</html>