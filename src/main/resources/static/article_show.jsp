<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="星泰国际官网">
    <meta name="author" content="dogiant">
	<title>${articleItem.title}-星泰国际官网</title>
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<style>
		.content {padding:0 10px}
	</style>
	</head>
	<body>
    <!-- Start: Main content -->
    <div class="content">     
      <div class="container">
        <!-- Start: article  -->
        <article class="article"> 
          <div class="row bottom-space">
          
            <div class="span12">
              <div class="page-header">
                <h4><s:property value="%{resultMap.articleItem.title}"/></h4>
                <small><s:property value="%{resultMap.articleItem.author}"/></small>
              </div>
            </div>
            
          </div>
          
          <div class="row bottom-space">
            <div class="span10 offset1">
            <s:if test="%{resultMap.articleItem.coverIntoContent}">
            	<div class="span10 center-align">
              		<img src="http://file.dogiant.com<s:property value="%{resultMap.articleItem.picUrl}"/>" class="thumbnail cover-snap">            
            	</div>
            </s:if>
 			<s:property value="%{resultMap.articleItem.content}"  escape="false"/>
 				       
            </div>
          </div>
        </article>
        <!-- End: Article show -->
      </div>
    </div>
    <!-- End: Main content -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
