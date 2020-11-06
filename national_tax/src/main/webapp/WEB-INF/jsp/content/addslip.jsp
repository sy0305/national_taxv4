<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<link rel="stylesheet" type="text/css" href="${basePath}/css/layui.css"/>
	<script type="text/javascript" src="${basePath}/js/add.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<title>Document</title>
</head>
<body>
	
	<form id="mainForm" class="layui-form" action="${basePath}/slip/add" method="post" enctype="multipart/form-data">
		<input type="hidden" id="basePath" value="${basePath}"/>
		<div class="layui-form-item" id="one">
    <label class="layui-form-label" id="si">输入年份</label>
 <div class="layui-input-block" id="san">
<select name="year" value="${curStatus}"> 
<%-- <option value="1991" <c:if test="${'0' eq curStatus}"></c:if>>1991</option> 
<option value="1992">1992</option> 
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
<option value="27">2019</option> --%>

<%for(int i=2001;i<2020;i++){%>
	

	<option value="<%=i%>"><%=i%></option>

	
<%} %>
</select>
  </div>


<label class="layui-form-label">输入月份</label>
 <div class="layui-input-block" id="two">

<select name="mouth"> 
<option value="0">1</option> 
<option value="1">2</option> 
<option value="1">3</option> 
<option value="1">4</option> 
<option value="1">5</option> 
<option value="1">6</option> 
<option value="1">7</option> 
<option value="1">8</option> 
<option value="1">9</option> 
<option value="1">10</option> 
<option value="1">11</option> 
<option value="1">12</option> 


</select> 
</div>
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
      <input type="text" name="Slipname" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">部门</label>
    <div class="layui-input-block">
      <input type="text" name="department" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">基本工资</label>
    <div class="layui-input-block">
      <input type="text" name="Base_pay" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">业务提成</label>
    <div class="layui-input-block">
      <input type="text" name="business" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">社保</label>
    <div class="layui-input-block">
      <input type="text" name="social" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">事假</label>
    <div class="layui-input-block">
      <input type="text" name="leave" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
     <div class="layui-form-item">
    <label class="layui-form-label">个税</label>
    <div class="layui-input-block">
      <input type="text" name="tax" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
     <div class="layui-form-item">
    <label class="layui-form-label">实发工资</label>
    <div class="layui-input-block">
      <input type="text" name="real_wages" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
    <input class="layui-btn" value="保     存" type="button" onclick="add();"/>&nbsp;&nbsp;&nbsp;&nbsp;
	<input class="layui-btn" value="返     回" type="button" onclick="goback();"/>
    <!--   <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button> -->
    </div>
  </div>
</form>
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
