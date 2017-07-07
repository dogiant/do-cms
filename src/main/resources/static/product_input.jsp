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
                                            <h5><s:property value="productCategory.cateName"/>产品录入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                	<s:if test="%{subProductCategorys!=null && subProductCategorys.size()>0}">
                                                    	<li><a href="javascript:void(0)"><s:property value="productCategory.cateName"/>产品列表</a></li>
                                                    </s:if>
                                                    <s:else>
                                                    	<li><a href="product_list.do?cat=<s:property value="productCategory.cateCode"/>"><s:property value="productCategory.cateName"/>产品列表</a></li>
                                                    </s:else>
                                                    <s:if test="%{subProductCategorys!=null && subProductCategorys.size()>0}">
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                                                                              
                                                        <ul class="dropdown-menu">
                                                        	<s:iterator id="cate" value="subProductCategorys">
                                                            <li><a href="product_list.do?cat=<s:property value="productCategory.cateCode"/>&subCat=<s:property value="#cate.cateCode" />"><s:property value="#cate.cateName" /></a></li>
                                                            </s:iterator>
                                                        </ul>
                                                    </li>
                                                    </s:if>
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
		                                                <form id="uploadExcelFileAjaxForm" action="http://www.agertech.com.cn/upload/upload.do"  enctype="multipart/form-data"  method="post" >
		                                                	<input type="hidden" name="isPic" value="false" />
	                                                    	<input id="uploadExcelFileAjax" name="upload" type="file" onchange="uploadExcelFileAjaxSubmit(this);"/>
		                                                </form>
		                                                <form id="uploadCompressFileAjaxForm" action="http://www.agertech.com.cn/upload/upload.do"  enctype="multipart/form-data"  method="post" >
		                                                	<input type="hidden" name="isPic" value="false" />
	                                                    	<input id="uploadCompressFileAjax" name="upload" type="file" onchange="uploadCompressFileAjaxSubmit(this);"/>
		                                                </form>
	                                                </div>
	  												<div class="form-horizontal">
	                                                <s:form id="newsForm" namespace="/api" action="product_add" method="post" > 
	                                                	<s:hidden name="cat" value="%{productCategory.cateCode}"></s:hidden>
	                                                <s:if test="%{subProductCategorys!=null && subProductCategorys.size()>0}">
		                                                <div class="control-group">
		                                                    <label for="name" class="control-label"><s:property value="productCategory.cateName"/>子分类</label>
		                                                    <div class="controls">
		                                                    	<s:select name="subCat" headerValue="请选择子分类" headerKey="%{null}" list="subProductCategorys" listKey="cateCode" listValue="cateName" emptyOption="false" ></s:select>
		                                                    </div>
	                                                	</div>
                                                	</s:if>
	                                                
	                                                <div class="control-group">
	                                                    <label for="url" class="control-label">产品EXCEL文件上传</label>
	                                                    <div class="controls with-tooltip">
	                                                    	<span class="btn btn-file">
                                                                 <span onclick="uploadExcelFileAjax.click()">选择文件</span>
                                                                 <input id="excelFileUrl" type="hidden" name="excelFileUrl" />
                                                            </span>
	                                                    
	                                                    	<span><a href="#" id="excelFileUrlShow"></a></span>
	                                                        
	                                                    </div>
	                                                </div>
	                                                
	                                                <div class="control-group">
	                                                    <label for="url" class="control-label">压缩文件包上传</label>
	                                                    <div class="controls with-tooltip">
	                                                    	<span class="btn btn-file">
                                                                 <span onclick="uploadCompressFileAjax.click()">选择文件</span>
                                                                 <input id="compressFileUrl" type="hidden" name="compressFileUrl" />
                                                            </span>
	                                                    
	                                                    	<span><a href="#" id="compressFileUrlShow"></a></span>
	                                                        
	                                                    </div>
	                                                </div>
	                                                
	                                                <div class="control-group">
															<label class="control-label">是否清空数据?</label>
															<div class="controls controls-row">
																		<input class="uniform" type="radio" name="clear" value="true">是
	                                                                    <input class="uniform" type="radio" name="clear" value="false" checked="checked">否       
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
        var excel_maxsize = 5*1024*1024;//5M
        var compress_maxsize = 20*1024*1024;//20M  
        var excel_maxsize_exceed_msg = "上传的文件不能超过5M！！！"; 
        var compress_maxsize_exceed_msg = "上传的文件不能超过20M！！！";
        
		var STATIC_FILE_HOST = "http://file.agertech.com.cn";
		
		//判断文件类型
		
		function uploadExcelFileAjaxSubmit(o) {
			var ajaxForm = $('#uploadExcelFileAjaxForm'), $file = $(o).clone();
			
			var byteSize = o.files[0].size;
			if(byteSize > excel_maxsize){
				return alert(excel_maxsize_exceed_msg);
			}
			
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"product","isPic":false,upload:$file.val()},
				beforeSubmit : function() {
					var fileName = o.files[0].name;
					var fileType = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
					if(".xls"==fileType || ".xlsx"==fileType){
						return true;
					}else{
						alert("请上传EXCEL文件.");
						return false;
					}
				},
				success : function(data) {
					if (data.success) {
						$("#excelFileUrl").val(data['fileName']);
						$("#excelFileUrlShow").attr("href", STATIC_FILE_HOST + data['fileName']);
						$("#excelFileUrlShow").text(data['fileName']);
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
		
		function uploadCompressFileAjaxSubmit(o) {
			var ajaxForm = $('#uploadCompressFileAjaxForm'), $file = $(o).clone();
			
			var byteSize = o.files[0].size;
			if(byteSize > compress_maxsize){
				return alert(compress_maxsize_exceed_msg);
			}
			
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"product","isPic":false,upload:$file.val()},
				beforeSubmit : function() {
					var fileName = o.files[0].name;
					var fileType = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
					if(".zip"==fileType || ".rar"==fileType){
						return true;
					}else{
						alert("请上传压缩文件包.");
						return false;
					}
				},
				success : function(data) {
					if (data.success) {
						$("#compressFileUrl").val(data['fileName']);
						$("#compressFileUrlShow").attr("href", STATIC_FILE_HOST + data['fileName']);
						$("#compressFileUrlShow").text(data['fileName']);
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
		        	"excelFileUrl":  {
						required: true
					},
					"subCat":  {
						required: true
					}
				},
				messages: {
					"excelFileUrl":{
						required:"请上传经过整理的产品EXCEL文件"
					},
					"subCat":  {
						required: "请选择子分类"
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
	            	   beforeSubmit:showStart,
	            	   success:showResponse,
	            	   dataType:'json'
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
					bootbox.alert('您的产品已成功录入' ,function(){
						/*message_box.show('将跳转到您的产品列表界面!','success');
						 var  page_list = function(){
							location.href="product_list.do?cat="+data.cat+"&subCat="+data.subCat;
						} 
						window.setTimeout(page_list, 1000); 
						*/
			 		});
				}else{
					alert('发布失败: '+ '\n\n 状态码: \n' + data.resultInfo.returnCode + '\n\n 提示信息: \n' + data.resultInfo.returnMsg +  '.'); 
				}
		 	}
		});
      </script>

    </body>
</html>