<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
<title>证券品种</title>
<link rel="stylesheet" type="text/css" href="${basePath}/Assets/css/reset.css"/>
<script type="text/javascript" src="${basePath}/Assets/js/jquery-1.8.3.min.js"></script>
<!--幻灯片-->
<script type="text/javascript" src="${basePath}/Assets/js/js_z.js"></script>
<!--幻灯片-->
<link rel="stylesheet" type="text/css" href="${basePath}/Assets/css/thems.css">
<script type="text/javascript" src="${basePath}/Assets/js/sliplist.js"></script>
</head>
<body>
<!--头部-->
<div class="head_t">
	<div class="head_tm">
    	<span>中信产业基金旗下互联网金融平台</span>
        <div class="head_tr">
        	<a href="" target="_blank">帮助中心</a>
            <a href="" class="code">
            	<span class="in_block">&nbsp;</span>
            </a>
        </div>
    </div>
</div>
<div class="header clearfix">
	<div class="logo"><a href=""><img src="${basePath}/Assets/images/logo.png" alt="邮富天下"/></a></div>
    <div class="nav clearfix">
		<a href="index.html">首页</a>
        <a href="xxpl.html">信息披露</a>
        <a href="zqpz.html" >证券品种</a>
        <a href="flgz.html">法律规则</a>
        <a href="">客户下载</a>
        <a href="about.html">关于本所</a>
        <a href=""class="now">客户服务</a>
    </div>
</div>
<!--头部-->
<!--幻灯片-->
<div class="banner banner_a">
	<img src="${basePath}/Assets/upload/banner_e.jpg" alt="证券品种"/>
</div>
<!--幻灯片-->
<div class="space_hx">&nbsp;</div>
<div class="second clearfix">
	<div class="sidenav">
    	<ul>
        	<li class="title"><span class="in_block">用户服务</span></li>
            <li><a href="">工资管理</a></li>
            <li><a href="">白银</a></li>
            <li><a href="">铜</a></li>
        </ul>
    </div>
    <div class="scd_r">
    	<div class="scd_rh">
        	新增信息
            <p>当前位置：<a href="">首页</a><<a href="">用户服务</a></p>
        </div>
        <div class="scd_rm">
            <!--模糊查询功能-->
        	<div class="scd_rma">
            	<p>工资管理</p>
                <div class="search" style="border: 0px">
                	<form action="" method="post">

                        <input name="" type="submit" class="sbtn3" value="">

                    </form>
                </div>
            </div>

            <div class="scd_rmb">
                <form id="mainForm" action="${basePath}/slip/add"  method="post">
                	<input type="hidden" id="basePath" value="${basePath}"/>
                    输入：
                    <select style="font-size: 8px" name="slip_year">
                        <option value ="volvo">请输入年份</option>
       <%for(int i=2001;i<2020;i++){%>
	

	<option value="<%=i%>"><%=i%></option>

	
<%} %>
</select>

                    <select style="font-size: 8px" name="slip_mouth">
                        <option value ="0" >请输入月份</option>
                        <option value ="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value ="4">4</option>
                        <option value ="5">5</option>
                        <option value ="6">6</option>
                        <option value ="7">7</option>
                        <option value ="8">8</option>
                        <option value ="9">9</option>
                        <option value ="10">10</option>
                        <option value ="11">11</option>
                        <option value ="12">12</option>
                    </select>
                    </br> </br>
<!--                     所在部门: <input type="text" name="user_department">
                    </br> </br> -->
                    基本工资(元):<input type="text" name="base_pay">
                    </br> </br>
                    业务提成(元):<input type="text" name="business_pay">
                    </br> </br>
                    五险一金合计(元):<input type="text" name="welfare_pay">
                    </br> </br>
                    事假(元):<input type="text" name="leave_pay">
                    </br> </br>
                    个税(元):<input type="text" name="tax_pay">
                    </br> </br>
                    实发工资(元):<input type="text" name="real_pay">
                </br></br>
                    <input type="button" value="提交" onclick="add()">
                    <input type="button" value="返回" onclick="goback();"/>
                    <input type="reset" value="重置">
                </form>

            </div>
        </div>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="foot_nav">
	<div class="foot_mt">&nbsp;</div>
	<ul class="foot_nm clearfix">
    	<li>
        	<h5>网上营业厅</h5>
            <p><a href="">高速行情</a></p>
            <p><a href="">账户管理</a></p>
            <p><a href="">交易下单</a></p>
            <p><a href="">设置口令</a></p>
            <p><a href="">基金账户</a></p>
            <p><a href="">转股回售</a></p>
            <p><a href="">风险承受能力测评</a></p>
            <p><a href="">高速行情</a></p>
        </li>
        <li>
        	<h5>服务与支持</h5>
            <p><a href="">软件下载</a></p>
            <p><a href="">金太阳手机证券</a></p>
            <p><a href="">IPO企业辅导公告</a></p>
        </li>
        <li>
        	<h5>业务推广</h5>
            <p><a href="">金算盘模拟基金</a></p>
            <p><a href="">金牛眼系列资讯</a></p>
            <p><a href="">来，与上市公司一起互动</a></p>
            <p><a href="">互动资讯平台</a></p>
            <p><a href="">全国中小企业股份转让系统</a></p>
        </li>
        <li>
        	<h5>风险教育</h5>
            <p><a href="">理财学院</a></p>
            <p><a href="">反洗钱</a></p>
            <p><a href="">打击非法证券活动</a></p>
            <p><a href="">开户协议及风险揭示书公示</a></p>
            <p><a href="">免责条款</a></p>
            <p><a href="">转股回售</a></p>
            <p><a href="">风险承受能力测评</a></p>
            <p><a href="">高速行情</a></p>
        </li>
        <li>
        	<h5>友情链接</h5>
            <p><a href="">国信期货</a></p>
            <p><a href="">国信香港</a></p>
            <p><a href="">国信弘盛</a></p>
        </li>
    </ul>
</div>
<div class="foot">
	<div class="foot_m">
    	<p>客户投诉受理专线：95536/0755-25822002<span>传真：0755-85133302</span></p>
        <p>客户投诉受理邮箱：19007@guosen.com.cn</p>
        <div class="foot_r">Copyright © 1998-2015 国信证券股份有限公司 版权所有 [粤ICP备10066668号 广东省通信管理局]</div>
    </div>
</div>
<script language="javascript">
$(function(){
	$('.nav a:last-child').css('margin-right',0+'px');
	$('.scd_rmb .zq td:last-child').css('border-right','1px solid #ddd');
	//幻灯片
	var w_width=$(window).width();
	var w_banner=(1920-w_width)/2;
	$('.banner_a img').css('margin-left','-'+w_banner+'px');
	
	
})
</script>
</body>
</html>