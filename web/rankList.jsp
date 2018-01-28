<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rank List</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300|Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
<!--header-->
<header class="main-header" id="header">
    <div class="bg-color">
        <!--nav-->
        <nav class="nav navbar-default navbar-fixed-top">
            <div class="container">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                            <span class="fa fa-bars"></span>
                        </button>
                        <a href="index.html" class="navbar-brand">University</a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#header">Home</a></li>
                            <li><a href="#feature">University List</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!--/ nav-->
        <form action="customRankList.jsp" method="post">
            <div class="container text-center">
                <div class="wrapper wow fadeInUp delay-05s">
                    <h1>&nbsp;</h1>
                    <h1>&nbsp;</h1>
                    <h1>&nbsp;</h1>
                   <h2> <select style="size: 70px" class="rounded text-warning" name="type">
                        <option value="All">All</option>
                        <option value="Public">Public</option>
                        <option value="Private">Private</option>
                        <option value="Engineering">Engineering</option>
                        <option value="Non Engineering">Non Engineering</option>
                   </select>
                    <input type="submit" name="Show" value="Show"> </h2>
                </div>
            </div>
        </form>
    </div>
</header>
<!--/ header-->
<!---->
<section id="cta-1">
    <div class="container">
        <div class="row">
            <div class="cta-info text-center">
                <h3><span class="dec-tec">“</span>Everything is designed. Few things are designed well.<span class="dec-tec">”</span> -Brian Reed</h3>
            </div>
        </div>
    </div>
</section>
<!---->
<!---->
<section id="feature" class="section-padding">
    <div>
        &nbsp;
        &nbsp;
        &nbsp;
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 wow fadeInLeft delay-05s">
                <div class="section-title">
                    <h2 class="head-title">University List</h2>
                    <hr class="botm-line">
                    <p class="sec-para">Here you will get Everything about a university</p>
                </div>
            </div>
            <div class="col-md-9">
                <form method="post" action="univType.jsp">
                    <div class="col-md-6 wow fadeInRight delay-02s">
                        <div class="icon">
                            <i class="fa fa-university"><button style="border-style:none;background-color: transparent" name="univType" value="Public">&nbsp;&nbsp;Public</button></i>
                        </div>

                    </div>
                    <div class="col-md-6 wow fadeInRight delay-02s">
                        <div class="icon">
                            <i class="fa fa-university"><button style="border-style:none;background-color: transparent" name="univType" value="Private">&nbsp;&nbsp;Private</button></i>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</section>



<section class="section-padding wow fadeInUp delay-05s" id="contact">
    <div class="container">
        <div class="row white">
            <div class="col-md-8 col-sm-12">
                <div class="section-title">
                    <h2 class="head-title black">Contact Us</h2>
                    <hr class="botm-line">
                    <p class="sec-para black">Please send your opinion for further develop this website.</p>
                </div>
            </div>
            <div class="col-md-12 col-sm-12">
                <div class="col-md-4 col-sm-6" style="padding-left:0px;">
                    <h3 class="cont-title">Email Us</h3>
                    <div id="sendmessage">Your message has been sent. Thank you!</div>
                    <div id="errormessage"></div>
                    <div class="contact-info">
                        <form action="" method="post" role="form" class="contactForm">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation"></div>
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>

                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                <div class="validation"></div>
                            </div>
                            <button type="submit" class="btn btn-send">Send</button>
                        </form>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6">
                    <h3 class="cont-title">Visit Us</h3>
                    <div class="location-info">
                        <p class="white"><span aria-hidden="true" class="fa fa-map-marker"></span>Gopalganj, Dhaka Bangladseh</p>
                        <p class="white"><span aria-hidden="true" class="fa fa-phone"></span>Phone: 01923889921</p>
                        <p class="white"><span aria-hidden="true" class="fa fa-envelope"></span>Email: <a href="" class="link-dec">tamabose@gmail.com</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon-container hidden-md hidden-sm hidden-xs">
                        <span aria-hidden="true" class="fa fa-envelope-o"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!---->
<!---->
<footer class="" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-7 footer-copyright">
                © Copyright - All rights reserved
                <div class="credits">

                    Developed By <a href="#">Tama Bose</a>
                </div>
            </div>
            <div class="col-sm-5 footer-social">
                <div class="pull-right hidden-xs hidden-sm">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!---->
<!--contact ends-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.js"></script>
<script src="js/custom.js"></script>
<script src="contactform/contactform.js"></script>

</body>
</html>
