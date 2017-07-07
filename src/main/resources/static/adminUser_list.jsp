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
                                            <h5>管理员账号列表</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="adminUser_input.do">管理员账号授权录入</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                        	<li><a href="adminUser_input.do">管理员账号授权录入</a></li>
                                                            <li><a href="adminUser_list.do">管理员账号管理</a></li>                                                            
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
                                        	<div class="controls controls-row">
	                                        	<table>
		                                        	<tr>
			                                        	<td>
				                                        	<label for="userName">管理员账号查询：</label>
				                                            <input id="userName" size="20" type="text" value="">
														</td>
			                                            <td>
				                                            <label for="beginTime">起始时间:</label>
				                                            <input id="beginTime" size="20" type="text" value="">
			                                            </td>
			                                            <td>
				                                            <label for="beginTime">截止时间:</label>
				                                            <input id="endTime" size="20" type="text" value="">
			                                            </td>
			                                            <td>
				                                            <label for="search"></label>
				                                            <input class="navigation_button btn btn-primary" id="search" value="检索"  type="submit"/>
			                                            </td>
		                                            </tr>
	                                        	</table>
                                            </div>
                                            <table id="adminUserDataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                    	<th>ID</th>
                                                    	<th>用户名</th>
                                                        <th>昵称</th>
                                                        <th>电子邮箱</th>
                                                        <th>手机号</th>
                                                        <th>状态</th>
                                                        <th>创建时间</th>
                                                        <th>最近登录时间</th>
                                                        <th>最近登录IP</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<s:iterator value="%{resultMap.pagedResult.rs}" id="adminUser"> 
												    <tr dataid=<s:property value="#adminUser.userId" />>
												    	<td><s:property value="#adminUser.userId" /></td>								    
                                                    	<td><s:property value="#adminUser.userName" /></td>
                                                        <td><s:property value="#adminUser.nickname" /></td>
                                                        <td><s:property value="#adminUser.email" /></td>
                                                        <td><s:property value="#adminUser.phone" /></td>
                                                        <td><s:property value="#adminUser.isValid" /></td>
                                                        <td><s:date name="#adminUser.ctime" format="yyyy-MM-dd HH:mm:ss" /></td>
                                                        <td><s:date name="#adminUser.lastLoginTime" format="yyyy-MM-dd HH:mm:ss" /></td>
                                                        <td><s:property value="#adminUser.lastLoginIp" /></td>
                                                        <td>
                                                        	<button class="btn view"  dataid=<s:property value="#adminUser.userId" />><i class="icon-search" ></i></button>
                                                        </td>
                                                    </tr>
													</s:iterator>
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
		
		<!-- Modal -->
		<div id="userModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-header">
		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		    <h3 id="myModalLabel">用户简介</h3>
		  </div>
		  <div class="modal-body">
		    <p>One fine body…</p>
		  </div>
		  <div class="modal-footer">
		    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		  </div>
		</div>

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
        function nano(template, data) {
	       	  return template.replace(/\{([\w\.]*)\}/g, function(str, key) {
	       	    var keys = key.split("."), v = data[keys.shift()];
	       	    for (var i = 0, l = keys.length; i < l; i++) v = v[keys[i]];
	       	    return (typeof v !== "undefined" && v !== null) ? v : "";
	       	  });
        	}
        function getPaginateData(pageNo,pageRows) {
        	var beginTime=$("#beginTime").val();
        	var endTime=$("#endTime").val();
        	var userName=$("#userName").val();
        	$.ajax({
	            type: 'GET',
	            url: "api/adminUser_list.do",
	            async: false,
	            data:{"pageNo":pageNo,"pageRows":pageRows,"beginTime":beginTime,"endTime":endTime,"userName":encodeURIComponent(userName),"apiAccess":true},
	            contentType: "application/json",
	            //contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            dataType:"json",
	            cache:false,
	            success: function(data) {
	                if(data.success){
	                	var htmlArray = new Array();
	                	$.each(data.pagedResult.rs, function(i, obj){      
	                	      var trHtml = "<tr dataid=\""+obj.userId+"\">";
	                	      trHtml+="<td>"+obj.userId+"</td>";
	                	      trHtml+="<td>"+obj.userName+"</td>";
	                	      trHtml+="<td>"+obj.nickname+"</td>";
	                	      trHtml+="<td>"+obj.email+"</td>";
	                	      trHtml+="<td>"+obj.phone+"</td>";
	                	      if(obj.isValid){
	                	    	  trHtml+="<td><span class=vaidtag style='color:green'>有效</span></td>";
	                	      }else{
	                	    	  trHtml+="<td><span class=vaidtag style='color:red'>无效</span></td>";
	                	      }
	                	      trHtml+="<td>"+obj.ctime+"</td>";
	                	      if(obj.lastLoginTime==null){
	                	    	  trHtml+="<td></td>";
	                	      }else{
	                	    	  trHtml+="<td>"+obj.lastLoginTime+"</td>";
	                	      }
	                	      if(obj.lastLoginIp==null){
	                	    	  trHtml+="<td></td>";
	                	      }else{
	                	    	  trHtml+="<td>"+obj.lastLoginIp+"</td>"; 
	                	      }
	                	      trHtml+="<td>";
	                	      trHtml+="<a href=\"adminUser_modify.do?userId="+obj.userId+"\" dataid=\""+obj.userId+"\" class=\"btn edit\">编辑</a>";
	                	      if(obj.isValid){
	                	    	  trHtml+="<a href=\"javascript:void(0)\" dataid=\""+obj.userId+"\" class=\"btn btn-danger remove\">删除</a>";
		                	  }else{
		                		  trHtml+="<a href=\"javascript:void(0)\" dataid=\""+obj.userId+"\" class=\"btn btn-danger recover\">恢复</a>";
		                	  }
	                	      trHtml+="</td>";
	                	      trHtml+="</tr>";
	                	      htmlArray.push(trHtml);
	                	});
	                	$("#adminUserDataTable tbody").html(htmlArray.join(""));
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
        function checkdate(){   
      		//得到日期值并转化成日期格式，replace(/\-/g, "\/")是根据验证表达式把日期转化成长日期格式，这样
     		//再进行判断就好判断了
        	var sDate = new Date($("#beginTime").val().replace(/\-/g, "\/"));
         	var eDate = new Date($("#endTime").val().replace(/\-/g, "\/"));
         	if(sDate > eDate){
          		return false;
         	}
         	return true;
        }
        $(function() {
	    	$("#beginTime").datepicker({
		 		 defaultDate: "-30",
		 		 maxDate: "-1",
		 	     changeMonth: true,
		 	     changeYear: true
	 	 	});
	    	$("#endTime").datepicker({
		 		 defaultDate: "0",
		 		 maxDate: "0",
		 	     changeMonth: true,
		 	     changeYear: true
		 	});

	    	$("#search").click(function(){
	    		var b = checkdate();
	    		if(!b){
	    			alert("截止日期不能小于开始日期");
	    			return false;
	    		}
	    		getPaginateData(1);
	    	});
        	getPaginateData(1);
        	
        	$(document).on("click",".remove",function(){
        		var idsvalue = $(this).attr("dataid");
        		var obj = $(this);
    			bootbox.confirm("您确定要将此管理员账号置为无效吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/adminUser_disableUser.do',
                    		data:{"userId":idsvalue},
                    		dataType:'json',
                    		beforeSend: function(){
                    		},
                    		success:function(data){
                    			if(data.success){
                        			alert("置为无效操作成功!");
                        			obj.parent().parent().find(".vaidtag").css("color","red").text("无效");
                        			obj.removeClass("remove").addClass("recover").text("恢复");
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
        	
        	$(document).on("click",".recover",function(){
        		var idsvalue = $(this).attr("dataid");
        		var obj = $(this);
    			bootbox.confirm("您确定要恢复这个无效管理员账号吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/adminUser_enableUser.do',
                    		data:{"userId":idsvalue},
                    		dataType:'json',
                    		beforeSend: function(){
                    		},
                    		success:function(data){
                    			if(data.success){
                        			alert("恢复操作成功!");
                        			obj.parent().parent().find(".vaidtag").css("color","green").text("有效");
                        			//增加dom修改为删除状态
                        			obj.removeClass("recover").addClass("remove").text("删除");
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