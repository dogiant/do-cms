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
                                            <h5>微官网模板录入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="template_list.do">微官网模板管理</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="template_list.do">微官网模板列表</a></li>
                                                            <li><a href="template_input.do">微官网模板录入</a></li>
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
                                                <s:form id="templateForm" namespace="/api" action="template_add" method="post" > 
                                                <div class="control-group">
                                                    <label for="name" class="control-label">模板名称</label>
                                                    <div class="controls">
                                                    	<s:textfield id="templateName" name="template.templateName" class="span6 input-tooltip"
                                                               data-original-title="请输入模板名称" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
														<label class="control-label">模板类型</label>
														<!-- 1、概览页  2、列表页  3、正文页 -->
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="template.type" value="1" >概览页 
																	<input class="uniform" type="radio" name="template.type" value="2" >列表页
																	<input class="uniform" type="radio" name="template.type" value="3" >正文页
														</div>
                                                </div>
                                                <div class="control-group" id="keyControl">
                                                    <label for="key" class="control-label">生成文件路径</label>
                                                    <div class="controls">
                                                    	<s:textfield id="key" name="template.path" class="span6 input-tooltip"
                                                               data-original-title="请输入文件生成路径" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
														<label class="control-label">是否开放启用</label>
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="template.open" value="true" checked="checked">是 
																	<input class="uniform" type="radio" name="template.open" value="false" >否
														</div>
                                                </div>
                                                <div class="control-group">
														<label class="control-label">是否定时生成</label>
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="template.timingGenerate" value="true" >是 
																	<input class="uniform" type="radio" name="template.timingGenerate" value="false"  checked="checked">否
														</div>
                                                </div>
                                                <div class="control-group" id="keyControl">
                                                    <label for="key" class="control-label">模板文件名</label>
                                                    <div class="controls">
                                                    	<s:textfield id="key" name="template.templateFileName" class="span6 input-tooltip"
                                                               data-original-title="请输入生成文件名" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="memo" class="control-label">模板简介</label>
                                                    <div class="controls">
                                                    	<s:textfield id="keywords" name="template.memo" class="span6 input-tooltip"
                                                               data-original-title="请输入模板简介" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="sortOrder" class="control-label">模板源代码</label>
                                                    <div class="controls">
                                                               <textarea id="templateSource" name="template.templateSource" class="span6" ></textarea>
                                                    </div>
                                                </div>

												<div class="control-group">
													<label for="articleCats" class="control-label">关联涉及栏目</label>
													<!-- 
                                            		<div class="controls">
		                                                <div style="width: 45%; float: left;">
		                                                    <div class="input-append">
		                                                        <input id="box1Filter" type="text" placeholder="输入关键词筛选过滤">
		                                                        <button id="box1Clear" class="btn btn-warning" type="button">x</button>
		                                                    </div>
		                                                    <s:select id="box1View" multiple="multiple" style="width: 100%;" size="16"  list="articleCatList" listKey="catId" listValue="catName" ></s:select>

		                                                    <br/>
		
		                                                    <div class="alert alert-block">
		                                                        <span id="box1Counter" class="countLabel"></span>
		                                                        <select id="box1Storage"></select>
		                                                    </div>
		
		                                                </div>
		                                                <div style="width: 10%;float: left; text-align: center; padding-top: 6%;">
		                                                    <div class="btn-group btn-group-vertical" style="white-space: normal;">
		                                                        <button id="to2" type="button" class="btn btn-primary">
		                                                            <i class="icon-chevron-right"></i>
		                                                        </button>
		                                                        <button id="allTo2" type="button" class="btn btn-primary">
		                                                            <i class="icon-forward"></i>
		                                                        </button>
		                                                        <button id="allTo1" type="button" class="btn btn-danger">
		                                                            <i class="icon-backward"></i>
		                                                        </button>
		                                                        <button id="to1" type="button" class="btn btn-danger">
		                                                            <i class=" icon-chevron-left icon-white"></i>
		                                                        </button>
		                                                    </div>
		                                                </div>
		                                                <div style="width: 45%;float: left;">
		                                                    <div class="input-append">
		                                                        <input id="box2Filter" type="text" placeholder="输入关键词筛选过滤">
		                                                        <button id="box2Clear" class="btn btn-warning" type="button">x</button>
		                                                    </div>
		                                                    <select id="box2View" multiple="multiple" style="width: 100%;" size="16">
		                                                    </select><br/>
		
		                                                    <div class="alert alert-block">
		                                                        <span id="box2Counter" class="countLabel"></span>
		                                                        <select id="box2Storage"> </select>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                             -->
		                                             <div class="controls">
		                                             <!-- headerValue="无涉及文章栏目" headerKey="%{null}" -->
		                                              <s:select id="articleCat" name="articleCatIds" multiple="true" size="10"   list="articleCatList" listKey="catId" listValue="catNameShow" ></s:select>
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
        <!--  -->
        <script type="text/javascript" src="assets/js/lib/jquery.dualListBox-1.3.min.js"></script>
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
			$.configureBoxes();
			 $("#templateForm").validate({
			        rules: {
			        	"template.templateName":  {
							required: true
						},
						"template.type":  {
							required: true
						},
						"template.path":  {
							required: true
						},
						"template.templateFileName":  {
							required: true
						},
						"template.templateSource":  {
							required: true
						}
					},
					messages: {
						"template.templateName":{
							required:"请输入模板名称"
						},
						"template.type":  {
							required: "请选择模板类型"
						},
						"template.path":  {
							required: "请输入生成文件路径"
						},
						"template.templateFileName":  {
							required: "请输入模板文件名"
						},
						"template.templateSource":  {
							required: "请输入模板源代码"
						}
					},
			        errorClass: 'help-block',
			        errorElement: 'span',
			        errorPlacement: function(error, element) {  
					    error.appendTo(element.parent());  
					},
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
						bootbox.alert('微官网模板成功录入' ,function(){
							message_box.show('将跳转到微官网模板列表管理界面!','success');
							var  page_list = function(){
								location.href="template_list.do";
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