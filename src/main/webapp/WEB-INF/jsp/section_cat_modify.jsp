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
                                            <h5>微官网碎片栏目修改</h5>
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
                                                <s:form id="includeCatForm" namespace="/api" action="include_cat_update" method="post" > 
                                                <s:hidden  id="catId" name="includeCat.catId" value="%{resultMap.includeCat.catId}"></s:hidden>
                                                <div class="control-group">
                                                    <label for="name" class="control-label">上级栏目</label>
                                                    <div class="controls">
                                                    	<s:select name="includeCat.parent.catId" headerValue="顶级栏目" headerKey="%{null}" list="includeCatList" listKey="catId" listValue="catName" emptyOption="false" value="%{resultMap.includeCat.parent.id}"></s:select>
                                                    </div>
                                                </div>
                                                
                                                <div class="control-group">
                                                    <label for="name" class="control-label">栏目名称</label>
                                                    <div class="controls">
                                                    	<s:textfield id="name" name="includeCat.catName" value="%{resultMap.includeCat.catName}" class="span6 input-tooltip"
                                                               data-original-title="请输入栏目名称" data-placement="bottom" ></s:textfield>
                                                    </div>
                                                </div>
                                                <div class="control-group">
														<label class="control-label">栏目类型</label>
														<div class="controls controls-row">
																	<input class="uniform" type="radio" name="includeCat.catType" value="0"  <s:if test='%{resultMap.includeCat.catType==0}'>checked="checked"</s:if>>自由增设 
																	<input class="uniform" type="radio" name="includeCat.catType" value="1"  <s:if test='%{resultMap.includeCat.catType==1}'>checked="checked"</s:if>>系统设定
														</div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="sortOrder" class="control-label">描述</label>
                                                    <div class="controls">
                                                    	<s:textfield id="catDesc" name="includeCat.catDesc"  value="%{resultMap.includeCat.catDesc}" class="span6 input-tooltip"
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
		<%@ include file="common/footer.jsp" %>
		<%@ include file="common/help_modal.jsp" %>

		<%@ include file="common/footer_script.jsp" %>
		 
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