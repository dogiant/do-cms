<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7">   <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8">          <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9">                 <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js">                        <!--<![endif]-->
    <head>
		<%@ include file="common/html_head.jsp" %>
    </head>
    <body>
        <!-- BEGIN WRAP -->
        <div id="wrap">
			<%@ include file="common/top_bar.jsp" %>
			<%@ include file="common/header.jsp" %>
			<%@ include file="common/left.jsp" %>

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
                                            <h5>文章录入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="article_list">文章列表</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="article_list">文章列表</a></li>
                                                            <li><a href="article_input">文章录入</a></li>
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
	  												    <form id="uploadPicAjaxForm" action="/upload/api"  enctype="multipart/form-data"  method="post" >
	                                                    	<input id="uploadPicAjax" name="uploads" type="file" onchange="uploadPicAjaxSubmit(this);"/>
		                                                </form>
		                                                <form id="uploadFileAjaxForm" action="/upload/api"  enctype="multipart/form-data"  method="post" >
		                                                	<input type="hidden" name="isPic" value="false" />
	                                                    	<input id="uploadFileAjax" name="uploads" type="file" onchange="uploadFileAjaxSubmit(this);"/>
		                                                </form>
	                                                </div>
	  												<div class="form-horizontal">
	  												<form id="articleForm" action="api/article/add" method="post" > 
	                                                <div class="control-group">
	                                                    <label for="articleTitle" class="control-label">标题</label>
	                                                    <div class="controls with-tooltip">
	                                                        <input type="text" id="articleTitle" name="title" class="span6 input-tooltip" data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <c:if test="${articleCatList!=null && articleCatList.size()>0 }">
		                                                <div class="control-group">
		                                                    <label for="name" class="control-label">文章栏目</label>
		                                                    <select name="articleCat.catId">
			                                                    <c:forEach items="${articleCats}" var ="obj" varStatus="status">
																	<option value="${obj.catId}">${obj.catNameShow }</option>
																</c:forEach>
															</select>
	                                                	</div>
                                                	</c:if>
	                                                <div class="control-group">
	                                                    <label for="newsSubtitle" class="control-label">副标题</label>
	                                                    <div class="controls with-tooltip">
	                                                        <input type="text" id="articleSubtitle" name="subtitle" class="span6 input-tooltip"   data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="newsAuthor" class="control-label">作者</label>
	                                                    <div class="controls with-tooltip">
	                                                        <input type="text" id="articleAuthor" name="author" class="span6 input-tooltip"   data-placement="top" />（选填）
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="coverPicUrl" class="control-label">封面</label>
	                                                    <div class="controls with-tooltip">
	                                                            <div id="uploadTips">
									
                                                         		</div>
	                                                             <span class="btn btn-file">
                                                                    <span onclick="uploadPicAjax.click()">选择图片</span>
                                                                    <input id="coverPicUrl" type="hidden" name="coverPicUrl" />
                                                                </span>
		                                                         
		                                                         <p class="js_cover upload_preview" style="display: none;"><img id="cover_preview"  src="">
																	<span><a id="removeCover" href="javascript:void(0);" >删除</a></span>
               													 </p>

               													 <p class="frm_tips">
													                <label for="" class="frm_checkbox_label js_show_cover_pic selected">
													                    <i class="icon_checkbox"></i>
													                    <input type="checkbox" class="frm_checkbox" name="coverIntoContent" value="true">
													                   封面图片显示在正文中 
													                </label>
													            </p>
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="articleDigest" class="control-label">摘要</label>
	                                                    <div class="controls">
	                                                    	<textarea id="articleDigest" name="digest" class="span6" ></textarea>
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="articleContent" class="control-label">正文</label>
	                                                    <div class="controls">
	                                                    	<div id="articleContent" class="summernote"></div>
	                                                    	<input type="hidden" id="articleItemContent" name="content"></input>
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="articleSourceUrl" class="control-label">原文链接</label>
	                                                    <div class="controls with-tooltip">
	                                                        <input type="text" id="articleSourceUrl" name="sourceUrl" class="span6 input-tooltip" data-placement="top" />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="linkUrl" class="control-label">链接地址</label>
	                                                    <div class="controls with-tooltip">
	                                                        <input type="text" id="linkUrl" name="linkUrl" class="span6 input-tooltip" data-placement="top"  />
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
	                                                    <label for="fileUrl" class="control-label">文件上传</label>
	                                                    <div class="controls with-tooltip">
	                                                    	<span class="btn btn-file">
                                                                 <span onclick="uploadFileAjax.click()">选择文件</span>
                                                                 <input id="fileUrl" type="hidden" name="fileUrl" />
                                                            </span>
	                                                    
	                                                    	<span><a href="#" id="fileUrlShow"></a></span>
	                                                        
	                                                    </div>
	                                                </div>
	                                                <div class="control-group">
														<label class="control-label">是否推荐首页</label>
														<div class="controls controls-row">
															<input class="uniform" type="radio" name="recommend" value="true" checked="checked">推荐
	                                                        <input class="uniform" type="radio" name="recommend" value="false" >不推荐       
														</div>
	                                               </div>
													<div class="form-actions">
														<input type="submit" value="提交" class="btn btn-primary">
	                                                </div>
	                                                </form>
	                                            </div>
                                            
                                            </div>
                                        	
                                        	<div class="span5">
	                                        	<div class="thumbnail" id="news_thumbnail">
	                                        	  <h4 id="news_title" >标题</h4>
	                                        	  <div id="cover_wrapper">
								                  	<img src="" id="news_cover" style="display:none;">
								                  	<i>封面图片</i>                           	  
	                                        	  </div>
								                  <div class="caption">
								                    <p id="news_digest" >
								                    摘要文字
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
		<%@ include file="common/footer.jsp" %>
		<%@ include file="common/help_modal.jsp" %>

		<%@ include file="common/footer_script.jsp" %>
		
		 
        <script type="text/javascript">
        
        var maxsize = 2*1024*1024;//2M  
        var errMsg = "上传的文件不能超过2M！！！";  
/*      var tipMsg = "您的浏览器暂不支持计算上传文件的大小，确保上传文件不要超过2M，建议使用IE、FireFox、Chrome浏览器。";  
        var  browserCfg = {};  
        var ua = window.navigator.userAgent;  
        if (ua.indexOf("MSIE")>=1){  
            browserCfg.ie = true;  
        }else if(ua.indexOf("Firefox")>=1){  
            browserCfg.firefox = true;  
        }else if(ua.indexOf("Chrome")>=1){  
            browserCfg.chrome = true;  
        }  
        function checkfile(){  
            try{  
                var obj_file = document.getElementById("fileuploade");  
                if(obj_file.value==""){  
                    alert("请先选择上传文件");  
                    return;  
                }  
                var filesize = 0;  
                if(browserCfg.firefox || browserCfg.chrome ){  
                    filesize = obj_file.files[0].size;  
                }else if(browserCfg.ie){  
                    var obj_img = document.getElementById('tempimg');  
                    obj_img.dynsrc=obj_file.value;  
                    filesize = obj_img.fileSize;  
                }else{  
                    alert(tipMsg);  
                return;  
                }  
                if(filesize==-1){  
                    alert(tipMsg);  
                    return;  
                }else if(filesize>maxsize){  
                    alert(errMsg);  
                    return;  
                }else{  
                    alert("文件大小符合要求");  
                    return;  
                }  
            }catch(e){  
                alert(e);  
            }  
        }   */
        
		var STATIC_FILE_HOST = "${fileHost}";
		function uploadPicAjaxSubmit(o) {
			var ajaxForm = $('#uploadPicAjaxForm'), $file = $(o).clone();
			
			var byteSize = o.files[0].size;
			if(byteSize>maxsize){
				return alert(errMsg);
			}
			
			//ajaxForm.append($file);
			var options = {
				dataType : "json",
				data : {type:"json","channel":"news",genThumbnails:true,"sizes":"360,null,_360;200,null,_200",uploads:$file.val()},
				beforeSubmit : function() {
					$("#uploadTips").show();
					$("#uploadTips").html("正在上传封面，请稍候……");
				},
				success : function(data) {
					if (data.success) {
						$("#uploadTips").hide();
						$("#coverPicUrl").val(data.result[0]);
						$("#news_cover").attr("src", STATIC_FILE_HOST + data.result[0]);
						$("#news_cover").css({"display":"block"});
						$("#cover_preview").attr("src", STATIC_FILE_HOST + data.result[0]);
						$(".upload_preview").css({"display":"block"});
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
		
		function uploadFileAjaxSubmit(o) {
			var ajaxForm = $('#uploadFileAjaxForm'), $file = $(o).clone();
			
			var byteSize = o.files[0].size;
			if(byteSize>maxsize){
				return alert(errMsg);
			}
			
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"news","isPic":false,uploads:$file.val()},
				beforeSubmit : function() {
					alert("开始上传文件");
				},
				success : function(data) {
					if (data.success) {
						$("#fileUrl").val(data.result[0]);
						$("#fileUrlShow").attr("href", STATIC_FILE_HOST + data.result[0]);
						$("#fileUrlShow").text(data.result[0]);
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
			 $('#articleDigest').autosize();
			 $('#articleContent').summernote({
				 	lang: 'zh-CN',
		            height: 200,
		            onImageUpload: function(files, editor, welEditable) {
		                sendFile(files[0], editor, welEditable);
		            },
		            onblur: function(e) {
		                var sHTML = $("#articleContent").code();
		                $("#articleItemContent").val(sHTML);
		            }
		      });
			//summernote图片上传
			function sendFile(file, editor, welEditable) {
					var formData  = new FormData();
					formData.append("uploads", file);
					formData.append("type","json");
					formData.append("channel","news");
		            $.ajax({
		                data: formData,
		                type: "post",
		                url: "/upload/api",
		                dataType : "json",
		                async: false,  
		                cache: false,
		                contentType: false,
		                processData: false,
		                success: function(data) {
			                if(data.success){
				               var url = STATIC_FILE_HOST + data.result[0];
				               editor.insertImage(welEditable, url);
				            }
		                },  
		                error: function (returndata) {  
		                    alert(returndata);  
		                }  
		            });
			}

		$("#articleTitle").keyup(function(){
			$("#news_title").html($(this).val());
		});
		$("#articleDigest").keyup(function(){
			$("#news_digest").html($(this).val());
		});


		$("#removeCover").click(function(){
			$("#coverPicUrl").val("");
			$("#news_cover").attr("src", "");
			$("#news_cover").css({"display":"none"});
			$("#cover_preview").attr("src", "");
			$(".upload_preview").css({"display":"none"});
		});
		  
		$("#articleForm").validate({
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