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
                                            <h5>管理员账号授权录入</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="adminUser_list.do">管理员账号管理</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="adminUser_list.do">管理员账号管理</a></li>
                                                            <li><a href="adminUser_input.do">管理员账号授权录入</a></li>
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
                                                <s:form id="adminUserForm" namespace="/api" action="adminUser_add" method="post" > 
                                                <div class="control-group">
                                                	<s:hidden id="userId" name="adminUser.userId" ></s:hidden>
                                                    <label for="text1" class="control-label">用户名</label>
                                                    <div class="controls with-tooltip">
                                                        <s:textfield id="userName" name="adminUser.userName" class="span6 input-tooltip"
                                                               data-original-title="请输入管理员用户名" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="pass1" class="control-label">昵称</label>
                                                    <div class="controls with-tooltip">
                                                        <s:textfield id="nickname" name="adminUser.nickname" class="span6 input-tooltip" 
                                                               data-original-title="请输入管理员昵称" data-placement="top" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">初始密码</label>
                                                    <div class="controls">
                                                        <s:textfield type="text" id="password"  name="adminUser.password" class="span6 input-tooltip"  
                                                        data-original-title="请输入管理员初始密码" data-placement="bottom"/>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">电子邮箱</label>
                                                    <div class="controls">
                                                        <s:textfield type="text"  id="email"  name="adminUser.email" class="span6 input-tooltip"  
                                                        data-original-title="请输入管理员电子邮箱" data-placement="bottom" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
													<label class="control-label">手机</label>
													<div class="controls">
                                                        <s:textfield type="text"  id="phone"  name="adminUser.phone" class="span6 input-tooltip"  
                                                        data-original-title="请输入管理员电子邮箱" data-placement="bottom" />
                                                    </div>
                                               </div>
                                               
                                               <div class="control-group">
                                                    <label class="control-label">角色分配</label>
                                                    <div class="controls">
                                                    <s:iterator value="#roleList" id="role" status="st">
                                                        <label>
                                                            <input class="uniform" type="checkbox" name="roleIds" value="<s:property value="#role.roleId"/>"  <s:if test="%{#adminUser!=null && #adminUser.hasRole(#role.roleId)}">checked="checked"</s:if> > <s:property value="#role.roleName" />
                                                        </label>
                                                    </s:iterator>
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
		$().ready(function() {
			 $("#adminUserForm").validate({
			        rules: {
			        	"adminUser.userName":  {
							required: true,
							userNameCheck: true,
							minlength: 3,
		    				maxlength: 20,
		    				remote:{
	    						url : "checkAdminUserNameExists.do",
	    						cache : false,
	    						type: "post",
	    				        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
	    				        data: {
	    				        	userName: function() {
	    				            	return $("#userName").val();
	    				          	}
	    				        }
		    				}
						},
						"adminUser.nickname": {
							required: true,
	    					minlength: 2,
	    					nicknameMaxLength: true,
	    					nicknameCheck: true,
	    					remote: {
	    				        url: "checkAdminNicknameExists.do",
	    				        cache : false,
	    				        type: "post",
	    				        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
	    				        data: {
	    				        	nickname: function() {
	    				            	return $("#nickname").val();
	    				        	}
	    				    	}
	    					}
					    		
						},
						"adminUser.password": {
					    	required: true,
					    	regexPassword: true,
	    					rangelength:[6,18]
						}
					},
					messages: {
						"adminUser.userName":{
							required: "请输入用户名",
	    					userNameCheck: "用户名只允许包括小写英文字母、数字和下划线",
	    					minlength: "用户名至少3位字符",
	    					maxlength: "用户名不能超过20字符",
	    					remote: "用户名已存在"
						},
						"adminUser.nickname": {
							required: "请输入昵称",
	    					minlength: "昵称至少2个字",
	    					maxlength: "昵称不能超过16个字符",
	    					nicknameCheck: "昵称只能包括中文字、英文字母、数字和下划线",
	    					remote: "昵称已使用"
						},
						"adminUser.password": {
							required: "请输入密码",
	    					regexPassword:"6~18个字符(字母，数字，符号均可),区分大小写",
	    					rangelength:$.validator.format("密码长度必须在{0}-{1}个字符之间")
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
		            	   dataType:  'json'
		            	};
			            
		            	$(form).ajaxSubmit(options);
	                  	return false;
		            }
				});
			 
			 	function showStart(){
				    return true;
				}

			 	function showResponse(data) { 
				 	if(data.success){
						bootbox.alert('管理员账号授权录入成功!' ,function(){
							message_box.show('将跳转到管理员账号列表页!','success');
							var  page_list = function(){
								location.href="adminUser_list.do";
							}
							window.setTimeout(page_list, 3000); 
				 		});
					}else{
						alert('管理员账号授权录入失败: '+ '\n\n 状态码: \n' + data.resultInfo.returnCode + '\n\n 提示信息: \n' + data.resultInfo.returnMsg +  '.'); 
					}
			 	}
		});
		// 用户名字符验证       
        jQuery.validator.addMethod("userNameCheck", function(value, element) {       
           return this.optional(element) || /^[a-z0-9_]+$/.test(value);       
        }, "用户名只允许包括小写英文字母、数字和下划线");
        jQuery.validator.addMethod("nicknameMaxLength", function(value, element) { 
        	var b = false;
            var len=0;   
            for(var i=0;i<value.length;i++){
            	var c = value.charCodeAt(i) > 255 ? 2 : 1;
                len += c;   
            }
            if(len<=16){
            	b = true;
            }
            return this.optional(element) || b;       
         }, "昵称不能超过16个字符");
     	// 昵称字符验证       
        jQuery.validator.addMethod("nicknameCheck", function(value, element) {
           return this.optional(element) || /^[\u3007\u3400-\u4DB5\u4E00-\u9FCB\uE815-\uE864.@\w]+$/gi.test(value);       
        }, "昵称只能包括中文字、英文字母、数字和下划线");
		jQuery.validator.addMethod("regexPassword", function(value, element) {  
            return this.optional(element) || /^[\~\`\!\@#$\%\^\&\*\(\)\-\+\=\{\}\[\]\:\;\"\'\<\>\,\.\?\/\w]{6,18}$/.test(value);  
        }, "6~18个字符(字母，数字，符号均可),区分大小写");

        </script>

    </body>
</html>