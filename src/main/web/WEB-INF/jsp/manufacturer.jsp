<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <title>Great admin</title>
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

    <!-- // Fancybox // -->
    <script type="text/javascript" src="/public/js/jquery.fancybox-1.3.1.js"></script>

    <!-- // File upload // -->
    <script type="text/javascript" src="/public/js/jquery.filestyle.js"></script>

    <script type="text/javascript" src="/public/js/init.js"></script>
</head>
<body>
<div id="main">
    <!-- #header -->
    <div id="header">
        <!-- #logo -->
        <div id="logo">
            <a href="/" title="Go to Homepage"><span>Great Admin</span></a>
        </div>
    </div>
    <div id="content">
        <div class="breadcrumbs">
            <ul>
                <li class="home"><a href="backToAdmin">Назад</a></li>
            </ul>
        </div>


        <h3>Add Manufacturer</h3>

        <form action="manufacturer.go" method="POST">
            <select name="manufacturerName">
                <option>Asus</option>
                <option>Lenovo</option>
                <option>Dell</option>
            </select> <input type="submit" value="insert">

        </form>


        <div class="box">
            <div class="headlines">
                <h2><span>Производители</span></h2>

            </div>

            <!-- table -->
            <c:if test="${!empty manufacturerList}">
                <table class="tab tab-drag">
                    <tr class="top nodrop nodrag">
                        <th class="dragHandle">&nbsp;</th>
                        <th class="checkbox"><input type="checkbox" name="" value="" class="check-all"/></th>
                        <th>manufacturerName</th>
                        <th class="action">Action</th>
                    </tr>
                    <c:forEach items="${manufacturerList}" var="manufacturer">
                        <tr>
                            <td class="dragHandle">&nbsp;</td>
                            <td class="checkbox"><input type="checkbox" name="" value=""/></td>
                            <td><a href="#">${manufacturer.manufacturer}</a></td>
                            <td class="action">
                                <a href="manufacturer/${manufacturer.id}" class="ico ico-delete">delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <!-- /table -->

            <!-- box-action -->
            <div class=" tab-action">
                <select class="select">
                    <option>Choose an action</option>
                </select>
                <input type="submit" value="Apply action" class="submit"/>
            </div>
            <!-- /box-action -->
            <!-- /pagination -->
            <div class="pagination">
                <ul>
                    <li class="graphic first"><a href=""></a></li>
                    <li class="graphic prev"><a href=""></a></li>
                    <li><a href="">1</a></li>
                    <li class="active"><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li class="graphic next"><a href=""></a></li>
                    <li class="graphic last"><a href=""></a></li>
                </ul>
                <p>Pages 1 of 5</p>
            </div>
            <!-- /pagination -->
        </div>


        <!--    <c:if test="${!empty manufacturerList}">
            <table class="data" border="1px solid" width="400px">
                <tr>
                    <th>id</th>
                    <th>manufacturerName</th>
                </tr>
                <c:forEach items="${manufacturerList}" var="manufacturer">
                    <tr>
                        <td><a href="manufacturer/${manufacturer.id}">delete</a></td>
                        <td>${manufacturer.manufacturer}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>-->
    </div>
</body>
</html>