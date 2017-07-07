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
        <link type="text/css" rel="stylesheet" href="assets/css/style_singlenews.css">
        <link type="text/css" rel="stylesheet" href="assets/css/style_multinews.css">
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
                        

                        
                        
							<div class="row-fluid">
                                <div class="span12">
                                    <div class="box dark">
                                        <header>
                                            <div class="icons"><i class="icon-edit"></i></div>
                                            <h5>当前关注回复</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="concerned_reply_manage.do">关注回复管理</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="text_list.do">文本消息管理列表</a></li>
                                                            <li><a href="article_list.do">图文消息管理列表</a></li>
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
                                        
						                     <table id="eventMessageDataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                    	<th>序号</th>
                                                        <th>消息内容</th>
                                                        <th>消息ID</th>
                                                        <th>微信号</th>
                                                        <th>事件消息</th>
                                                        <th>创建时间</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        
                        


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
	        function openView(id){
	        	var sFeatures = "height=480, width=320, scrollbars=yes, resizable=yes";
	        	var sUrl="article_show.do?id="+id;
	        	window.open(sUrl, 'show', sFeatures);
	        }
            $(function() {
                /*----------- BEGIN eventMessageDataTable CODE -------------------------*/
            	$('#eventMessageDataTable').dataTable({
                	"processing": true,
                    "serverSide": true,
                    "ajax": "api/concerned_reply_list.do",
                    "columns": [
                        { "data": "id" },
                        { "data": "messageShow"},
                        { "data": "message.id"},
                        { "data": "weChatId" },
                        { "data": "eventType" },
                        { "data": "ctime" }
                    ],
                    "columnDefs": [  
                        { "bSortable": false, 
                        	"targets": [1],
                        	"sWidth": "320px"
                        },
                        //{ "visible": false,  "targets": [2] },
                        { "targets": [6],
                        "data": "id" ,
                        "render": function(data, type, full) { return "<button class='btn btn-danger remove'  dataid='"+data+"'><i class='icon-remove'></i></button>"; } 
                        } 
                    ],
                   
                	"aaSorting": [[ 5, "desc" ]] ,
                    "sPaginationType": "bootstrap",
                   // "dom": '<"top"i>rt<"bottom"flp><"clear">',
                    "oLanguage": {
                    	"sLoadingRecords": "正在加载中......",
                    	"sProcessing": "正在加载中......",
                        "sLengthMenu": "每页显示 _MENU_ 条记录",
                        "sZeroRecords": "没有检索到相关数据",
                        "sEmptyTable": "数据表中没有相关数据",
                        "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                        "sInfoEmpty": "没有相关数据",
                        "sInfoFiltered": "数据表中共 _MAX_ 条记录",
                        "sSearch": "检索消息ID ",
                        "oPaginate": {
                            "sFirst": "首页",
                            "sPrevious": "上一页",
                            "sNext": "下一页",
                            "sLast": "末页"
                        }
                    }
                });

                $('#eventMessageDataTable tbody').on( 'click', 'button.remove', function () {
                    var idsvalue = $(this).attr("dataid");
        			bootbox.confirm("您确定要删除此关注回复吗?", function(result) {
            			if(result){
                        	$.ajax({
                        		type:'post',
                        		url:'api/event_message_delete.do',
                        		data:{"eventMessage.id":idsvalue},
                        		dataType:'json',
                        		beforeSend: function(){
                        		},
                        		success:function(data){
                        			if(data.success){
                            			if(data.resultInfo.returnCode==1){
                            				alert("成功删除关注回复！");
                            				window.location.reload(); 
                                		}else{
                                    		alert("访问出错！");
                                    	}
                            		}else{
                            			if(data.resultInfo.returnCode==6){
                                			alert("请您在管理控制台顶部点击下拉<我的公众号切换>，先切换到您的公众号！");
                                    	}else {
                                    		alert("操作关注回复失败！");
                                    	}
                                	}
                        		},
                        		error:function(){
                        			alert("出错了！操作关注回复失败！");
                        		}
                        	});
                		}
        			});
                });
                /*----------- END eventMessageDataTable CODE -------------------------*/
                
            });
        </script>
    </body>
</html>