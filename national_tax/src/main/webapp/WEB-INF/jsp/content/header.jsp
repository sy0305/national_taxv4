<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
  <!--  顶部面包屑上导航开始-->
    <div class="layui-fluid ddao">
        <div class="layui-container">  
 <span class="layui-breadcrumb m1" lay-separator="|">
  <a href="">娱乐</a>
  <a href="">八卦</a>
  <a href="">体育</a>
  <a href="">搞笑</a>
  <a href="">视频</a>
  <a href="">游戏</a>
  <a href="">综艺</a>
</span>
 <span class="layui-breadcrumb m2" lay-separator="|">
  <a href="">娱乐</a>
  <a href="">八卦</a>
</span>
        <span class="layui-breadcrumb m3" lay-separator="|" style="float: right;">
  <a href="">登入</a>
  <a href="">注册</a>
</span> 
        </div>
        
        </div>
          <!--  顶部面包屑导航结束-->
  <div class="layui-header header" >
   <div class="layui-main">
    <a class="logo" href="/">
      <img src="${basePath}/Assets/images/nav_title.png" alt="政务信息资源共享交换平台"><span>政务信息资源共享交换平台</span>
    </a>

                    <!-- 搜索 -->
        
        <div class="layui-form component" lay-filter="LAY-site-header-component">
                    <select name="modules" lay-search="" lay-filter="component">
                        <option value="">直接选择或搜索选择</option>
                        <option value="1">layer</option>
                        <option value="2">form</option>
                        <option value="3">layim</option>
                        <option value="4">element</option>
                        <option value="5">laytpl</option>
                        <option value="6">upload</option>
                        <option value="7">laydate</option>
                        <option value="8">laypage</option>
                        <option value="9">flow</option>
                        <option value="10">util</option>
                        <option value="11">code</option>
                        <option value="12">tree</option>
                        <option value="13">layedit</option>
                        <option value="14">nav</option>
                        <option value="15">tab</option>
                        <option value="16">table</option>
                        <option value="17">select</option>
                        <option value="18">checkbox</option>
                        <option value="19">switch</option>
                        <option value="20">radio</option>
                    </select>
                  
                  <div class="layui-form-select">
                    <div class="layui-select-title">
                        <input type="text" placeholder="搜索功能组件或模块" class="layui-input" id="" value="" />
                          <!--添加搜索框按钮图标-->
                         <i class="layui-edge"></i>
                    
                    </div>
                    <dl class="layui-anim layui-anim-upbit" style=""><dd lay-value="" class="layui-select-tips layui-this">搜索组件或模块</dd><dd lay-value="element/layout.html" class="">grid 栅格布局</dd><dd lay-value="element/layout.html#admin" class="">admin 后台布局</dd><dd lay-value="element/color.html" class="">color 颜色</dd><dd lay-value="element/icon.html" class="">iconfont 字体图标</dd><dd lay-value="element/anim.html" class="">animation 动画</dd><dd lay-value="element/button.html" class="">button 按钮</dd><dd lay-value="element/form.html" class="">form 表单组</dd><dd lay-value="element/form.html#input" class="">input 输入框</dd><dd lay-value="element/form.html#select" class="">select 下拉选择框</dd><dd lay-value="element/form.html#checkbox" class="">checkbox 复选框</dd><dd lay-value="element/form.html#switch" class="">switch 开关</dd><dd lay-value="element/form.html#radio" class="">radio 单选框</dd><dd lay-value="element/form.html#textarea" class="">textarea 文本域</dd><dd lay-value="element/nav.html" class="">nav 导航菜单</dd><dd lay-value="element/nav.html#breadcrumb" class="">breadcrumb 面包屑</dd><dd lay-value="element/tab.html" class="">tabs 选项卡</dd><dd lay-value="element/progress.html" class="">progress 进度条</dd><dd lay-value="element/collapse.html" class="">collapse 折叠面板/手风琴</dd><dd lay-value="element/table.html" class="">table 表格元素</dd><dd lay-value="element/badge.html" class="">badge 徽章</dd><dd lay-value="element/timeline.html" class="">timeline 时间线</dd><dd lay-value="element/auxiliar.html#blockquote" class="">blockquote 引用块</dd><dd lay-value="element/auxiliar.html#fieldset" class="">fieldset 字段集</dd><dd lay-value="element/auxiliar.html#hr" class="">hr 分割线</dd><dd lay-value="modules/layer.html" class="">layer 弹出层/弹窗综合</dd><dd lay-value="modules/laydate.html" class="">laydate 日期时间选择器</dd><dd lay-value="modules/layim.html" class="">layim 即时通讯/聊天</dd><dd lay-value="modules/laypage.html" class="">laypage 分页</dd><dd lay-value="modules/laytpl.html" class="">laytpl 模板引擎</dd><dd lay-value="modules/form.html" class="">form 表单模块</dd><dd lay-value="modules/table.html" class="">table 数据表格</dd><dd lay-value="modules/upload.html" class="">upload 文件/图片上传</dd><dd lay-value="modules/element.html" class="">element 常用元素操作</dd><dd lay-value="modules/rate.html" class="">rate 评分</dd><dd lay-value="modules/colorpicker.html" class="">colorpicker 颜色选择器</dd><dd lay-value="modules/slider.html" class="">slider 滑块</dd><dd lay-value="modules/carousel.html" class="">carousel 轮播/跑马灯</dd><dd lay-value="modules/layedit.html" class="">layedit 富文本编辑器</dd><dd lay-value="modules/tree.html" class="">tree 树形菜单</dd><dd lay-value="modules/flow.html" class="">flow 信息流/图片懒加载</dd><dd lay-value="modules/util.html" class="">util 工具集</dd><dd lay-value="modules/code.html" class="">code 代码修饰</dd></dl>
                     
                  </div>
            </div>
                  </div>
 
              
 <!-- LOGO  也可以在css 中修改logo属性的样式-->
<!--  <h1 class="logoTitle">政务信息资源共享交换平台</h1>-->
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <!--<ul class="layui-nav layui-layout-right header-right">

    <li class="layui-nav-item"><a href="">首页</a></li>
 
      <li class="layui-nav-item"><a href="">目录</a></li>
   
 
      <li class="layui-nav-item"><a href="">登入</a></li>-->
 
 
  <ul class="layui-nav">
  <shiro:guest>
   <li class="layui-nav-item"><a href="">首页</a></li>
 </shiro:guest>
  <shiro:user>
  <li class="layui-nav-item">
    <a href="">目录<span class="layui-badge">9</span></a>
    <dl class="layui-nav-child">
      <dd><a href="javascript:;">本市目录</a></dd>
      <dd><a href="javascript:;">外市目录</a></dd>
    </dl>
    
  </li>
  </shiro:user>
 <shiro:guest>
      <li class="layui-nav-item"><a href="">目录</a></li>
   </shiro:guest>
   <shiro:user>
  <li class="layui-nav-item">
    <a href="">个人中心<span class="layui-badge-dot"></span></a>
  </li>
  </shiro:user>
 <shiro:guest>
      <li class="layui-nav-item"><a href="javascript:dengru()">登入</a></li>
  </shiro:guest>
     
  
  <shiro:user>
  <li class="layui-nav-item">
    <a href=""><img src="images/timg.jpg" class="layui-nav-img">帅哥</a>
    <dl class="layui-nav-child">
      <dd><a href="javascript:;">用户中心</a></dd>
      <dd><a href="javascript:;">账号设置</a></dd>
      <dd><a href="javascript:logout();">退出</a></dd>
    </dl>
  </li>
  </shiro:user>
   
</ul>
</div>

<!--导航部分-->
<div class="layui-fluid fluid">
<div class="layui-container layui-daohang">
    <!--常规导航开始-->
    <ul class="layui-nav cgui" lay-filter="">
  <li class="layui-nav-item"><a href="">最新活动</a></li>
  <li class="layui-nav-item layui-this"><a href="">产品</a></li>
  <li class="layui-nav-item"><a href="">大数据</a></li>
  <li class="layui-nav-item">
    <a href="javascript:;">解决方案</a>
    <dl class="layui-nav-child" style="position: absolute;top: 40px;"> <!-- 二级菜单 -->
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">社区</a></li>
</ul>
<!--常规导航结束-->
<!--响应式导航开始-->
    <p class="cdao-phone">请点击右侧的按钮选择菜单</p>
     <a class="anniu">
      <img src="${basePath}/Assets/images/zhedie.png" alt="请点击下拉导航">
    </a>
    <ul class="layui-nav layui-nav-tree ctree" lay-filter="test">
<!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
  <li class="layui-nav-item layui-nav-itemed">
    <a href="javascript:;">默认展开</a>
    <dl class="layui-nav-child">
      <dd><a href="javascript:;">选项1</a></dd>
      <dd><a href="javascript:;">选项2</a></dd>
      <dd><a href="">跳转</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item">
    <a href="javascript:;">解决方案</a>
    <dl class="layui-nav-child">
      <dd><a href="">移动模块</a></dd>
      <dd><a href="">后台模版</a></dd>
      <dd><a href="">电商平台</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item"><a href="">产品</a></li>
  <li class="layui-nav-item"><a href="">大数据</a></li>
</ul>
<!--响应式导航结束-->
  </div>
</div> 
<!--面包屑下导航开始-->
<div class="layui-fluid xm-nav">
<div class="layui-container xm-con">
    <span class="layui-breadcrumb">
  <a href="">首页</a>
  <a href="">国际新闻</a>
  <a href="">亚太地区</a>
  <a><cite>正文</cite></a>
</span>
    </div>
</div>

<!--面包屑下导航结束-->
<!-- 注意这里不能放东西，不然页面自动计算高度就不好用啦！！ -->