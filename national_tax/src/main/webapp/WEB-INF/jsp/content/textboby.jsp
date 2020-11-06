<%@ page language="java" pageEncoding="UTF-8"%>
 <!--主题部分-->
    <div class="layui-body site-demo" style="border: 1px solid red;">
    <!-- 内容主体区域 -->
<!--    选项卡开始-->
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title" style="margin-left: 10px;">
    <li class="layui-this">网站设置</li>
    <li>用户管理</li>
    <li>权限分配</li>
    <li>商品管理</li>
    <li>订单管理</li>
  </ul>
  <div class="layui-tab-content"></div>
</div>  
   <!--    选项卡结束-->   
   <!--文字+按钮-->
   <div class="layui-container" style="border: 1px solid red;">
  <div class="layui-row">
    <span>所搜到0条数据</span>
     <div class="layui-col-md4" style="float: right;">
 <div class="layui-btn-group">
  <button class="layui-btn">增加</button>
  <button class="layui-btn">编辑</button>
  <button class="layui-btn">删除</button>
</div>
  </div>
  </div>
</div>    
<!--   表格开始-->
<table class="layui-table" lay-size="sm" style="margin-left: 10px;">
  <colgroup>
    <col width="200">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <th>昵称</th>
      <th>加入时间</th>
      <th>签名</th>
        <th>签名</th> 
    </tr> 
  </thead>
  <tbody>
    <tr>
      <td>贤心</td>
      <td>2016-11-29</td>
      <td>人生就像是一场修行</td>
      <td>人生就像是一场修行</td>
    </tr>
    <tr>
      <td>许闲心</td>
      <td>2016-11-28</td>
      <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
         <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
    </tr>
  </tbody>
</table>
<!--表格结束-->
  </div>