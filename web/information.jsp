<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="database.DATABASE_CONNECTION" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%
    HttpSession httpSession = request.getSession();
    String univName = (String) httpSession.getAttribute("univName");
    String univType = (String) httpSession.getAttribute("univType");
%>
<%
    String src = "C:\\Users\\OVI\\Desktop\\tama\\University\\"+univType+"\\"+univName+"\\info\\";
    String [] titles = {"Location : ","Total Student : ","Total Teacher : "
            ,"Total Foreign Teacher : ","Total Faculty : ","Total Department : ",
            "Total Hall : ", "Email : "};
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Information</title>
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
    <h1 class="text-center"><%=univName%></h1>
    <div>
        <h1>Information</h1>
        <%
            try{
                //Connection con = DATABASE_CONNECTION.get_connection();
                File file = new File(src);
                File[] files = file.listFiles();
                for(File temp :files){
                    String name = temp.getName().replace(".txt","");
                    //System.out.println(name);
        %>
        <h3><%=""%></h3>
        <%
            String newSrc = temp.getAbsolutePath();

            FileInputStream fstream = new FileInputStream(newSrc);
            BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
        %>
        <ul>
            <%
                String strLine;
                int k=0;
                while ((strLine = br.readLine()) != null)   {
                    //System.out.println (strLine);
            %>
            <h3><li><%=titles[k++]+strLine%></li></h3>
            <%
                }
                br.close();
            %>
        </ul>
        <%
                }
                //con.close();
            }catch (Exception e){
                System.out.println(e);
            }
        %>
        <h2><a href="extraInformation.jsp">Extra Information</a></h2>
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
