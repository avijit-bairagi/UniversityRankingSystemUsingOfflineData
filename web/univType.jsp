<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%
    String univType = request.getParameter("univType");
    String src = "C:\\Users\\OVI\\Desktop\\tama\\University\\"+univType+"\\";
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%=univType%></title>
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
<header class="" id="header" style="background-color: #9d9d9d;height: 120px">
    <div class="">
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

    </div>
</header>
<!--/ header-->
<!---->

<!---->
<!---->
<section class="section-padding">
    <div>
        &nbsp;
        &nbsp;
        &nbsp;
    </div>
    <h1 class="text-center text-danger"><%=univType+" Universities"%></h1>
    <h1></h1>
    <div class="container-fluid" style="overflow: scroll;width: auto; height: 700px;">
        <form action="buttonValidation" method="post">
            <%
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("univType",univType);
                try{
                    File file = new File(src);
                    File[] files = file.listFiles();
                    for(File temp : files){
                        String name = temp.getName();
                        //System.out.println(name);
            %>
            <h3><button class="text-warning" name="univ" value="<%=name%>" style="border-style:none;background-color: transparent"/><%=name%></button>
            </h3><p></p>
            <%
                    }
                }catch (Exception e){
                    System.out.println(e);
                }
            %>
        </form>
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
