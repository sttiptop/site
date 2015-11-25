<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Spring Web MVC project</title>
    <meta name='robots' content='all, follow'/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
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
    <script type="text/javascript" src="/public/js/date.js"></script>
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
    <!-- /#logo -->
    <!-- #user -->
    <!-- <div id="user">
         <h2>Forest Gump <span>(admin)</span></h2>
         <a href="">7 messages</a> - <a href="">settings</a> - <a href="index.html">logout</a>
     </div>-->

    <div id="content">
        <div>
            <a href="powersupply.go"><h2>Блоки Питания</h2></a>
        </div>
        <div>
            <a href="admin.go"><h2>Панель Администратирования</h2></a>
        </div>
    </div>
</div>
</body>
</html>
