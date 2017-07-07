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
        <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/jasny-bootstrap-responsive.min.css" />
        
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
                        
                            <!--BEGIN INPUT TEXT FIELDS-->
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="box dark">
                                        <header>
                                            <div class="icons"><i class="icon-edit"></i></div>
                                            <h5>我的公众号接入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="#">Link</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="">q</a></li>
                                                            <li><a href="">a</a></li>
                                                            <li><a href="">b</a></li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a class="accordion-toggle minimize-box" data-toggle="collapse" href="#div-1">
                                                            <i class="icon-chevron-up"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- /.toolbar -->
                                        </header>
                                        <div id="div-1" class="accordion-body collapse in body">
                                        	<form id="uploadAjaxForm" action="http://www.dogiant.com/upload/upload.do" enctype="multipart/form-data" method="post">
                                        	</form>
                                        	<form class="form-horizontal">
                                            <div class="control-group">
                                                    <label class="control-label">头像上传</label>
                                                    <div class="controls">
                                                        <div class="fileupload " data-provides="fileupload">
                                                            <div class="thumbnail" style="width: 128px; height: 128px;"></div>
                                                            <div>
                                                                	<input type="file"  name="upload" onchange="uploadAjaxSubmit(this);"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="text1" class="control-label">公众号名称</label>

                                                    <div class="controls with-tooltip">
                                                        <input type="text" id="name" class="span6 input-tooltip"
                                                               data-original-title="请输入您的公众号名称" data-placement="bottom"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="pass1" class="control-label">登录邮箱</label>

                                                    <div class="controls with-tooltip">
                                                        <input class="span6 input-tooltip" type="text" id="email"
                                                               data-original-title="请输入您的登录邮箱" data-placement="top"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">原始ID</label>

                                                    <div class="controls">
                                                        <input class="span6 input-tooltip"  type="text" id="originId" 
                                                        data-original-title="请输入您的登录邮箱" data-placement="bottom">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">微信号</label>

                                                    <div class="controls">
                                                        <input class="span6 input-tooltip"" type="text"  id="weChatId"
                                                        data-original-title="请输入您的微信号" data-placement="bottom">
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
														<label class="control-label">公众号类型</label>
														<div class="controls controls-row">
                                                                     <input class="uniform" type="radio" name="type" value="1" >订阅号
                                                                     <input class="uniform" type="radio" name="type" value="2"  checked>服务号
													</div>
                                               </div>
                                               
                                               <div class="control-group">
														<label class="control-label">认证情况</label>
														<div class="controls controls-row">
                                                                     <input class="uniform" type="radio" name="isCertified" value="true" >已认证
                                                                     <input class="uniform" type="radio" name="isCertified" value="false"  checked>未认证
													</div>
                                               </div>
                                                 
                                                <div class="control-group">
                                                    <label for="text2" class="control-label">地区</label>

                                                    <div class="controls">
                                                        <input class="span6" type="text" id="location" placeholder="请输入所在地区"/>
                                                    </div>
                                                </div>
                                                
                                               <div class="control-group">
                                                    <label for="text2" class="control-label">token</label>

                                                    <div class="controls">
                                                        <input class="span6" type="text" id="location" placeholder="请输入token"/>
                                                    </div>
                                                </div>
                                                
											<div class="control-group">
                                                    <label class="control-label">二维码</label>
                                                    <div class="controls">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="fileupload-new thumbnail" style="width: 146px; height: 146px;"><img src="http://www.placehold.it/146x146/EFEFEF/AAAAAA&text=DimensionalCode" /></div>
                                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 146px; max-height: 146px; line-height: 20px;"></div>
                                                            <div>
                                                                <span class="btn btn-file"><span class="fileupload-new">选择二维码</span><span class="fileupload-exists">更换</span><input type="file" /></span>
                                                                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">移除</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
												<div class="form-actions">
														<input type="submit" value="提交" class="btn btn-primary">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--END TEXT INPUT FIELD-->

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

        <script type="text/javascript" src="assets/js/lib/bootstrap-progressbar.min.js"></script>
        <script src="assets/js/lib/jquery.tablesorter.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.mousewheel.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.nicescroll.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/prettify.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.sparkline.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.form.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.validate.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.form.wizard-min.js"></script>
        <script type="text/javascript" src="assets/js/lib/plupload.js"></script>
        <script type="text/javascript" src="assets/js/lib/plupload.html5.js"></script>
        <script type="text/javascript" src="assets/js/lib/plupload.html4.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.plupload.queue.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.gritter.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.uniform.min.js"></script>
        <!--  
        <script type="text/javascript" src="assets/js/lib/jasny-bootstrap.min.js"></script>
		-->
        <script src="assets/js/main.js"></script>   

        <script type="text/javascript">
		var fileHost = "http://file.dogiant.com/";
		function uploadAjaxSubmit(o) {
			alert("aa");
			var ajaxForm = $('#uploadAjaxForm'), $file = $(o).clone();
			//ajaxForm.append($file);
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"avatar",upload:$file.val()},
				beforeSubmit : function() {
					//alert("开始上传");
				},
				success : function(data) {
					if (data.success) {
						$("#facediv").css({"display":"block"});
						$("#face").attr("src", fileHost + data['fileName'] );
						$('<div><img src="' + fileHost + data['fileName'] + '" style="position: relative;" /><div>')
					        .css({
					            float: 'left',
					            position: 'relative',
					            overflow: 'hidden',
					            width: '150px',
					            height: '150px',
					            padding:'0,10px,0,10px'
					        }).insertAfter($('#face'));
						
						$('<button id="btnSubmit">提交</button>')
				        .click(function (){
				        	cutImage(data['fileName']);
				        }).insertAfter($('#facediv'));
						
					    $('#face').imgAreaSelect({
							maxWidth: 500, maxHeight: 500,
							minWidth: 63, minHeight:63,
							x1:100,y1:100,x2:250,y2:250,
					        aspectRatio: '1:1', 
							onSelectChange: function (img, selection) {
								var scaleX = 150 / (selection.width || 1);
								var scaleY = 150 / (selection.height || 1);
							  	var w = img.width;
							  	var h = img.height;
								$('#face + div > img').css({
									width: Math.round(scaleX * img.width) + 'px',
									height: Math.round(scaleY * img.height) + 'px',
									marginLeft: '-' + Math.round(scaleX * selection.x1) + 'px',
									marginTop: '-' + Math.round(scaleY * selection.y1) + 'px'
								});
							},
							onSelectEnd: function (img, selection) {
								$('input[name="x1"]').val(selection.x1);
								$('input[name="y1"]').val(selection.y1);
								$('input[name="x2"]').val(selection.x2);
								$('input[name="y2"]').val(selection.y2);
							} 
						});
					}
				},
				error : function(data) {

				}
			};
			ajaxForm.ajaxSubmit(options);
			return false;
		}

		function cutImage(path) {
			$.ajax( {
				type : "POST",
				url:"upload.do",
				dateType:"jsonp",
				data:{"x1":$('input[name="x1"]').val(),
				"x2":$('input[name="x2"]').val(),
				"y1":$('input[name="y1"]').val(),
				"y2":$('input[name="y2"]').val(),
				"channel":"avatar","imgAreaSelect":true,"imgPath":path},
				success : function(data) {
					if(data.success){
						//alert("头像剪裁成功:" + data.fileName);
						$("#facediv").css({"display":"none"});
						$("#face").css({"display":"none"});
						$("#facediv").remove();
						$("#faceCropDiv").css({"display":"block"});
						$("#faceCrop").attr("src", fileHost + data['fileName'] );
					}else{
						alert("头像剪裁失败");
					}
				},
				error:function(data) {
					
				}
			});
		}
        </script>
        
        <script type="text/javascript" src="assets/js/style-switcher.js"></script>
        
    </body>
</html>