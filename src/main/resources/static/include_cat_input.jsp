<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <meta name="description" content="Bootstrap Responsive Admin Theme">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/style.css">
        <link type="text/css" rel="stylesheet" href="assets/css/calendar.css">
        <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/jasny-bootstrap-responsive.min.css" />
        
        <link rel="stylesheet" type="text/css" href="assets/css/imgareaselect/imgareaselect-default.css"/>
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-modal.css">
        
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
			<%@ include file="top_bar.jsp" %>
			<%@ include file="header.jsp" %>
			<%@ include file="left.jsp" %>

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
                                            <h5>微官网碎片栏目录入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="include_cat_list.do">微官网碎片栏目管理</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="include_cat_list.do">微官网碎片栏目列表</a></li>
                                                            <li><a href="include_cat_input.do">微官网碎片栏目录入</a></li>
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
                                        	
                                        				
                                        	<div class="form-horizontal">
                                                <s:form id="includeCatForm" namespace="/api" action="include_cat_add" method="post" > 
                                                <div class="control-group">
                                                    <label for="name" class="control-label">上级栏目</label>
                                                    <div class="controls">
                                                    	<s:select name="includeCat.parent.catId" headerValue="顶级栏目" headerKey="%{null}" list="includeCatList" listKey="catId" listValue="catName" emptyOption="false" ></s:select>
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
                                                    <label for="name" class="control-label">栏目名称</label>
                                                    <div class="controls">
                                                    	<s:textfield id="name" name="includeCat.catName" class="span6 input-tooltip"
                                                               data-original-title="请输入栏目名称" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
														<label class="control-label">栏目类型</label>
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="includeCat.catType" value="0" checked="checked">自由增设 
																	<input class="uniform" type="radio" name="includeCat.catType" value="1" >系统设定
														</div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="sortOrder" class="control-label">描述</label>
                                                    <div class="controls">
                                                    	<s:textfield id="catDesc" name="includeCat.catDesc" class="span6 input-tooltip"
                                                               data-original-title="请输入描述" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>

												<div class="form-actions">
														<input type="submit" value="提交" class="btn btn-primary">
                                                </div>
                                                </s:form>
                                            </div>
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
		<%@ include file="footer.jsp" %>
		<%@ include file="help_modal.jsp" %>

		<script type="text/javascript"  src="assets/js/vendor/jquery-1.9.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"><\/script>')</script>

        <script src="assets/js/vendor/jquery-migrate-1.1.1.min.js"></script>

		<script type="text/javascript"  src="assets/js/vendor/jquery-ui-1.10.0.custom.min.js"></script>
        <script>window.jQuery.ui || document.write('<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"><\/script>')</script>

        <script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.cookie.js"></script>

        <script type="text/javascript" src="assets/js/lib/bootstrap-progressbar.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.tablesorter.min.js"></script>
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
        <script type="text/javascript" src="assets/js/style-switcher.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.autosize-min.js"></script>
        <!--   头像剪裁脚本 -->
        <script src="assets/js/main.js"></script>   
        <script type="text/javascript" src="assets/js/lib/jquery.imgareaselect.pack.js"></script>
        
        <!-- 弹窗脚本  http://sandbox.runjs.cn/show/tmzcxbnx -->
        <script type="text/javascript" src="assets/js/lib/bootbox.js"></script>
		<script type="text/javascript" src="assets/js/lib/bootstrap-modal.js"></script>
		<script type="text/javascript" src="assets/js/lib/bootstrap-modalmana.js"></script>
		<script type="text/javascript" src="assets/js/lib/modal.manager.plugi.js"></script>	
		<script type="text/javascript" src="assets/js/lib/jshow.utils.js"></script>
		 
        <script type="text/javascript">
		$().ready(function() {
			 $("#includeCatForm").validate({
			        rules: {
			        	"includeCat.catName":  {
							required: true
						}
					},
					messages: {
						"includeCat.catName":{
							required:"请输入栏目名称"
						}
					},
			        errorClass: 'help-block',
			        errorElement: 'span',
			        highlight: function(element, errorClass, validClass) {
			            $(element).parents('.control-group').removeClass('success').addClass('error');
			        },
			        unhighlight: function(element, errorClass, validClass) {
			            $(element).parents('.control-group').removeClass('error').addClass('success');
			        },
		            submitHandler: function (form) {
		            	var options = {
		            	   //target: '#showmsg',
		            	   beforeSubmit:showStart,
		            	   success:showResponse,
		            	   dataType:  'json'
		            	};
			            
		            	$(form).ajaxSubmit(options);
	                  	return false;
		            }
				});
			 	function showStart(){
				    return true;
				}
			 	// post-submit callback 
			 	function showResponse(data)  { 
				 	if(data.success){
						bootbox.alert('碎片栏目成功录入' ,function(){
							message_box.show('将跳转到碎片栏目列表管理界面!','success');
							var  page_list = function(){
								location.href="include_cat_list.do";
							}
							window.setTimeout(page_list, 1000); 
				 		});
					}else{
						alert('发布失败: '+ '\n\n 状态码: \n' + data.resultInfo.returnCode + '\n\n 提示信息: \n' + data.resultInfo.returnMsg +  '.'); 
					}
			 	}
			});
        </script>

    </body>
</html>