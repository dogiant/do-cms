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
                                            <h5>多图文消息组合</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="news_list.do">我的图文消息列表</a></li>
                                                    <li class="dropdown">
                                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                            <i class="icon-th-large"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="news_list.do">我的图文消息列表</a></li>
                                                            <li><a href="news_share_list.do">图文消息共享列表</a></li>
                                                            <li><a href="article_input.do">单图文消息项录入</a></li>
                                                            <li><a href="article_list.do">我的单图文消息项列表</a></li>
                                                            <li><a href="article_share_list.do">单图文消息项共享列表</a></li>
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
                                        	
  												<div class="span8">
				                                	    <!--Begin Datatables-->
				                                            <table id="articleDataTable" class="table table-bordered table-condensed table-hover table-striped">
				                                                <thead>
				                                                    <tr>
				                                                    	<th>序号</th>
				                                                        <th>单图文消息项</th>
				                                                        <th>修改时间</th>
				                                                        <th>操作</th>
				                                                    </tr>
				                                                </thead>
				                                            </table>
				                                        <!--End Datatables-->
                                            	</div>
                                        	
	                                        	<div class="span4">								                

									                <div class="media_preview_area">
												        <div class="appmsg multi editing">
												            <div id="js_appmsg_preview" class="appmsg_content">
												                <div id="appmsgItem1" data-fileid="" data-id="1" class="js_appmsg_item ">
															        <div class="appmsg_info">
															            <em class="appmsg_date"></em>
															        </div>
															        <div class="cover_appmsg_item">
															            <h4 class="appmsg_title"><a href="javascript:void(0);" onclick="return false;" target="_blank">标题</a></h4>
															            <div class="appmsg_thumb_wrp">
															                <img class="js_appmsg_thumb appmsg_thumb" src="">
															                <i class="appmsg_thumb default">封面图片</i>
															            </div>
															            <div class="appmsg_edit_mask">
															                <a onclick="return false;" class="icon18_common edit_gray js_del" data-id="1" href="javascript:;">删除</a>
															            </div>
															        </div>
																</div>
																
																<div id="appmsgItem2" data-fileid="" data-id="2" class="appmsg_item js_appmsg_item ">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <a class="icon18_common del_gray js_del" data-id="2" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem3" data-fileid="" data-id="3" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem4" data-fileid="" data-id="4" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>																
																<div id="appmsgItem5" data-fileid="" data-id="5" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem6" data-fileid="" data-id="6" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem7" data-fileid="" data-id="7" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem8" data-fileid="" data-id="8" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem9" data-fileid="" data-id="9" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>
																<div id="appmsgItem10" data-fileid="" data-id="10" class="appmsg_item js_appmsg_item " style="display:none;">
																    <img class="js_appmsg_thumb appmsg_thumb" src="">
																    <i class="appmsg_thumb default">缩略图</i>
																    <h4 class="appmsg_title"><a onclick="return false;" href="javascript:void(0);" target="_blank">标题</a></h4>
																    <div class="appmsg_edit_mask">
																        <!--  <a class="icon18_common edit_gray js_edit" data-id="3" onclick="return false;" href="javascript:void(0);">编辑</a>-->
																        <a class="icon18_common del_gray js_del" data-id="3" onclick="return false;" href="javascript:void(0);">删除</a>
																    </div>
																</div>																																
																																												
															</div>
													          <div class="appmsg_add icon24_common">
													          	<form id="multiNewsForm">
													                <a onclick="return false;" id="js_add_appmsg" href="javascript:void(0);">
													                		<span id="news_ids">
													                		</span>
													                    	<button class="btn btn-large" type="submit"  id="multiNewsAdd">完成组合提交</button>
													                </a>
													           	</form>
													           </div>
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

		<script type="text/javascript" src="assets/js/lib/jquery.tablesorter.min.js"></script>
        <script type="text/javascript" src="assets/js/lib/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/js/lib/DT_bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/lib/responsive-tables.js"></script>
        

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
        var STATIC_FILE_HOST = "http://file.dogiant.com";
		$().ready(function() {
            /*----------- BEGIN articleDataTable CODE -------------------------*/
        	$('#articleDataTable').dataTable({
            	"processing": true,
                "serverSide": true,
                "ajax": "api/article_list.do",
                "columns": [
                    { "data": "id" },
                    { "data": "messageShow"},
                    { "data": "mtime" }
                ],
                "columnDefs": [  
                    { "bSortable": false, 
                    	"targets": [1],
                    	"sWidth": "320px"
                    },
                    //{ "visible": false,  "targets": [2] },
                    { "targets": [3],
                    "data": "id" ,
                    "render": function(data, type, full) { return "<button class='btn view'  dataid='"+data+"'><i class='icon-search' ></i></button>  <button class='btn edit'  dataid='"+data+"'><i class='icon-edit' ></i></button>  <button class='btn btn-danger remove'  dataid='"+data+"'><i class='icon-remove'></i></button> <button class='btn set'  dataid='"+data+"'><i class='icon-check' title='增加此图文项至多图文组合'></i></button>"; } 
                    } 
                ],
               
            	"aaSorting": [[ 2, "desc" ]] ,
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
                    "sSearch": "检索 ",
                    "oPaginate": {
                        "sFirst": "首页",
                        "sPrevious": "上一页",
                        "sNext": "下一页",
                        "sLast": "末页"
                    }
                }
            });
            $('#articleDataTable tbody').on( 'click', 'button.view', function () {
            	var sFeatures = "height=480, width=320, scrollbars=yes, resizable=yes";
            	var sUrl="article_show.do?id="+$(this).attr("dataid");
            	window.open( sUrl, 'show', sFeatures );
            	return false;
            }); 
        	
            $('#articleDataTable tbody').on( 'click', 'button.edit', function () {
                location.href = "article_modify.do?articleItem.id="+$(this).attr("dataid");
            }); 
            $('#articleDataTable tbody').on( 'click', 'button.remove', function () {
                var idsvalue = $(this).attr("dataid");
    			bootbox.confirm("您确定要删除操作吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/article_delete.do',
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
            $('#articleDataTable tbody').on( 'click', 'button.set', function () {
                var idsvalue = $(this).attr("dataid");
    			bootbox.confirm("您确定要设定此条图文消息项添加组合成多图文消息吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/article_get.do',
                    		data:{id:idsvalue},
                    		dataType:'json',
                    		beforeSend: function(){
                    		},
                    		success:function(data){
                    			if(data.success){
                        			if(data.resultInfo.returnCode==1){

                        				var repeat = false;
                        				//判断id是否已经添加到多图文消息里
                        				$("#news_ids input").each(function(){
									    	if($(this).val()==data.articleItem.id){
									    		repeat = true;
									    		return false;
										    }
									 	});
									 	if(repeat){
										 	alert("您已经添加了此图文消息项，不应该重复添加。");
										 	return false;
										}
									 	var len = $("#news_ids").children("input").length;
										if(len>=10){
											alert("图文消息项添加，不能超过10项。");
											return false;
										}
                        				var input=$("<input type='hidden' name='articleItemIds'></input>").val(data.articleItem.id);
                        				input.appendTo($("#news_ids"));
                        				len = $("#news_ids").children("input").length;
                        				//增加消息到旁边的多图文消息预览里
                        				if(len==1){
                        					$("#appmsgItem1 .appmsg_title a").text(data.articleItem.title);
                            				$("#appmsgItem1 .js_appmsg_thumb").attr("src",STATIC_FILE_HOST+data.articleItem.topCover);
                            				$("#appmsgItem1 .js_appmsg_thumb").show();
                            			}else if(len==2){
                            				$("#appmsgItem2 .appmsg_title a").text(data.articleItem.title);
                            				$("#appmsgItem2 .js_appmsg_thumb").attr("src",STATIC_FILE_HOST+data.articleItem.normalThumbnail);
                            				$("#appmsgItem2 .js_appmsg_thumb").show();
                            				$("#appmsgItem2 .default").hide();
                                		}else{
                                			$("#appmsgItem"+len+" .appmsg_title a").text(data.articleItem.title);
                            				$("#appmsgItem"+len+" .js_appmsg_thumb").attr("src",STATIC_FILE_HOST+data.articleItem.normalThumbnail);
                            				$("#appmsgItem"+len+" .js_appmsg_thumb").show();
                            				$("#appmsgItem"+len+" .default").hide();
                            				$("#appmsgItem"+len).show();
                                    	}
                        				
                            		}else{
                                		alert("访问出错！");
                                	}
                        		}else{
                        			alert("访问出错！");
                            	}
                    		},
                    		error:function(){
                    			alert("出错了！");
                    		}
                    	});
            		}
    			});
            });
            //多图文已添加项删除动作
			$(".js_del").click(function(){
				var dataid= $(this).attr("data-id");
				$("#news_ids input").each(function(index, item){
			    	if((index+1)==dataid){
			    		$(this).remove();
			    		return false;
				    }
			 	});
	    		if(dataid<3){
					$("#appmsgItem"+dataid+" .appmsg_title a").text("标题");
    				$("#appmsgItem"+dataid+" .js_appmsg_thumb").attr("src","");
    				$("#appmsgItem"+dataid+" .js_appmsg_thumb").hide();
    				$("#appmsgItem"+dataid+" .default").show();
				}else{
					$(this).parent().parent().hide();
				}
			});
			
            $('#multiNewsAdd').click(function () {
            	//var data = JSON.stringify($("#multiNewsForm").serializeArray());
            	var data = $("#multiNewsForm").serialize();
            	
				//判断提交数据的长度
				if(data.length<2){
					alert("您需要选择至少两个图文项，请点击操作按钮增加图文项至多图文组合!");
					return false;
				}
    			bootbox.confirm("您确定要提交此多图文消息吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/news_add_multi.do',
                    		data:data,
                    		dataType:'json',
                    		beforeSend: function(){
                    		},
                    		success:function(data){
                    			if(data.success){
                    				bootbox.alert('成功添加多图文消息' ,function(){
                						message_box.show('将跳转到您的图文消息列表管理界面!','success');
                						var  page_list = function(){
                							location.href="news_list.do";
                						}
                						window.setTimeout(page_list, 1000); 
                			 		});
                        		}
                    		},
                    		error:function(){
                    			alert("出错了!");
                    		}
                    	});
            		}
    			});
            }); 
            
            /*----------- END articleDataTable CODE -------------------------*/
		});
      </script>

    </body>
</html>