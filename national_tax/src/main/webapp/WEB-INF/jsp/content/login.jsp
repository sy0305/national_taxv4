<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/WEB-INF/jsp/content/main.jsp" %>
</head>
<body>
	<form id="loginform" class="layui-form" action="${basePath}login" method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">输入框</label>
    <div class="layui-input-block" style="width: 200px;">
      <input type="text" name="username" required   placeholder="请输入账号" autocomplete="on" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码框</label>
    <div class="layui-input-inline">
      <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux">辅助文字</div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="loginsubmit()">登录</button>
    </div>
  </div>
</form>
     <script src="${basePath}/Assets/layui.all.js" type="text/javascript"></script>
      <script src="${basePath}/Assets/js/comm.js" type="text/javascript"></script>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});


function loginsubmit() {
	$("#loginform").submit();

}
</script>
</body>
</html>