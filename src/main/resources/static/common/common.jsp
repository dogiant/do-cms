<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page import="org.springframework.web.bind.ServletRequestUtils" %>
<%@page import="com.dogiant.domain.*"%>
<%@page import="com.dogiant.dao.*"%>
<%@page import="com.dogiant.dao.base.QueryResult"%>

<%
	ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
%>