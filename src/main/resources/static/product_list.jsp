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
                                            
                                            <h5><s:property value="productCategory.cateName"/> <s:property value="subProductCategory.cateName"/> 产品列表</h5>
                                            <!-- .toolbar -->
                                            <div class="toolbar">
                                                <ul class="nav">
                                                    <li><a href="product_input.do?cat=<s:property value="productCategory.cateCode"/>"><s:property value="productCategory.cateName"/>产品录入</a></li>
                                                    
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
                                            <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                                                
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
            <div style="display: none">
<p><strong>集成电路</strong></p>
<p>LDO</p>
<table id="LowDropoutRegulator">
	<thead>
	  <tr>
	    <td rowspan="3" align="center">Type</td>
	    <td rowspan="2" align="center" >P<sub>D</sub></td>
	    <td rowspan="2" align="center" >V<sub>I</sub></td>
	    <td colspan="3" rowspan="2" align="center">V<sub>O</sub></td>
	    <td colspan="3" align="center">ΔV<sub>O</sub>（Reg.line）</td>
	    <td colspan="3" align="center">ΔV<sub>O</sub>（Reg.load）</td>
	    <td align="center">I<sub>Q</sub></td>
	    <td rowspan="3" align="center">Arrays</td>
	    <td rowspan="3" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td rowspan="2" align="center">Max（mV）</td>
	    <td colspan="2" align="center">V<sub>I</sub></td>
	    <td rowspan="2" align="center">Max（mV）</td>
	    <td colspan="2" align="center">I<sub>O</sub></td>
	    <td align="center">&nbsp;</td>
	  </tr>
	  <tr>
	    <td>(W)</td>
	    <td>(V)</td>
	    <td>Min(V)</td>
	    <td>Typ(V)</td>
	    <td>Max (V)</td>
	    <td>Min(V)</td>
	    <td>Max（V）</td>
	    <td>Min(mA)</td>
	    <td>Max（mA）</td>
	    <td align="center">Max(mA)</td>
	  </tr>
	</thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_VI_A}}</td>
			<td>{{col_VO_MinV}}</td>
			<td>{{col_VO_TypV}}</td>
			<td>{{col_VO_MaxV}}</td>
			<td>{{col_VORegline_MaxmV}}</td>
			<td>{{col_VORegline_VI_MinV}}</td>
			<td>{{col_VORegline_VI_MaxV}}</td>
			<td>{{col_VORegload_MaxmV}}</td>
			<td>{{col_VORegline_IO_MinmA}}</td>
			<td>{{col_VORegline_IO_MaxmA}}</td>
			<td>{{col_IQ_MaxmA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>

<p><strong>场效应管 MOS管</strong></p>
<table id="MetalOxideSemiconductorFET">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td rowspan="2" align="center">Configuration</td>
	    <td rowspan="2" align="center">Channel</td>
	    <td align="center">P<sub>D</sub></td>
	    <td align="center">I<sub>D</sub></td>
	    <td align="center">V<sub>(BR)DS</sub></td>
	    <td align="center">V<sub>SD</sub></td>
	    <td align="center">V<sub>GS(th)</sub> </td>
	    <td align="center">C<sub>iss</sub></td>
	    <td align="center">C<sub>oss</sub></td>
	    <td colspan="3" align="center">R<sub>DS（on）</sub></td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(pF)</td>
	    <td align="center">(pF)</td>
	    <td align="center">(ꭥ)</td>
	    <td align="center">VGS(V)</td>
	    <td align="center">ID(A)</td>
	  </tr>
	</thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{configuration}}</td>
			<td>{{channel}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_ID_A}}</td>
			<td>{{col_VBRDS_V}}</td>
			<td>{{col_VSD_V}}</td>
			<td>{{col_VGSth_V}}</td>
			<td>{{col_Ciss_pF}}</td>
			<td>{{col_Coss_pF}}</td>
			<td>{{col_RDSon_}}</td>
			<td>{{col_RDSon_VGSV}}</td>
			<td>{{col_RDSon_IDA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
<p><strong>二极管</strong></p>
<p>标准整流管</p>

<table id="StandardRectifierTube">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">I<sub>F（AV）</sub></td>
	    <td align="center">I<sub>FSM</sub></td>
	    <td align="center" colspan="2">V<sub>F</sub></td>
	    <td align="center" colspan="2">I<sub>R</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(V)</td>
	    <td align="center">(A)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">I<sub>F</sub>(A)</td>
	    <td align="center">(μA)</td>
	    <td align="center">V<sub>DC</sub>(V)</td>
	    <td align="center">(pF)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_IFAV_A}}</td>
			<td>{{col_IFSM_A}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VDCV}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>触发二极管</p>
<table id="TriggerDiode">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td colspan="3" align="center">V<sub>BR</sub></td>
	    <td align="center">I<sub>TRM</sub></td>
	    <td align="center">| |+V<sub>BO</sub>| - |-V<sub>BO</sub>| |</td>
	    <td align="center">| ± ΔV |</td>
	    <td align="center">IBO</td>
	    <td rowspan="2" align="center">Direction</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(V)</td>
	    <td align="center">Min(V)</td>
	    <td align="center">Typ(V)</td>
	    <td align="center">Max(V)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">Min(V)</td>
	    <td align="center">(μA)</td>
	  </tr>
  </thead>

	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_VBR_MinV}}</td>
			<td>{{col_VBR_TypV}}</td>
			<td>{{col_VBR_MaxV}}</td>
			<td>{{col_ITRM_A}}</td>
			<td>{{col_VBO_V}}</td>
			<td>{{col_V_MinV}}</td>
			<td>{{col_IBO_uA}}</td>
			<td>{{direction}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>高频二极管</p>
<table id="HighFrequencyDiode">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">I<sub>F</sub></td>
	    <td colspan="2" align="center">V<sub>F</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td align="center">R<sub>f</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td>(V)</td>
	    <td>(mA)</td>
	    <td>(V)</td>
	    <td>I<sub>F</sub>(mA)</td>
	    <td>(μA)</td>
	    <td>V<sub>R</sub>(V)</td>
	    <td>(pF)</td>
	    <td>(Ω)</td>
	  </tr>
  </thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_IF_MA}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFMA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VRV}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{col_RF_omega}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>开关二极管</p>
<table id="SwitchingDiode">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">T<sub>rr</sub></td>
	    <td align="center">I<sub>F</sub></td>
	    <td align="center">I<sub>FSM</sub></td>
	    <td colspan="2" align="center">V<sub>F</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td align="center">P<sub>D</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td>(V)</td>
	    <td>(nS)</td>
	    <td>(mA)</td>
	    <td>(A)</td>
	    <td>(V)</td>
	    <td>I<sub>F</sub>(mA)</td>
	    <td>(uA)</td>
	    <td>V<sub>R</sub>(V)</td>
	    <td>(pF)</td>
	    <td>(mW)</td>
	  </tr>
  </thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_TRR_NS}}</td>
			<td>{{col_IF_MA}}</td>
			<td>{{col_ISFM_A}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFMA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VRV}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{col_PD_MW}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>快速整流管</p>
<table id="FleetnessRectifierTube">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">I<sub>F（AV）</sub></td>
	    <td align="center">I<sub>FSM</sub></td>
	    <td colspan="2" align="center">V<sub>F</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">T<sub>rr</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(V)</td>
	    <td align="center">(A)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">I<sub>F</sub>(A)</td>
	    <td align="center">(uA)</td>
	    <td align="center">V<sub>DC</sub>(V)</td>
	    <td align="center">(ns)</td>
	    <td align="center">(pF)</td>
	  </tr>
  </thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_IFAV_A}}</td>
			<td>{{col_IFSM_A}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VDCV}}</td>
			<td>{{col_TRR_NS}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>突波吸收器</p>
<table id="SurgeAbsorber">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">P<sub>PPM</sub></td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td colspan="3" align="center">V<sub>(BR)</sub></td>
	    <td colspan="2" align="center">V<sub>C</sub></td>
	    <td rowspan="2" align="center">Direction</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(V)</td>
	    <td>Min（V）</td>
	    <td>Max(V)</td>
	    <td>I<sub>T</sub>(mA)</td>
	    <td>(V) </td>
	    <td>I<sub>PP</sub>(A)</td>
	  </tr>
  </thead>
	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_PPPM_W}}</td>
			<td>{{col_VRWM_V}}</td>
			<td>{{col_VBR_MINV}}</td>
			<td>{{col_VBR_MAXV}}</td>
			<td>{{col_VBR_ITMA}}</td>
			<td>{{col_VC_V}}</td>
			<td>{{col_VC_IPPA}}</td>
			<td>{{direction}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>稳压管</p>
<table id="VoltageStabilizingDiode">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">P<sub>D</sub></td>
	    <td colspan="4" align="center">V<sub>ZT</sub></td>
	    <td colspan="2" align="center">Z<sub>ZT</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">I<sub>ZM</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td>Min.(V)</td>
	    <td>Nom.(V)</td>
	    <td>Max.(V)</td>
	    <td>I<sub>ZT</sub>(mA)</td>
	    <td>(Ω)</td>
	    <td>I<sub>ZT</sub>(mA)</td>
	    <td align="center">(uA)</td>
	    <td align="center">V<sub>R</sub>(V)</td>
	    <td align="center">(mA)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_VZT_MINV}}</td>
			<td>{{col_VZT_NOMV}}</td>
			<td>{{col_VZT_MAXV}}</td>
			<td>{{col_VZT_IZTMA}}</td>
			<td>{{col_ZZT_omega}}</td>
			<td>{{col_ZZT_IZTMA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VRV}}</td>
			<td>{{col_IZM_MA}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>肖特基整流管</p>
<table id="SchottkyRectifierTube">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">I<sub>F（AV）</sub></td>
	    <td align="center">I<sub>FSM</sub></td>
	    <td colspan="2" align="center">V<sub>F</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(V)</td>
	    <td align="center">(A)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">I<sub>F</sub>(A)</td>
	    <td align="center">(mA)</td>
	    <td align="center">V<sub>DC</sub>(V)</td>
	    <td align="center">(pF)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_IFAV_A}}</td>
			<td>{{col_IFSM_A}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFA}}</td>
			<td>{{col_IR_MA}}</td>
			<td>{{col_IR_VDCV}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
  
</table>
<p>整流桥</p>
<table id="BridgeRectifierTube">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>RRM</sub></td>
	    <td align="center">I<sub>F（AV）</sub></td>
	    <td align="center">I<sub>FSM</sub></td>
	    <td colspan="2" align="center">V<sub>F</sub></td>
	    <td colspan="2" align="center">I<sub>R</sub></td>
	    <td align="center">T<sub>rr</sub></td>
	    <td align="center">C<sub>J</sub></td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(V)</td>
	    <td align="center">(A)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">I<sub>F</sub>(A)</td>
	    <td align="center">(uA)</td>
	    <td align="center">V<sub>DC</sub>(V)</td>
	    <td align="center">&nbsp;</td>
	    <td align="center">(pF)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VRRM_V}}</td>
			<td>{{col_IFAV_A}}</td>
			<td>{{col_IFSM_A}}</td>
			<td>{{col_VF_V}}</td>
			<td>{{col_VF_IFA}}</td>
			<td>{{col_IR_UA}}</td>
			<td>{{col_IR_VDCV}}</td>
			<td>{{col_TRR}}</td>
			<td>{{col_CJ_PF}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p><strong>三极管</strong></p>
<p>达林顿管</p>
<table id="DarlingtonTransistor">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td rowspan="2" align="center">Polarity</td>
	    <td align="center">P<sub>D</sub> </td>
	    <td align="center">I<sub>C</sub> </td>
	    <td align="center">V<sub>CBO</sub></td>
	    <td align="center">V<sub>CEO</sub></td>
	    <td align="center">V<sub>EBO</sub></td>
	    <td colspan="3" align="center">h<sub>FE</sub></td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">　</td>
	    <td align="center">V<sub>CE</sub>(V)</td>
	    <td align="center">I<sub>C</sub>(mA)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{polarity}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_IC_A}}</td>
			<td>{{col_VCBO_V}}</td>
			<td>{{col_VCEO_V}}</td>
			<td>{{col_VEBO_V}}</td>
			<td>{{col_hFE_}}</td>
			<td>{{col_hFE_VCEV}}</td>
			<td>{{col_hFE_ICmA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>功率三极管</p>
<table id="PowerTransistor">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td rowspan="2" align="center">Polarity</td>
	    <td align="center">P<sub>D</sub> </td>
	    <td align="center">I<sub>C</sub> </td>
	    <td align="center">V<sub>CBO</sub></td>
	    <td align="center">V<sub>CEO</sub></td>
	    <td align="center">V<sub>EBO</sub></td>
	    <td colspan="3" align="center">h<sub>FE</sub></td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">　</td>
	    <td align="center">V<sub>CE</sub>(V)</td>
	    <td align="center">I<sub>C</sub>(mA)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{polarity}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_IC_A}}</td>
			<td>{{col_VCBO_V}}</td>
			<td>{{col_VCEO_V}}</td>
			<td>{{col_VEBO_V}}</td>
			<td>{{col_hFE_}}</td>
			<td>{{col_hFE_VCEV}}</td>
			<td>{{col_hFE_ICmA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>可控硅</p>
<table id="SiliconControlledRectifier">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td align="center">V<sub>DRM</sub> &nbsp; V<sub>RRM</sub></td>
	    <td align="center">I<sub>T(RMS)</sub></td>
	    <td align="center">I<sub>TSM</sub></td>
	    <td align="center">V<sub>GRM</sub></td>
	    <td align="center">V<sub>TM</sub></td>
	    <td align="center">V<sub>GT</sub></td>
	    <td align="center">I<sub>GT</sub></td>
	    <td align="center">I<sub>H</sub></td>
	    <td rowspan="2" align="center">Direction</td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package outline</td>
	  </tr>
	  <tr>
	    <td align="center">（V）</td>
	    <td align="center">(A)</td>
	    <td align="center">(A)</td>
	    <td align="center">（V）</td>
	    <td align="center">（V）</td>
	    <td align="center">（V）</td>
	    <td align="center">(μA)</td>
	    <td align="center">(mA)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{col_VDRMVRRM_V}}</td>
			<td>{{col_ITRMS_A}}</td>
			<td>{{col_ITSM_A}}</td>
			<td>{{col_VGRM_V}}</td>
			<td>{{col_VTM_V}}</td>
			<td>{{col_VGT_V}}</td>
			<td>{{col_IGT_uA}}</td>
			<td>{{col_IH_mA}}</td>
			<td>{{direction}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>数字三极管</p>
<table id="DigitalTransistor">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td rowspan="2" align="center">Polarity</td>
	    <td align="center">P<sub>D</sub> </td>
	    <td align="center">R1</td>
	    <td align="center">R2</td>
	    <td align="center">I<sub>C</sub> </td>
	    <td align="center">V<sub>CBO</sub></td>
	    <td align="center">V<sub>CEO</sub></td>
	    <td align="center">V<sub>EBO</sub></td>
	    <td colspan="3" align="center">h<sub>FE</sub></td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(KΩ)</td>
	    <td align="center">(KΩ)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">　</td>
	    <td align="center">V<sub>CE</sub>(V)</td>
	    <td align="center">I<sub>C</sub>(mA)</td>
	  </tr>
  </thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{polarity}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_R1_Ko}}</td>
			<td>{{col_R2_Ko}}</td>
			<td>{{col_IC_A}}</td>
			<td>{{col_VCBO_V}}</td>
			<td>{{col_VCEO_V}}</td>
			<td>{{col_VEBO_V}}</td>
			<td>{{col_hFE_}}</td>
			<td>{{col_hFE_VCEV}}</td>
			<td>{{col_hFE_ICmA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
<p>小信号三极管</p>
<table id="SmallSignalTransistor">
	<thead>
	  <tr>
	    <td rowspan="2" align="center">Type</td>
	    <td rowspan="2" align="center">Polarity</td>
	    <td align="center">P<sub>D</sub> </td>
	    <td align="center">I<sub>C</sub> </td>
	    <td align="center">V<sub>CBO</sub></td>
	    <td align="center">V<sub>CEO</sub></td>
	    <td align="center">V<sub>EBO</sub></td>
	    <td colspan="3" align="center">h<sub>FE</sub></td>
	    <td rowspan="2" align="center">Arrays</td>
	    <td rowspan="2" align="center">Package Outline</td>
	  </tr>
	  <tr>
	    <td align="center">(W)</td>
	    <td align="center">(A)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">(V)</td>
	    <td align="center">　</td>
	    <td align="center">V<sub>CE</sub>(V)</td>
	    <td align="center">I<sub>C</sub>(mA)</td>
	  </tr>
  	</thead>
  	<tbody>
		<tr>
			<td>{{#linkFileName}}<a href="http://file.agertech.com.cn{{linkFileName}}">{{type}}</a>{{/linkFileName}}{{^linkFileName}}{{type}}{{/linkFileName}}</td>
			<td>{{polarity}}</td>
			<td>{{col_PD_W}}</td>
			<td>{{col_IC_A}}</td>
			<td>{{col_VCBO_V}}</td>
			<td>{{col_VCEO_V}}</td>
			<td>{{col_VEBO_V}}</td>
			<td>{{col_hFE_}}</td>
			<td>{{col_hFE_VCEV}}</td>
			<td>{{col_hFE_ICmA}}</td>
			<td>{{arrays}}</td>
			<td>{{packageOutline}}</td>
		</tr>
	</tbody>
</table>
            </div>
            
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
    	
    	<script type="text/javascript" src="assets/js/mustache.js"></script>
        <script type="text/javascript">
        function getPaginateData(pageNo,pageRows) {
        	$.ajax({
	            type: 'GET',
	            url: "api/product_list.do",
	            async: false,
	            data:{"pageNo":pageNo,"pageRows":pageRows,"cat":"<s:property value='productCategory.cateCode'/>","subCat":"<s:property value='subProductCategory.cateCode'/>","apiAccess":true},
	            contentType: "application/json",
	            dataType:"json",
	            cache:false,
	            success: function(data) {
	                if(data.success){
	                	var htmlArray = new Array();
	                	
	                	var theadHtml = $("#"+data.subProductCategory.cateCode+" thead").html();
	                	
	                	var tbodyTemplate = $("#"+data.subProductCategory.cateCode+" tbody").html();
    	
					    if(data.pagedResult.allRows>0){
					    	
					    	$.each(data.pagedResult.rs, function(i, obj){      
		                	      var trHtml = Mustache.render(tbodyTemplate, obj);
		                	      htmlArray.push(trHtml);
		                	});
		                	$("#dataTable").html("<thead>"+theadHtml+"</thead><tbody>"+htmlArray.join("")+"</tbody>");
		                	initPaginate(data.pagedResult.allPage,data.pagedResult.pageNo);
		                	$("#resultInfo").html("查询记录共计"+data.pagedResult.allRows+"条。");
		                	
					    }else{
					    	 var html = '<div class="row" style="margin-left:30px">暂无数据</div>';
					         $("#dataTable").parent().html(html);
					    }
	                	
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
    			bootbox.confirm("您确定要将此数据删除吗?", function(result) {
        			if(result){
                    	$.ajax({
                    		type:'post',
                    		url:'api/product_delete.do',
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