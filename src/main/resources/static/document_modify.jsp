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
        <title>星泰国际官网-管理控制台</title>
        <meta name="description" content="Bootstrap Responsive Admin Theme">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/style.css">
        <link type="text/css" rel="stylesheet" href="assets/css/style_singlenews.css">
        <link type="text/css" rel="stylesheet" href="assets/css/calendar.css">
        <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/jasny-bootstrap-responsive.min.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/wysiwyg-color.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-wysihtml5-0.0.2.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/jquery.cleditor.css"/>
        
        <!-- add summernote -->
		<link href="assets/css/summernote/summernote.css" rel="stylesheet">
        
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
                                            <h5>应用文档列表</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="document_input.do">应用文档录入</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                        	<li><a href="document_list.do">应用文档列表</a></li>
                                                        	<li><a href="document_input.do">应用文档录入</a></li>
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
                                        	<div class="span12">
                                        	
  												<div class="span7">
  													<div style="display: none;">
		                                                <form id="uploadFileAjaxForm" action="http://www.agertech.com.cn/upload/upload.do"  enctype="multipart/form-data"  method="post" >
		                                                	<input type="hidden" name="isPic" value="false" />
	                                                    	<input id="uploadFileAjax" name="upload" type="file" onchange="uploadFileAjaxSubmit(this);"/>
		                                                </form>
	                                                </div>
	  												<div class="form-horizontal">
	                                                <s:form id="newsForm" namespace="/api" action="document_update" method="post" > 
	                                                <s:hidden  id="articleId" name="document.id" value="%{resultMap.document.id}"></s:hidden>
	                                                <div class="control-group">
	                                                    <label for="newsTitle" class="control-label">标题</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="newsTitle" name="document.name" value="%{resultMap.document.name}"  class="span6 input-tooltip"   data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                
	                                                <div class="control-group">
	                                                    <label for="url" class="control-label">文件上传</label>
	                                                    <div class="controls with-tooltip">
	                                                    	<span class="btn btn-file">
                                                                 <span onclick="uploadFileAjax.click()">选择文件</span>
                                                                 <s:hidden id="fileUrl" type="hidden" name="document.fileUrl"  value="%{resultMap.document.fileUrl}"  />
                                                            </span>
	                                                        <s:if test="%{resultMap.document.fileUrl!=null}">
	                                                    	<span><a href="http://file.agertech.com.cn<s:property value="%{resultMap.document.fileUrl}"/>" id="fileUrlShow">点击下载查看已上传文件</a></span>
	                                                        </s:if>
	                                                        <s:else>
	                                                        	<span><a href="#" id="fileUrlShow"></a></span>
	                                                        </s:else>
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
        <script type="text/javascript" src="assets/js/lib/wysihtml5-0.4.0pre.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/bootstrap-wysihtml5-0.0.2.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.cleditor.js"></script>
        

		<script src="assets/js/lib/summernote.min.js"></script>
		<script src="assets/js/lib/summernote-zh-CN.js"></script>
        
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
        var maxsize = 5*1024*1024;//5M  
        var errMsg = "上传的文件不能超过5M！！！"; 
		var STATIC_FILE_HOST = "http://file.agertech.com.cn";
		
		function uploadFileAjaxSubmit(o) {
			var byteSize = o.files[0].size;
			if(byteSize>maxsize){
				return alert(errMsg);
			}
			var ajaxForm = $('#uploadFileAjaxForm'), $file = $(o).clone();
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"document","isPic":false,upload:$file.val()},
				beforeSubmit : function() {
					alert("开始上传文件");
				},
				success : function(data) {
					if (data.success) {
						$("#fileUrl").val(data['fileName']);
						$("#fileUrlShow").attr("href", STATIC_FILE_HOST + data['fileName']);
						$("#fileUrlShow").text(data['fileName']);
					}else{
						alert(data);
					}
				},
				error : function(data) {

				}
			};
			ajaxForm.ajaxSubmit(options);
			return false;
		}
		
		$().ready(function() {

		  
		$("#newsForm").validate({
				ignore: "",
		        rules: {
		        	"document.name":  {
						required: true
					},
					"document.fileUrl":  {
						required: true
					}
				},
				messages: {
					"document.name":{
						required:"请输入应用文档标题"
					},
					"document.fileUrl":{
						required:"请上传应用文档"
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
					bootbox.alert('您的应用文档已成功录入' ,function(){
						message_box.show('将跳转到您的应用文档列表管理界面!','success');
						var  page_list = function(){
							location.href="document_list.do";
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