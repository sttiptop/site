<%-- 
    Document   : powersupply
    Created on : 11.11.2015, 10:13:11
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
    <link href="/public/css/default.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/public/css/blue.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- color skin: blue / red / green / dark -->
    <link href="/public/css/datePicker.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/public/css/wysiwyg.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/public/css/fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/public/css/visualize.css" rel="stylesheet" type="text/css" media="screen"/>

    <script type="text/javascript" src="/public/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="/public/js/jquery.dimensions.min.js"></script>

    <!-- // Tabs // -->
    <script type="text/javascript" src="/public/js/ui.core.js"></script>
    <script type="text/javascript" src="/public/js/jquery.ui.tabs.min.js"></script>

    <!-- // Table drag and drop rows // -->
    <script type="text/javascript" src="/public/js/tablednd.js"></script>

    <!-- // Date Picker // -->
    <script type="text/javascript" src="/ublic/js/date.js"></script>
    <!--[if IE]>
    <script type="text/javascript" src="/public/js/jquery.bgiframe.js"></script><![endif]-->
    <script type="text/javascript" src="/public/js/jquery.datePicker.js"></script>

    <!-- // Wysiwyg // -->
    <script type="text/javascript" src="/public/js/jquery.wysiwyg.js"></script>

    <!-- // Graphs // -->
    <script type="text/javascript" src="/public/js/excanvas.js"></script>
    <script type="text/javascript" src="/public/js/jquery.visualize.js"></script>

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
                <li class="home"><a href="admin/backToAdmin.go">Назад</a></li>
            </ul>
        </div>

        <div class="box">
            <div class="headlines">
                <h2><span>Блоки</span></h2>

            </div>
            <form class="formBox" action="powersupply.go" method="POST">
                <div class="col1">
                    <div class="clearfix">
                        <div class="lab"><label for="input-one">минимальная цена</label></div>
                        <div class="con"><input type="text" class="input" value="" name="min" id="input-one"/></div>
                    </div>
                    <div class="clearfix">
                        <div class="lab"><label for="input-two">максимальная цена</label></div>
                        <div class="con"><input type="text" class="input" value="" name="max" id="input-two"/></div>
                    </div>
                    <div class="clearfix">
                        <div class="lab"><label>Two cols select</label></div>
                        <div class="con">
                            <select class="select" name="man">
                                <option></option>
                                <c:forEach items="${manufacturerList}" var="manufacturer">
                                    <option>${manufacturer.manufacturer}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <input type="submit" value="serach" class="submit"/>
                </div>
            </form>
        </div>

        <div class="box">
            <!-- </form>-->
            <table class="tab tab-drag">
                <tr class="top nodrop nodrag">
                    <th class="dragHandle">&nbsp;</th>
                    <th class="checkbox"><input type="checkbox" name="" value="" class="check-all"/></th>
                    <th>name</th>
                    <th>manufacturer</th>
                    <th>image</th>
                    <th>price</th>
                    <th>power</th>
                    <th>pfk</th>
                    <th>kpd</th>
                    <th>Sertificaton</th>
                    <th>Modern</th>
                    <th class="action">Action</th>
                </tr>
                <c:forEach items="${List}" var="powersupply">
                    <tr>
                        <td class="dragHandle">&nbsp;</td>
                        <td class="checkbox"><input type="checkbox" name="" value=""/></td>
                        <td>${powersupply.name}</td>
                        <td>${powersupply.manufacturer}</td>
                        <td><img width="50" height="50" src="/img/${powersupply.img}"></td>
                        <td>${powersupply.price}</td>
                        <td>${powersupply.power}</td>
                        <td>${powersupply.pfc}</td>
                        <td>${powersupply.kpd}</td>
                        <td>${powersupply.sertification}</td>
                        <td>${powersupply.modern}</td>
                        <td class="action">
                            <a href="deleteps/${powersupply.id}" class="ico ico-delete">delete</a>
                        </td>
                    </tr>
                </c:forEach>


            </table>

        </div>
    </div>
</div>
</body>
</html>
