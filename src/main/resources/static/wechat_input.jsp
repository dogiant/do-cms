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
                                            <h5>我的公众号接入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="wechat_list.do">我的公众号管理</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="wechat_list.do">我的公众号管理</a></li>
                                                            <li><a href="wechat_input.do">我的公众号接入</a></li>
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
                                            <div class="control-group">
                                                    <label class="control-label">头像上传</label>
                                                    <div class="controls">
                                                        <div class="fileupload " data-provides="fileupload">
                                                        	<div id="thumbnailPreview" style="float:left;">
	                                                             <div id="faceThumbnailDiv" class="thumbnail" style="overflow:hidden; width: 150px; height: 150px; position: relative; padding:0px; margin-right: 10px">
	                                                             <s:if test="%{resultMap.weChat!=null}">
	                                                             	<img id="faceThumbnail"  style="position: relative; max-width:auto; max-height:auto" src='http://file.dogiant.com<s:property value="resultMap.weChat.headImg"/>' />
	                                                             </s:if>
	                                                             <s:else>
	                                                             	<img id="faceThumbnail"  style="position: relative; max-width:auto; max-height:auto"  />
	                                                             </s:else>
	                                                            </div>
                                                            </div>
                                                        	<div id="facediv"  style="display:none; z-index:100;">  
																<img id="face" />  
															</div>
                                                            <div>
	                                                            <form id="cropForm">
                                                            		<input type="hidden" name="x1" value="0" />  
	    															<input type="hidden" name="y1" value="0" />  
                                                            		<input type="hidden" name="x2" value="100" />  
                                                            		<input type="hidden" name="y2" value="100" />
	                                                            </form>
                                                            </div>
                                                            <div id="uploadTips">

                                                         	</div>
                                                         	<form id="uploadAjaxForm" action="http://www.dogiant.com/upload/upload.do"  enctype="multipart/form-data"  method="post">
	                                                             <span class="btn btn-file">
                                                                    <span onclick="uploadAjax.click()">选择图片</span>
                                                                    <input id="uploadAjax" name="upload" type="file" onchange="uploadAjaxSubmit(this);"/>
                                                                </span>
	                                                         </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <s:form id="weChatForm" namespace="/api" action="wechat_add" method="post" > 
                                                <div class="control-group">
                                                	<s:hidden  id="headImg" name="weChat.headImg" ></s:hidden>
                                                    <label for="text1" class="control-label">公众号名称</label>
                                                    <div class="controls with-tooltip">
                                                        <s:textfield id="name" name="weChat.name" class="span6 input-tooltip"
                                                               data-original-title="请输入您的公众号名称" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="pass1" class="control-label">登录邮箱</label>

                                                    <div class="controls with-tooltip">
                                                        <s:textfield id="email" name="weChat.email" class="span6 input-tooltip" 
                                                               data-original-title="请输入您的微信公众号登录邮箱" data-placement="top" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">原始ID</label>

                                                    <div class="controls">
                                                        <s:textfield type="text" id="originId"  name="weChat.originId" class="span6 input-tooltip"  
                                                        data-original-title="请输入您的微信公众号原始ID" data-placement="bottom"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">微信号</label>

                                                    <div class="controls">
                                                        <s:textfield type="text"  id="weChatId"  name="weChat.weChatId" class="span6 input-tooltip"  
                                                        data-original-title="请输入您的微信号" data-placement="bottom" />
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
														<label class="control-label">公众号类型</label>
														<div class="controls controls-row">
                                                        	<input class="uniform" type="radio" name="weChat.type"  value="1"  checked="checked">订阅号
                                                        	<input class="uniform" type="radio" name="weChat.type"  value="2" >服务号
                                                         	<!-- <s:radio class="uniform" name="weChat.type"  list="weChatType"  value="%{resultMap.weChat.type!=null?#resultMap.weChat.type:1}" /> -->
														</div>
                                               </div>
                                               
                                               <div class="control-group">
														<label class="control-label">认证情况</label>
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="weChat.isCertified" value="false" checked="checked">未认证
                                                                    <input class="uniform" type="radio" name="weChat.isCertified" value="true" >已认证        
													</div>
                                               </div>

                                                <div class="control-group">
                                                    <label for="text2" class="control-label">AppId</label>

                                                    <div class="controls">
                                                        <s:textfield class="span6"  id="location"   name="weChat.appId"  placeholder="请输入开发者凭据 AppId"  value="%{resultMap.weChat.appId}"/>
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
                                                    <label for="text2" class="control-label">AppSecret</label>

                                                    <div class="controls">
                                                        <s:textfield class="span6"  id="location"   name="weChat.appSecret"  placeholder="请输入开发者凭据 AppSecret"  value="%{resultMap.weChat.appSecret}"/>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="text2" class="control-label">地区</label>

                                                    <div class="controls">
                                                        <s:textfield class="span6"  id="location"   name="weChat.location"  placeholder="请输入所在地区"  value="%{resultMap.weChat.location}"/>
                                                    </div>
                                                </div>
                                                
                                               <div class="control-group">
                                                    <label for="text2" class="control-label">功能介绍</label>

                                                    <div class="controls">
                                                        <s:textfield class="span6"  id="features"  name="weChat.features"  placeholder="请输入功能介绍" value="%{resultMap.weChat.features}"/>
                                                    </div>
                                                </div>
                                                <!-- 
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
                                                 -->
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
		var STATIC_FILE_HOST = "http://file.dogiant.com";
		function uploadAjaxSubmit(o) {
			var ajaxForm = $('#uploadAjaxForm'), $file = $(o).clone();
			//ajaxForm.append($file);
			var options = {
				dataType : "json",
				data : {returnType:"json","channel":"avatar",upload:$file.val()},
				beforeSubmit : function() {
					//alert("开始上传");
					$("#uploadTips").show();
					$("#uploadTips").html("正在生成预览图，请稍候……");
					$("#uploadAjaxForm").hide();
				},
				success : function(data) {
					if (data.success) {
						$("#uploadTips").hide();
						$("#facediv").css({"display":"block"});
						$("#face").attr("src", STATIC_FILE_HOST + data['fileName'] );
						$("#face").css({"display":"block"});
						$("#facediv").show();
						$("#faceThumbnail").attr("src", STATIC_FILE_HOST + data['fileName'] );
						$('<div><button id="btnSubmit">提交头像</button></div>')
				        .click(function (){
				        	cutImage(data['fileName']);
				        }).insertAfter($('#faceThumbnailDiv'));
			        	$(".imgareaselect-outer").show();
						$(".imgareaselect-selection").parent().show();
					    $('#face').imgAreaSelect({
							maxWidth: 500, maxHeight: 500,
							minWidth: 150, minHeight:150,
							x1:100,y1:100,x2:250,y2:250,
					        aspectRatio: '1:1', 
							onSelectChange: function (img, selection) {
								var scaleX = 150 / (selection.width || 1);
								var scaleY = 150 / (selection.height || 1);
							  	var w = img.width;
							  	var h = img.height;
								$('#faceThumbnailDiv > img').css({
									width: Math.round(scaleX * img.width) + 'px',
									height: Math.round(scaleY * img.height) + 'px',
									marginLeft: '-' + Math.round(scaleX * selection.x1) + 'px',
									marginTop: '-' + Math.round(scaleY * selection.y1) + 'px',
									maxWidth: w+'px',
									maxHeight: h+'px'
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
				url:"http://www.dogiant.com/upload/upload.do",
				dateType:"jsonp",
				data:{"x1":$('input[name="x1"]').val(),
				"x2":$('input[name="x2"]').val(),
				"y1":$('input[name="y1"]').val(),
				"y2":$('input[name="y2"]').val(),
				"channel":"avatar","imgAreaSelect":true,"imgPath":path},
				success : function(data) {
					if(data.success){
						//alert("头像剪裁成功:" + data.fileName);
						$("#btnSubmit").hide();
						$("#facediv").css({"display":"none"});
						$("#face").css({"display":"none"});
						$("#facediv").hide();
						$(".imgareaselect-outer").hide();
						$(".imgareaselect-selection").parent().hide();
						//$("#uploadAjaxForm").show();
						$('<div><button id="changeFace">更换头像</button></div>')
				        .click(function (){
				        	$("#uploadAjax").click();
				        	$(this).hide();
				        }).insertAfter($('#faceThumbnailDiv'));
						$("#headImg").val(data.fileName);
						$("#faceCropDiv").css({"display":"block"});
						$("#faceCrop").attr("src", STATIC_FILE_HOST + data['fileName'] );
					}else{
						alert("头像剪裁失败!");
					}
				},
				error:function(data) {
					
				}
			});
		}

		$().ready(function() {
			 $("#weChatForm").validate({
			        rules: {
			        	"weChat.name":  {
							required: true,
							remote: "wechat_checkWeChatNameExist.do"
						},
						"weChat.email": {
					    	required: true,
					    	email: true,
					    	remote: "wechat_checkWeChatEmailExist.do"
						},
						"weChat.originId": {
					    	required: true,
					    	remote: "wechat_checkWeChatOriginIdExist.do"
						},
						"weChat.weChatId": {
							required: true,
					    	remote: "wechat_checkWeChatIdExist.do"
						},
						"weChat.type": {
							required: true
						},
						"weChat.isCertified": {
							required: true
						}
					},
					messages: {
						"weChat.name":{
							required:"请输入微信名称",
							remote:"此微信名称已经存在"
						},
						"weChat.email": {
							required: "请输入微信公众号Email地址",
							email: "请输入正确的Email地址",
							remote:"此Email地址已经存在"
						},
						"weChat.originId": {
							required: "请输入微信公众号原始ID",
							remote:"此原始ID已经存在"
						},
						"weChat.weChatId": {
							required: "请输入确认微信号",
							remote:"此微信号已经存在"
						},
						"weChat.type": {
							required: "请选择公众号类型"
						},
						"weChat.isCertified": {
							isCertified: "请选择公众号是否已通过认证"
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
						bootbox.alert('您的微信:'+ data.weChat.name+'('+data.weChat.weChatId +')' +'已经成功接入本系统!'+ '<br/>' +
							 	'请登录微信公众平台: <a href=https://mp.weixin.qq.com/ target=_blank>https://mp.weixin.qq.com/</a>  开发者中心'+ '<br/>' 
							 	+ 'URL:     http://www.dogiant.com/WeChatServlet?wid=' + data.weChat.weChatId  +'<br/>'
							 	+ 'Token:  ' + data.weChat.token + '<br/>' ,function(){
							message_box.show('感谢使用大道之行也微信亿达，将跳转到您的公众号列表管理界面!','success');
							var  page_list = function(){
								location.href="wechat_list.do";
							}
							window.setTimeout(page_list, 3000); 
				 		});
					 	
						/*	alert('您的微信:'+ data.weChat.name+'('+data.weChat.weChatId +')' +'已经成功接入本系统!'+ '\n\n' +
							 	'请登录微信公众平台: https://mp.weixin.qq.com/  功能==>高级功能==>开启开发模式'+ '\n\n' 
							 	+ '输入URL: http://www.dogiant.com/WeChatServlet?wid=' + data.weChat.weChatId  + '\n\n' 
							 	+ '输入Token:' + data.weChat.token + '\n\n' ); */
					}else{
						alert('接入失败: '+ '\n\n 状态码: \n' + data.resultInfo.returnCode + '\n\n 提示信息: \n' + data.resultInfo.returnMsg +  '.'); 
					}
			 	}
			});
		
        </script>

    </body>
</html>