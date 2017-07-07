<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
            <!-- BEGIN LEFT  -->
            <div id="left">
                <!-- .user-media -->
                <div class="media user-media hidden-phone" id="userInfoTablet">
                	<!-- 
                    <a href="" class="user-link">
                        <img src="assets/img/user.gif" alt="" class="media-object img-polaroid user-img" id="userHeadImg">
                        <span class="label user-label"></span>
                    </a>
					 -->
                    <div class="media-body hidden-tablet">
                    	<!-- 
                        <h5 class="media-heading" id="mp_weChatId">用户头像</h5>
                        -->
                        <ul class="unstyled user-info">
                            <li>welcome,${userName}</li>
                            <li>上次登录时间 : <br/>
                                <small><i class="icon-calendar"></i><s:date name="%{lastLoginTime}" format="yy-M-dd HH:mm:ss" /></small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.user-media -->

                <!-- BEGIN MAIN NAVIGATION -->
                <ul id="menu" class="unstyled accordion collapse in">
                	<!--  
                    <li class="accordion-group<s:if test='%{#request.menu=="wechat"}'> active</s:if>">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav">
                            <i class="icon-star icon-large"></i> 我的公众号<span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse <s:if test='%{#request.menu=="wechat"}'> in</s:if>" id="dashboard-nav">
                            <li><a href="wechat_list.do"><i class="icon-angle-right"></i> 我的公众号</a></li>
                            <li><a href="wechat_input.do"><i class="icon-angle-right"></i> 公众号接入</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group<s:if test="%{#request.menu=='message'}"> active</s:if>">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                            <i class="icon-leaf icon-large"></i> 消息素材管理 <span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse <s:if test="%{#request.menu=='message'}"> in</s:if>" id="component-nav">
                            <li><a href="text_list.do"><i class="icon-angle-right"></i> 文本消息</a></li>
                            <li><a href="news_list.do"><i class="icon-angle-right"></i> 图文消息</a></li>
 
                            <li><a href="#"><i class="icon-angle-right"></i> 图片消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 语音消息</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> 视频消息</a></li>

                        </ul>
                    </li>
                   
                    <li class="accordion-group<s:if test="%{#request.menu=='reply'}"> active</s:if> ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#reply-nav">
                            <i class="icon-pencil icon-large"></i> 消息回复管理<span class="label label-inverse pull-right">3</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='reply'}"> in</s:if>" id="reply-nav">
                            <li><a href="concerned_reply_list.do"><i class="icon-angle-right"></i> 关注回复</a></li>
                            <li><a href="no_match_reply_list.do"><i class="icon-angle-right"></i> 无匹配回复</a></li>
                            <li><a href="keyword_reply_list.do"><i class="icon-angle-right"></i> 关键字回复</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#custommenu-nav">
                            <i class="icon-tasks icon-large"></i> 自定义菜单<span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='custommenu'}"> in</s:if>" id="custommenu-nav">
                            <li><a href="menu_list.do"><i class="icon-angle-right"></i> 菜单列表</a></li>
                            <li><a href="menu_input.do"><i class="icon-angle-right"></i> 创建菜单</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#users-nav">
                            <i class="icon-user icon-large"></i> 用户管理<span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse <s:if test="%{#request.menu=='users'}"> in</s:if>"  id="users-nav">
                        	<li><a href="group_list.do"><i class="icon-angle-right"></i> 分组管理</a></li>
                            <li><a href="user_list.do"><i class="icon-angle-right"></i> 用户列表</a></li>
                        </ul>
                    </li>
                    <li><a href="mass_send_manage.do"><i class="icon-envelope icon-large"></i> 定制群发消息</a></li>
                    -->
                    <!-- 
                    <li><a href="#"><i class="icon-comment icon-large"></i> 客服人工消息</a></li>
                     -->

                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#article-nav">
                            <i class="icon-pencil icon-large"></i> 文章管理 <span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='article'}"> in</s:if>"  id="article-nav">
                            <li><a href="article_cat_list.do"><i class="icon-angle-right"></i> 栏目管理</a></li>
                            
                            <li><a href="article_list.do"><i class="icon-angle-right"></i> 文章管理</a></li>
                            <!--
                            <li><a href="include_cat_list.do"><i class="icon-angle-right"></i> 碎片栏目管理</a></li>
                        	<li><a href="template_list.do"><i class="icon-angle-right"></i> 模板文件管理</a></li>
                        	  -->
                        </ul>
                    </li>
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#doc-nav">
                            <i class="icon-leaf icon-large"></i> 文档指南<span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='doc'}"> in</s:if>"  id="doc-nav">
                            <li><a href="document_list.do"><i class="icon-angle-right"></i> 应用文档</a></li>
                            <li><a href="guide_list.do"><i class="icon-angle-right"></i> 应用指南</a></li>
                        </ul>
                    </li>
                    
                    <li class="accordion-group ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#product-nav">
                            <i class="icon-tasks icon-large"></i> 产品管理<span class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='product'}"> in</s:if>" id="product-nav">
                            <li><a href="product_input.do?cat=ic"><i class="icon-angle-right"></i> 集成电路</a></li>
                            <li><a href="product_input.do?cat=mos"><i class="icon-angle-right"></i> 场效应管</a></li>
                            <li><a href="product_input.do?cat=diode"><i class="icon-angle-right"></i> 二极管</a></li>
                            <li><a href="product_input.do?cat=triode"><i class="icon-angle-right"></i> 三极管</a></li>
                            <li><a href="product_input.do?cat=capacitor"><i class="icon-angle-right"></i> 电容器</a></li>
                            <!--  
                            <li><a href="product_input.do?cat=led"><i class="icon-angle-right"></i> LED灯饰</a></li>
                            -->
                        </ul>
                    </li>
                    
                    <s:if test='#mapUser.user.userName=="admin"'>
                    <li class="accordion-group<s:if test="%{#request.menu=='admin'}"> active</s:if> ">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed" data-target="#admin-nav">
                            <i class="icon-cog icon-large"></i> 系统管理<span class="label label-inverse pull-right">4</span>
                        </a>
                        <ul class="collapse  <s:if test="%{#request.menu=='admin'}"> in</s:if>" id="admin-nav">
                            <li><a href="adminUser_list.do"><i class="icon-angle-right"></i> 管理员账号列表</a></li>
                            <li><a href="role_list.do"><i class="icon-angle-right"></i> 角色列表</a></li>
                            <li><a href="systemModel_list.do"><i class="icon-angle-right"></i> 系统模块列表</a></li>
                            <li><a href="privilege_list.do"><i class="icon-angle-right"></i> 系统模块权限管理</a></li>
                        </ul>
                    </li>
                    </s:if>
                    <li><a href="javascript:logout();"><i class="icon-signin icon-large"></i> 退出登录</a></li>
                </ul>
                <!-- END MAIN NAVIGATION -->

            </div>
            <!-- END LEFT -->
