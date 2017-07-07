<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>消息提示</title>
        <meta name="description" content="Metis: Bootstrap Responsive Admin Theme">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/error.css" />

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if IE 7]>
        <link type="text/css" rel="stylesheet" href="assets/css/font-awesome-ie7.min.css"/>
        <![endif]-->
    </head>
    <body>
        <!-- #main -->
        <div id="main">
            <!-- .container-fluid -->
            <div class="container-fluid">
                <!-- .row-fluid -->
                <div class="row-fluid">
                    <!-- .span12 -->
                    <div class="span12 logo <s:if test="%{#msg_type==0}"> alert-success</s:if><s:elseif test="%{#msg_type==1}"> alert-warning</s:elseif><s:elseif test="%{#msg_type==2}"> alert-danger</s:elseif><s:else> alert-info</s:else>">
                        <h3><s:property value="#tip"/></h3>
                    </div>
                    <!-- /.span12 -->
                </div>
                <!-- /.row-fluid -->
                <!-- .row-fluid -->
                <div class="row-fluid">
                    <!-- .span6 -->
                    <div class="span6 offset3">
                        <p class="lead">
								<s:if test="%{#autoRedirect==true}">
						如果您不做出选择，将在 <span id="spanSeconds">5</span> 秒后跳转到第一个链接地址。
								</s:if>
						</p>
                    </div>
                    <!-- /.span6 -->
                </div>
                <!-- /.row-fluid -->
                <div class="row-fluid">
                    <div class="span6 offset3">
                        <div class="row-fluid">
							<s:iterator value="#links" id="link" status="st">
			  						<a class="btn btn-info span6" href="<s:property value="#link.href"/>" <s:if test="%{#link.target!=null }">target="<s:property value="#link.target"/>"</s:if>><s:property value="#link.text"/></a>
			  				</s:iterator>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#main -->
    </body>
<s:if test="%{#autoRedirect==true}">
<script language="JavaScript">
<!--
var seconds = 5;
var defaultUrl = "<s:property value="#action_link.href"/>";
var objTimer;

onload = function()
{
  if (defaultUrl == 'javascript:history.go(-1)' && window.history.length == 0)
  {
    document.getElementById('redirectionMsg').innerHTML = '';
    return;
  }
  objTimer =  window.setInterval(redirection, 1000);
}
function redirection()
{
  if (seconds <= 0)
  {
	if(objTimer) window.clearInterval(objTimer);
    return;
  }

  seconds --;
  document.getElementById('spanSeconds').innerHTML = seconds;

  if (seconds == 0)
  {
	  if(objTimer) window.clearInterval(objTimer);
	  location.href = defaultUrl;
    
  }
}
//-->
</script>
</s:if>
</html>