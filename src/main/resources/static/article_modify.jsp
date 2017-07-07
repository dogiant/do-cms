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
                                            <h5>文章编辑</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="article_input.do">文章录入</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="article_list.do">文章列表</a></li>
                                                            <li><a href="article_input.do">文章录入</a></li>
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
	  												    <form id="uploadPicAjaxForm" action="http://www.agertech.com.cn/upload/upload.do"  enctype="multipart/form-data"  method="post" >
	                                                    	<input id="uploadPicAjax" name="upload" type="file" onchange="uploadPicAjaxSubmit(this);"/>
		                                                </form>
		                                                <form id="uploadFileAjaxForm" action="http://www.agertech.com.cn/upload/upload.do"  enctype="multipart/form-data"  method="post" >
		                                                	<input type="hidden" name="isPic" value="false" />
	                                                    	<input id="uploadFileAjax" name="upload" type="file" onchange="uploadFileAjaxSubmit(this);"/>
		                                                </form>
	                                                </div>
	  												<div class="form-horizontal">
	                                                <s:form id="newsForm" namespace="/api" action="article_update" method="post" > 
	                                                <s:hidden  id="articleId" name="articleItem.id" value="%{resultMap.articleItem.id}"></s:hidden>
	                                                <div class="control-group">
	                                                    <label for="newsTitle" class="control-label">标题</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="newsTitle" name="articleItem.title" value="%{resultMap.articleItem.title}"  class="span6 input-tooltip"   data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <s:if test="%{articleCatList!=null && articleCatList.size()>0}">
		                                                <div class="control-group">
		                                                    <label for="name" class="control-label">文章栏目</label>
		                                                    <div class="controls">
		                                                    	<s:select name="articleItem.articleCat.catId" headerValue="请选择文章栏目" headerKey="%{null}" list="articleCatList" listKey="catId" listValue="catNameShow" emptyOption="false"  value="%{resultMap.articleItem.articleCat.catId}"></s:select>
		                                                    </div>
	                                                	</div>
                                                	</s:if>
	                                                <div class="control-group">
	                                                    <label for="newsSubtitle" class="control-label">副标题</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="newsSubtitle" name="articleItem.subtitle" value="%{resultMap.articleItem.subtitle}"  class="span6 input-tooltip"   data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="newsAuthor" class="control-label">作者</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="newsAuthor" name="articleItem.author" value="%{resultMap.articleItem.author}"  class="span6 input-tooltip"   data-placement="top" />（选填）
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="pass1" class="control-label">封面</label>
	                                                    <div class="controls with-tooltip">
	                                                            <div id="uploadTips">
									
                                                         		</div>
	                                                             <span class="btn btn-file">
                                                                    <span onclick="uploadPicAjax.click()">选择图片</span>
                                                                    <s:hidden id="picUrl" type="hidden" name="articleItem.picUrl"  value="%{resultMap.articleItem.picUrl}"  />
                                                                </span>
		                                                         
		                                                         <p class="js_cover upload_preview" ><img id="cover_preview"  src="http://file.agertech.com.cn<s:property value="%{resultMap.articleItem.picUrl}"/>">
																	<span><a id="removeCover" href="javascript:void(0);" >删除</a></span>
               													 </p>
               													 <!-- 
               													 <p class="frm_tips">
													                <label for="" class="frm_checkbox_label js_show_cover_pic selected">
													                    <i class="icon_checkbox"></i>
													                    <input type="checkbox" class="frm_checkbox" name="articleItem.coverIntoContent" value="true"<s:if test="%{resultMap.articleItem.coverIntoContent==1}"> checked="checked"</s:if>>
													                   封面图片显示在正文中 
													                </label>
													            </p>
													             -->
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="newsDigest" class="control-label">摘要</label>
	                                                    <div class="controls">
	                                                    	<textarea id="newsDigest" name="articleItem.digest" class="span6" ><s:property value="%{resultMap.articleItem.digest}"/></textarea>
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="newsContent" class="control-label">正文</label>
	                                                    <div class="controls">
	                                                    	<!--  <textarea id="cleditor"></textarea> -->
	                                                    	<!--  <textarea id="wysihtml5" class="span12"></textarea>-->
	                                                    	<div id="newsContent" class="summernote"></div>
	                                                    	<s:hidden id="articleItemContent" name="articleItem.content"  value="%{resultMap.articleItem.content}" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="newsSourceUrl" class="control-label">原文链接</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="newsSourceUrl" name="articleItem.sourceUrl"  value="%{resultMap.articleItem.sourceUrl}"  class="span6 input-tooltip"  data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="url" class="control-label">跳转链接</label>
	                                                    <div class="controls with-tooltip">
	                                                        <s:textfield id="url" name="articleItem.linkUrl"  value="%{resultMap.articleItem.linkUrl}"  class="span6 input-tooltip"  data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="url" class="control-label">文件上传</label>
	                                                    <div class="controls with-tooltip">
	                                                    	<span class="btn btn-file">
                                                                 <span onclick="uploadFileAjax.click()">选择文件</span>
                                                                 <s:hidden id="fileUrl" type="hidden" name="articleItem.fileUrl"  value="%{resultMap.articleItem.fileUrl}"  />
                                                            </span>
	                                                        <s:if test="%{resultMap.articleItem.fileUrl!=null}">
	                                                    	<span><a href="http://file.agertech.com.cn<s:property value="%{resultMap.articleItem.fileUrl}"/>" id="fileUrlShow">点击下载查看已上传文件</a></span>
	                                                        </s:if>
	                                                        <s:else>
	                                                        	<span><a href="#" id="fileUrlShow"></a></span>
	                                                        </s:else>
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
															<label class="control-label">是否推荐到首页</label>
															<div class="controls controls-row">
																		<input class="uniform" type="radio" name="articleItem.recommend" value="false" <s:if test="%{!resultMap.articleItem.recommend}"> checked="checked"</s:if>>不推荐
	                                                                    <input class="uniform" type="radio" name="articleItem.recommend" value="true" <s:if test="%{resultMap.articleItem.recommend}"> checked="checked"</s:if>>推荐        
														</div>
	                                               </div>
													<div class="form-actions">
															<input type="submit" value="提交" class="btn btn-primary">
	                                                </div>
	                                                </s:form>
	                                            </div>
                                            
                                            </div>
                                        	
                                        	<div class="span5">
	                                        	<div class="thumbnail" id="news_thumbnail">
	                                        	  <h4 id="news_title" ><s:property value="%{resultMap.articleItem.title}"/></h4>
	                                        	  <div id="cover_wrapper">
								                  	<img src="http://file.agertech.com.cn<s:property value="%{resultMap.articleItem.picUrl}"/>" id="news_cover">
								                  	<i>封面图片</i>                           	  
	                                        	  </div>
								                  <div class="caption">
								                    <p id="news_digest" >
								                    <s:property value="%{resultMap.articleItem.digest}"/>
								                    </p>
								                  </div>
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
        var maxsize = 2*1024*1024;//2M  
        var errMsg = "上传的文件不能超过2M！！！"; 
		var STATIC_FILE_HOST = "http://file.agertech.com.cn";
		function uploadPicAjaxSubmit(o) {
			
			var byteSize = o.files[0].size;
			if(byteSize>maxsize){
				return alert(errMsg);
			}
			
			var ajaxForm = $('#uploadPicAjaxForm'), $file = $(o).clone();
			
			//ajaxForm.append($file);
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"news",genThumbnails:true,"sizes":"360,null,_360;200,null,_200",upload:$file.val()},
				beforeSubmit : function() {
					$("#uploadTips").show();
					$("#uploadTips").html("正在上传封面，请稍候……");
				},
				success : function(data) {
					if (data.success) {
						$("#uploadTips").hide();
						$("#picUrl").val(data['fileName']);
						$("#news_cover").attr("src", STATIC_FILE_HOST + data['fileName']);
						$("#news_cover").css({"display":"block"});
						$("#cover_preview").attr("src", STATIC_FILE_HOST + data['fileName']);
						$(".upload_preview").css({"display":"block"});
					}
				},
				error : function(data) {

				}
			};
			ajaxForm.ajaxSubmit(options);
			return false;
		}
		
		function uploadFileAjaxSubmit(o) {
			var byteSize = o.files[0].size;
			if(byteSize>maxsize){
				return alert(errMsg);
			}
			var ajaxForm = $('#uploadFileAjaxForm'), $file = $(o).clone();
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"news","isPic":false,upload:$file.val()},
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
			 $('#newsDigest').autosize();
			 $('#newsContent').summernote({
				 	oninit: function() {
					    $("#newsContent").code('<s:property value="%{resultMap.articleItem.content}" escape="false"/>');
					},
				 	lang: 'zh-CN',
		            height: 200,
		            onImageUpload: function(files, editor, welEditable) {
		                sendFile(files[0], editor, welEditable);
		            },
		            onblur: function(e) {
		                var sHTML = $("#newsContent").code();
		                $("#articleItemContent").val(sHTML);
		            }
		      });
			//summernote图片上传
			function sendFile(file, editor, welEditable) {
		            data = new FormData();
		            data.append("upload", file);
		            data.append("returnType","json");
		            data.append("channel","news");
		            $.ajax({
		                data: data,
		                type: "post",
		                url: "http://www.agertech.com.cn/upload/upload.do",
		                cache: false,
		                contentType: false,
		                processData: false,
		                success: function(data) {
			                if(data.success){
				               var url = STATIC_FILE_HOST + data['fileName'];
				               editor.insertImage(welEditable, url);
				            }
		                }
		            });
			}

		$("#newsTitle").keyup(function(){
			$("#news_title").html($(this).val());
		});
		$("#newsDigest").keyup(function(){
			$("#news_digest").html($(this).val());
		});


		$("#removeCover").click(function(){
			$("#picUrl").val("");
			$("#news_cover").attr("src", "");
			$("#news_cover").css({"display":"none"});
			$("#cover_preview").attr("src", "");
			$(".upload_preview").css({"display":"none"});
		});
		  
		$("#newsForm").validate({
		        rules: {
		        	"articleItem.title":  {
						required: true
					},
					"articleItem.picUrl":  {
						required: true
					},
					"articleItem.digest":  {
						required: true
					}
				},
				messages: {
					"articleItem.title":{
						required:"请输入图文消息标题"
					},
					"articleItem.picUrl":{
						required:"请上传封面"
					},
					"articleItem.digest":{
						required:"请输入摘要"
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
					bootbox.alert('您的文章已成功录入' ,function(){
						message_box.show('将跳转到您的文章列表管理界面!','success');
						var  page_list = function(){
							location.href="article_list.do";
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