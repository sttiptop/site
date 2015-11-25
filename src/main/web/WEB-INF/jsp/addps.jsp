<%-- 
    Document   : addps
    Created on : 10.11.2015, 17:19:44
    Author     : Yevgeni
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <meta name='robots' content='all, follow'/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <title>Great admin</title>
    <link href="../public/css/default.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../public/css/blue.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- color skin: blue / red / green / dark -->
    <link href="../public/css/datePicker.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../public/css/wysiwyg.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../public/css/fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../public/css/visualize.css" rel="stylesheet" type="text/css" media="screen"/>

    <script type="text/javascript" src="../public/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../public/js/jquery.dimensions.min.js"></script>

    <!-- // Tabs // -->
    <script type="text/javascript" src="../public/js/ui.core.js"></script>
    <script type="text/javascript" src="../public/js/jquery.ui.tabs.min.js"></script>

    <!-- // Table drag and drop rows // -->
    <script type="text/javascript" src="../public/js/tablednd.js"></script>

    <!-- // Date Picker // -->
    <script type="text/javascript" src="../public/js/date.js"></script>
    <!--[if IE]>
    <script type="text/javascript" src="../public/js/jquery.bgiframe.js"></script><![endif]-->
    <script type="text/javascript" src="../public/js/jquery.datePicker.js"></script>

    <!-- // Wysiwyg // -->
    <script type="text/javascript" src="../public/js/jquery.wysiwyg.js"></script>

    <!-- // Graphs // -->
    <script type="text/javascript" src="../public/js/excanvas.js"></script>
    <script type="text/javascript" src="../public/js/jquery.visualize.js"></script>

    <!-- // Fancybox // -->
    <script type="text/javascript" src="../public/js/jquery.fancybox-1.3.1.js"></script>

    <!-- // File upload // -->
    <script type="text/javascript" src="../public/js/jquery.filestyle.js"></script>

    <script type="text/javascript" src="../public/js/init.js"></script>
</head>
<body>
<div id="main">


    <div id="header">
        <!-- #logo -->
        <div id="logo">
            <a href="/" title="Go to Homepage"><span>Great Admin</span></a>
        </div>
    </div>

    <div id="content">
        <div class="breadcrumbs">
            <ul>
                <li class="home"><a href="backToAdmin.go">Назад</a></li>
            </ul>
        </div>

        <div class="box">
            <div class="headlines">
                <h2><span>Блоки</span></h2>
            </div>
            <div class="box-content">
                <form action="/save" method="post" enctype="multipart/form-data">
                    <div>
                        <input type="file" name="img"/>
                    </div>
                    <div>
                        <input type="submit" value="Upload"/>
                    </div>
                </form>
                <form class="formBox" action="addps/powersupplylist.go" method="POST">
                    <fieldset>
                        <div class="form-cols">
                            <div class="col1">
                                <div class="clearfix">
                                    <div class="lab"><label>Name</label></div>
                                    <div class="con">
                                        <select class="select" name="ps">
                                            <option>BlockOne</option>
                                            <option>BlockTwo</option>
                                            <option>BlockTree</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>Manufacturer</label></div>
                                    <div class="con">
                                        <select class="select" name="man">
                                            <c:forEach items="${manufacturerList}" var="manufacturer">
                                                <option>${manufacturer.manufacturer}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="clearfix">
                                    <div class="lab"><label>Price</label></div>
                                    <div class="con"><input type="text" class="input" value="" name="price"/>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>Power</label></div>
                                    <div class="con"><input type="text" class="input" value="" name="power"/>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>img</label></div>
                                    <div class="con">
                                        <select class="select" name="img">
                                            <c:forEach items="${imgList}" var="img">
                                                <option>${img}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>pfc</label></div>
                                    <div class="con">
                                        <select class="select" name="pfc">
                                            <option>active</option>
                                            <option>passive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>KPD</label></div>
                                    <div class="con"><input type="text" class="input" value="" name="kpd"/>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>sertification</label></div>
                                    <div class="con">
                                        <select class="select" name="sertification">
                                            <option>sertificationOne</option>
                                            <option>sertificationTwo</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="lab"><label>modern</label></div>
                                    <div class="con">
                                        <select class="select" name="modern">

                                            <option>true</option>
                                            <option>false</option>
                                        </select>
                                    </div>
                                </div>
                                <input type="submit" value="save"><br><br>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <form class="formBox" action="addps/powersupplylist.go" method="GET">
                    <input type="submit" value="в наличии">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<!-- <form action="addps/powersupplylist.go" method="POST">
Name:<br>
<select name="ps">
<option>BlockOne</option>
<option>BlockTwo</option>
<option>BlockTree</option>
</select><br>
Manufacturer:<br>
<select name="man">
<c:forEach items="${manufacturerList}" var="manufacturer">
    <option>${manufacturer.manufacturer}</option>
</c:forEach>
</select><br>
Price:<br>
<input type="text" name="price"><br>
Power:<br>
<input type="text" name="power"><br>
img:<br>
<select name="img">
<option>1</option>
<option>2</option>
<option>3</option>
</select>
<br>
PFC:<br>
<select name="pfc">
<option>activ</option>
<option>passiv</option>
</select><br>KPD:<br>
<input type="text" name="kpd"><br>
Sertification:<br>
<select name="sertification">
<option>sertificationOne</option>
<option>sertificationTwo</option>
</select><br>
Modernization:<br>
<select name="modern">
<option>true</option>
<option>false</option>
</select><br><br>
<input type="submit" value="save"><br><br>
</form>-->
</div>
</div>
</body>
</html>
