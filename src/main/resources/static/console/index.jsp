<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7">   <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8">          <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9">                 <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js">                        <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>大道之行也-管理控制台</title>
        <meta name="description" content="Metis: Bootstrap Responsive Admin Theme">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/style.css">
        <link type="text/css" rel="stylesheet" href="assets/css/calendar.css">
        
        <link rel="stylesheet" href="assets/css/theme.css">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if IE 7]>
        <link type="text/css" rel="stylesheet" href="assets/css/font-awesome-ie7.min.css"/>
        <![endif]-->

        <script src="assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!-- BEGIN WRAP -->
        <div id="wrap">


            <!-- BEGIN TOP BAR -->
            <div id="top">
                <!-- .navbar -->
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                            <a class="brand" href="index.html">Dogiant</a>
                            <!-- .topnav -->
                            <div class="btn-toolbar topnav">
                                <div class="btn-group">
                                    <a id="changeSidebarPos" class="btn btn-success" rel="tooltip"
                                    data-original-title="显示/ 隐藏 侧边栏" data-placement="bottom">
                                        <i class="icon-resize-horizontal"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="消息中心"
                                       data-placement="bottom">
                                        <i class="icon-comments"></i>
                                        <span class="label label-important"></span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                	<!-- 
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="帮助文档"
                                       data-placement="bottom">
                                        <i class="icon-file"></i>
                                    </a>
                                     -->
                                    <a href="#helpModal" class="btn btn-inverse" rel="tooltip" data-placement="bottom"
                                       data-original-title="帮助" data-toggle="modal">
                                        <i class="icon-question-sign"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" data-placement="bottom" data-original-title="退出" rel="tooltip"
                                       href="logout.do"><i class="icon-off"></i></a></div>
                            </div>
                            <!-- /.topnav -->
                            <div class="nav-collapse collapse">
                                <!-- .nav -->
                                <ul class="nav">
                                    <li class="active"><a href="index.html">管理控制台</a></li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                            我的公众号<b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">公众号1</a></li>
                                            <li><a href="#">公众号2</a></li>
                                            <li><a href="#">公众号3</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                            消息素材管理<b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">文本消息</a></li>
                                            <li><a href="#">图文消息</a></li>
                                            <li><a href="#">图片消息</a></li>
                                            <li><a href="#">语音消息</a></li>
                                            <li><a href="#">视频消息</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!-- /.nav -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.navbar -->
            </div>
            <!-- END TOP BAR -->


            <!-- BEGIN HEADER.head -->
            <header class="head">
                <div class="search-bar">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="search-bar-inner">
                                <a id="menu-toggle" href="#menu" data-toggle="collapse"
                                   class="accordion-toggle btn btn-inverse visible-phone"
                                   rel="tooltip" data-placement="bottom" data-original-title="显示/隐藏 菜单">
                                    <i class="icon-sort"></i>
                                </a>

                                <form class="main-search">
                                    <input class="input-block-level" type="text" placeholder="共享消息素材 检索...">
                                    <button id="searchBtn" type="submit" class="btn btn-inverse"><i class="icon-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- ."main-bar -->
                <div class="main-bar">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="span12">
                                <h3><i class="icon-home"></i> 管理控制台</h3>
                            </div>
                        </div>
                        <!-- /.row-fluid -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.main-bar -->
            </header>
            <!-- END HEADER.head -->

            <!-- BEGIN LEFT  -->
            <div id="left">
                <!-- .user-media -->
                <div class="media user-media hidden-phone">
                    <a href="" class="user-link">
                        <img src="assets/img/user.gif" alt="" class="media-object img-polaroid user-img">
                        <span class="label user-label"></span>
                    </a>

                    <div class="media-body hidden-tablet">
                        <h5 class="media-heading">微信号</h5>
                        <ul class="unstyled user-info">
                            <li><a href="">用户名</a></li>
                            <li>上次登录时间 : <br/>
                                <small><i class="icon-calendar"></i>14-5-10 22:35:30</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.user-media -->

                <!-- BEGIN MAIN NAVIGATION -->
                <ul id="menu" class="unstyled accordion collapse in">
                    <li class="accordion-group active">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav">
                            <i class="icon-star icon-large"></i> 我的公众号<span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse in" id="dashboard-nav">
                            <li><a href="index.html"><i class="icon-angle-right"></i> 我的公众号</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 公众号接入</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                            <i class="icon-leaf icon-large"></i> 消息素材管理 <span class="label label-inverse pull-right">5</span>
                        </a>
                        <ul class="collapse " id="component-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> 文本消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 图文消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 图片消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 语音消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 视频消息</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#form-nav">
                            <i class="icon-pencil icon-large"></i> 消息回复管理<span class="label label-inverse pull-right">3</span>
                        </a>
                        <ul class="collapse " id="form-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> 关注回复</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 无匹配回复</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 关键字回复</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#menucustom-nav">
                            <i class="icon-tasks icon-large"></i> 自定义菜单<span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse " id="menucustom-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> 菜单列表</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 创建菜单</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#users-nav">
                            <i class="icon-user icon-large"></i> 关注者管理<span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse " id="users-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> 关注者列表</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 分组管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon-comment icon-large"></i> 客服人工消息</a></li>
                    <li><a href="#"><i class="icon-envelope icon-large"></i> 群发消息定制</a></li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#officialweb-nav">
                            <i class="icon-check-empty icon-large"></i> 微官网设置 <span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse" id="officialweb-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> 栏目设置</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 模板管理</a></li>
                        </ul>
                    </li>
                    <li><a href="logout.do"><i class="icon-signin icon-large"></i> 退出登录</a></li>
                </ul>
                <!-- END MAIN NAVIGATION -->

            </div>
            <!-- END LEFT -->

            <!-- BEGIN MAIN CONTENT -->
            <div id="content">
                <!-- .outer -->
                <div class="container-fluid outer">
                    <div class="row-fluid">
                        <!-- .inner -->
                        <div class="span12 inner">
                        <hr>
                            <div class="row-fluid">
                                <div class="span8">
                                    <div class="box">
                                        <header>
                                            <h5>日历</h5>
                                        </header>
                                        <div id="calendar_content" class="body">
                                            <div id='calendar'></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="span4">
                                    <div class="box">
                                        <header>
                                            <div class="icons"><i class="icon-tags"></i></div>
                                            <h5>Todos</h5>
                                        </header>
                                        <div class="block">
                                            <table class="table table-striped">
                                                <tbody>
                                                    <tr class="success">
                                                        <td>我的公众号</td>
                                                        <td>接入完毕</td>
                                                    </tr>
                                                    <tr class="success">
                                                        <td>消息素材管理</td>
                                                        <td>开发毕</td>
                                                    </tr>
                                                    <tr class="success">
                                                        <td>消息回复管理</td>
                                                        <td>接口接入</td>
                                                    </tr>
                                                    <tr>
                                                        <td>自定义菜单</td>
                                                        <td>创建菜单管理</td>
                                                    </tr>
                                                    <tr>
                                                        <td>关注者管理</td>
                                                        <td>列表分组</td>
                                                    </tr>
                                                    <tr>
                                                        <td>客服人工消息</td>
                                                        <td>群发消息定制</td>
                                                    </tr>
                                                    <tr>
                                                        <td>微官网</td>
                                                        <td>……</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.row-fluid -->
                </div>
                <!-- /.outer -->
            </div>
            <!-- END CONTENT -->


            <!-- #push do not remove -->
            <div id="push"></div>
            <!-- /#push -->
        </div>
        <!-- END WRAP -->

        <div class="clearfix"></div>

        <!-- BEGIN FOOTER -->
        <div id="footer">
            <p>2013-<script>document.write(new Date().getFullYear());</script> © Dogiant Admin</p>
        </div>
        <!-- END FOOTER -->

        <!-- #helpModal -->
        <div id="helpModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel"
             aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="helpModalLabel"><i class="icon-external-link"></i> 关于管理控制台</h3>
            </div>
            <div class="modal-body">
                <p>
                    本程序由 dogiant.com 设计开发，我们从专业的角度为您提供优秀的网站策划，具有丰富经验的设计师给您设计风格独特的页面。
                    完善的后台维护程序让网络与您的经营紧密配合，真正做到让您省心省时，使您的工作高效高质，走在时代的前端。
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
            </div>
        </div>
        <!-- /#helpModal -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="assets/js/vendor/jquery-migrate-1.1.1.min.js"></script>

        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>
        <script>window.jQuery.ui || document.write('<script src="assets/js/vendor/jquery-ui-1.10.0.custom.min.js"><\/script>')</script>

        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/lib/jquery.tablesorter.min.js"></script>

        <script src="assets/js/lib/jquery.mousewheel.js"></script>
        <script src="assets/js/lib/jquery.sparkline.min.js"></script>
        <script src="assets/js/lib/flot/jquery.flot.js"></script>
        <script src="assets/js/lib/flot/jquery.flot.pie.js"></script>
        <script src="assets/js/lib/flot/jquery.flot.selection.js"></script>
        <script src="assets/js/lib/flot/jquery.flot.resize.js"></script>
        <script src="assets/js/lib/fullcalendar.min.js"></script>

        <script src="assets/js/main.js"></script>   

        <script type="text/javascript">
            $(function() {
                dashboard();
            });
        </script>
        
        <script type="text/javascript" src="assets/js/style-switcher.js"></script>
        
    </body>
</html>