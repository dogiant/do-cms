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
        <link type="text/css" rel="stylesheet" href="assets/css/DT_bootstrap.css"/>
        <link rel="stylesheet" href="assets/css/responsive-tables.css">
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-modal.css">
        <link rel="stylesheet" type="text/css" href="assets/css/jPaginate-style.css" />
        <link rel="stylesheet" type="text/css" href="assets/js/jquery-ui-1.11.0/jquery-ui.min.css"  />
        <link rel="stylesheet" type="text/css" href="assets/css/theme.css">

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
                                        <div  id="div-1"  class="accordion-body collapse in body">
                                            <table id="roleDataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                    	<th>应用文档名称</th>
                                                    	<th>下载地址</th>
                                                    	<th>日期</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                            <div id="pagination"></div>
											<div id="resultInfo"></div>
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
        <script type="text/javascript" src="assets/js/jquery.paginate.js"></script>
        <script type="text/javascript" src="assets/js/jquery-ui-1.11.0/jquery-ui.min.js"></script>
    	<script type="text/javascript" src="assets/js/jquery.datepicker.zh_CN.js"></script>
        <script type="text/javascript">
        function getPaginateData(pageNo,pageRows) {
        	$.ajax({
	            type: 'GET',
	            url: "api/document_list.do",
	            async: false,
	            data:{"pageNo":pageNo,"pageRows":pageRows,"apiAccess":true},
	            contentType: "application/json",
	            dataType:"json",
	            cache:false,
	            success: function(data) {
	                if(data.success){
	                	var htmlArray = new Array();
	                	$.each(data.pagedResult.rs, function(i, obj){      
	                	      var trHtml = "<tr dataid=\""+obj.id+"\">";
	                	      trHtml+="<td>"+obj.name+"</td>";
	                	      trHtml+="<td><a href=\"http://file.agertech.com.cn/"+obj.fileUrl+"\">下载地址</a></td>";
	                	      trHtml+="<td>"+obj.ctime+"</td>";
	                	      trHtml+="<td>";
	                	      trHtml+="<a href=\"document_modify.do?id="+obj.id+"\" dataid=\""+obj.id+"\" class=\"btn edit\">编辑</a>";
	                	      trHtml+="<a href=\"javascript:void(0)\" dataid=\""+obj.id+"\" class=\"btn btn-danger remove\">删除</a>";
	                	      trHtml+="</td>";
	                	      trHtml+="</tr>";
	                	      htmlArray.push(trHtml);
	                	});
	                	$("#roleDataTable tbody").html(htmlArray.join(""));
	                	initPaginate(data.pagedResult.allPage,data.pagedResult.pageNo);
	                	$("#resultInfo").html("查询记录共计"+data.pagedResult.allRows+"条。");
	                }
	            },
	            error: function(e) {
	               console.log(e.message);
	            }
	        }); 
        }
        
        function initPaginate(count,pageNo){
        	if(count>0){
	        	$("#pagination").paginate({
	    			count 		: count,
	    			start 		: pageNo,
	    			display     : 20,
	    			border					: true,
	    			border_color			: '#e7e9eb',
	    			text_color  			: 'black',
	    			background_color    	: 'white',	
	    			border_hover_color		: '#ccc',
	    			text_hover_color  		: '#e35442',
	    			background_hover_color	: '#fff', 
	    			images					: false,
	    			mouse					: 'press',
	    			onChange     			: function(page){
	    										getPaginateData(page);
	    									 }
	    		});
        	}else{
        		$("#pagination").html("");
        	}
        }
        $(function() {

        	getPaginateData(1);
        	
        	$(document).on("click",".remove",function(){
        		var idsvalue = $(this).attr("dataid");
        		var obj = $(this);
    			bootbox.confirm("您确定要将此应用文档删除吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/document_delete.do',
                    		data:{"id":idsvalue},
                    		dataType:'json',
                    		beforeSend: function(){
                    		},
                    		success:function(data){
                    			if(data.success){
                        			alert("删除操作成功!");
                        			obj.parent().parent().remove();
                        		}else{
                        			alert("操作失败");
                        		}
                    			return false;
                    		},
                    		error:function(){
                    			alert("出错了!");
                    		}
                    	});
            		}
    			});
        	});
        	
        });
        </script>
    </body>
</html>