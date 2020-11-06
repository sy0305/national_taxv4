<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="pager" tagdir="/WEB-INF/tags/" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
	<link rel="stylesheet" type="text/css" href="${basePath}/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="${basePath}/css/select.css"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${basePath}/js/sliplist.js"></script>

<title>Document</title>
</head>
<body>

	<form id="mainForm" class="layui-form" lay-filter="test1" action="${basePath}/slip" method="post"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
 <input type="hidden" id="basePath" value="${basePath}"/>
 <input type="hidden" id="message" value="${pageCode.msg}"/>
 <input type="hidden" name="page.currentPage" id="currentPage" value="1"/>
  <div class="layui-form-item" id="one">
    <label class="layui-form-label" id="si">查询的年份</label>
 <div class="layui-input-block" id="san">
<select name="year"> 
<option value="1991">1991</option> 
<option value="1">1992</option> 
<option value="2">1993</option> 
<option value="3">1994</option> 
<option value="4">1995</option> 
<option value="5">1996</option> 
<option value="6">1997</option> 
<option value="7">1998</option> 
<option value="8">1999</option> 
<option value="9">2001</option> 
<option value="10">2002</option>
<option value="11">2003</option>
<option value="12">2004</option>
<option value="13">2005</option>
<option value="14">2006</option>
<option value="15">2007</option>
<option value="16">2008</option>
<option value="17">2009</option>
<option value="18">2010</option>
<option value="19">2011</option>
<option value="20">2012</option>
<option value="21">2013</option>
<option value="22">2014</option>
<option value="23">2015</option>
<option value="24">2016</option>
<option value="25">2017</option>
<option value="26">2018</option>
<option value="27">2019</option>
</select>
  </div>


<label class="layui-form-label">查询月份：</label>
 <div class="layui-input-block" id="two">

<select name="month"> 
<option value="1">1</option> 
<option value="2">2</option> 
<option value="2">3</option> 
<option value="1">4</option> 
<option value="1">5</option> 
<option value="1">6</option> 
<option value="1">7</option> 
<option value="1">8</option> 
<option value="1">9</option> 
<option value="1">10</option> 
<option value="1">11</option> 
<option value="12">12</option> 


</select> 

  </div>
  <input type="submit" class="layui-btn layui-btn-radius layui-btn-normal" onclick="search('1')" value="查询"  style="width: 80px;height: 40px;margin-left: 10px;"/>
  </div>


 


</br>
</br>

<table class="layui-table">
	 <thead>
	
<tr>
<th style="text-align: center;">序号</th>
<th style="text-align: center;">姓名</th>
<th style="text-align: center;">部门</th>
<th style="text-align: center;">基本工资</th>
<th style="text-align: center;">业务提成</th>
<th style="text-align: center;">社保</th>
<th style="text-align: center;">事假</th>
<th style="text-align: center;">个税</th>
<th style="text-align: center;">实发工资</th>
<th style="text-align: center;">功能操作</th>

  <tbody>

</tr>

		<c:forEach items="${list}" var="item" varStatus="s">
						<tr style="text-align: center;">
							<td>${s.index+1}</td>
							<td>${item.slipname}</td>
							<td>${item.department}</td>
						    <td>${item.pay}</td> 
							<td>${item.business}</td>
							<td>${item.social}</td>
							<td>${item.leave}</td>
							<td>${item.tax}</td>
							<td>${item.real_wages}</td>
							
							<td>
							<input class="layui-btn" value="添加" type="button" onclick="add();"/>
							<input class="layui-btn" value="删除" type="button" onclick="del();"/>
							<input class="layui-btn" value="修改" type="button" onclick="defent();"/>							
							</td>
						</tr>
						</c:forEach>

</tbody>
</table>
 <pager:page jsMethodName="search" page="${searchParam.page}"></pager:page>
 
  </form>

 <script>
function add() {
	location.href=document.getElementById("basePath").value+'/slip'+'/addInit'
}

</script>
<script type="text/javascript" src="${basePath}/layui.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;
        form.render();
        //各种基于事件的操作，下面会有进一步介绍
        //form.render('组件名','lay-filter名')
    });
</script>



</body>

</html>
