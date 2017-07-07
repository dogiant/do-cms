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
        
        <link type="text/css" rel="stylesheet" href="assets/css/DT_bootstrap.css"/>
        <link rel="stylesheet" href="assets/css/responsive-tables.css">
        
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
                        	<!--Begin Datatables-->
							<div class="row-fluid">
                                <div class="span12">
                                    <div class="box dark">
                                        <header>
                                            <div class="icons"><i class="icon-edit"></i></div>
                                            <h5>我的自定义菜单</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="menu_input.do">自定义菜单录入</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="menu_list.do">我的自定义菜单</a></li>
                                                            <li><a href="menu_input.do">自定义菜单录入</a></li>
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
                                        <div  id="div-1"  class="accordion-body collapse in body">
                                            <table id="menuDataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                    	<th>菜单名称</th>
                                                        <th>类型</th>
                                                        <th>KEY/URL</th>
                                                        <th>排序值</th>
                                                        <th>创建时间</th>
                                                        <th>修改时间</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <s:iterator value="%{resultMap.resultList}" id="customMenu"> 
												    <tr dataid=<s:property value="#customMenu.id" />>
												    	<td><img src="assets/img/menu_arrow.gif" width="9" height="9" border="0" style="margin-left:<s:property value="#customMenu.level"/>em" />&nbsp;<s:property value="#customMenu.name" /></td>
                                                    	<td><s:property value="#customMenu.type" /></td>
                                                    	<s:if test="%{#customMenu.type=='click'}">
                                                        <td><s:property value="#customMenu.key" /></td>
                                                        </s:if>
                                                        <s:else>
                                                        <td><s:property value="#customMenu.url" /></td>
                                                        </s:else>
                                                        <td><s:property value="#customMenu.sortOrder" /></td>
                                                        <td><s:date name="#customMenu.ctime"  format="yy-MM-dd" /></td>
                                                        <td><s:date name="#customMenu.mtime"  format="yy-MM-dd HH:mm" /></td>
                                                        <td>
                                                        	<button class="btn edit"  dataid=<s:property value="#customMenu.id" />><i class="icon-edit" ></i></button>
                                                            <button class="btn btn-danger remove" dataid=<s:property value="#customMenu.id" />><i class="icon-remove" ></i></button>
                                                        </td>
                                                    </tr>
												</s:iterator>
                                                </tbody>
                                            </table>
                                            <button id="syncMenuButton" type="button" class="btn btn-info">同步微信自定义菜单</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End Datatables-->

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

		<script type="text/javascript"  src="assets/js/vendor/jquery-ui-1.10.0.custom.min.js"></script>
        <script>window.jQuery.ui || document.write('<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"><\/script>')</script>

        <script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.cookie.js"></script>

        <script type="text/javascript" src="assets/js/lib/jquery.tablesorter.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/js/lib/DT_bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/lib/responsive-tables.js"></script>
        
        <!-- 弹窗脚本  http://sandbox.runjs.cn/show/tmzcxbnx -->
        <script type="text/javascript" src="assets/js/lib/bootbox.js"></script>
		<script type="text/javascript" src="assets/js/lib/bootstrap-modal.js"></script>
		<script type="text/javascript" src="assets/js/lib/bootstrap-modalmana.js"></script>
		<script type="text/javascript" src="assets/js/lib/modal.manager.plugi.js"></script>	
		<script type="text/javascript" src="assets/js/lib/jshow.utils.js"></script>
        
        <script type="text/javascript" src="assets/js/style-switcher.js"></script>
        <script type="text/javascript" src="assets/js/main.js"></script>   
        
        <script type="text/javascript">
            $(function() {

                /*----------- END menuDataTable CODE -------------------------*/
                $('#menuDataTable tbody').on( 'click', 'button.view', function () {
                	$.ajax({
                		type:'post',
                		url:'api/menu_get.do',
                		data:{id:$(this).attr("dataid")},
                		dataType:'json',
                		success:function(data){
                			if(data.success){
                    			//alert(data.text.content);
                    			bootbox.alert(data.text.content);                   			
                    		}
                		},
                		error:function(){
                			alert("读取出错!");
                		}
                	});
                }); 
            	
                $('#menuDataTable tbody').on( 'click', 'button.edit', function () {
                    location.href = "menu_modify.do?customMenu.id="+$(this).attr("dataid");
                }); 
                $('#menuDataTable tbody').on( 'click', 'button.remove', function () {
                    var idsvalue = $(this).attr("dataid");
        			bootbox.confirm("您确定要删除操作吗?", function(result) {
            			if(result){
                        	$.ajax({
                        		type:'post',
                        		url:'api/menu_delete.do',
                        		data:{ids:idsvalue},
                        		dataType:'json',
                        		beforeSend: function(){
                        		},
                        		success:function(data){
                        			if(data.success){
                            			alert("删除成功");
                        				window.location.reload(); 
                            		}
                        		},
                        		error:function(){
                        			alert("删除出错!");
                        		}
                        	});
                		}
        			});
                }); 

                $('#syncMenuButton').click(function () {
        			bootbox.confirm("您确定要将自定义菜单同步到微信吗?", function(result) {
            			if(result){
                        	$.ajax({
                        		type:'post',
                        		url:'api/sync_menu.do',
                        		dataType:'json',
                        		beforeSend: function(){
                        		},
                        		success:function(data){
                        			if(data.success){
                        				bootbox.alert("微信自定义菜单同步成功!"); 
                            		}else{
                                		alert("同步失败！提示信息，错误码: "+data.resultInfo.returnCode);
                                	}
                        		},
                        		error:function(){
                        			alert("出错了，同步失败!");
                        		}
                        	});
                		}
        			});
                });

                
            });
        </script>
    </body>
</html>