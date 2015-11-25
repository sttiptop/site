<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
    <div id="header">
        <!-- #logo -->
        <div id="logo">
            <a href="/" title="Go to Homepage"><span>Great Admin</span></a>
        </div>
    </div>

    <div id="content">
        <div class="breadcrumbs">
            <ul>
                <li class="home"><a href="goToIndex.go">Назад</a></li>
            </ul>
        </div>

        <div>
            <a href="admin/addps.go"><h2>Блоки питания</h2></a>
        </div>
        <div>
            <a href="admin/manufacturer.go"><h2>Производители блоков питания</h2></a>
        </div>
    </div>
</div>
</body>
</html>