<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
<%@ include file="/WEB-INF/jsp/content/main.jsp" %>
</head>

<body data-main-module="dcat/js/dataset/index">
<%-- 	<link rel="stylesheet" href="<%=path%>/dcat/css/dataset.css"/> --%>
<!-- 导航的头部 -->
    <div class="layui-layout layui-layout-admin">
	<%@ include file="/WEB-INF/jsp/content/header.jsp" %>
	 <div class="layui-container z-phone"> 
	 <div class="layui-side layui-bg-black">
<%@ include file="/WEB-INF/jsp/content/left.jsp"%> 
<%@ include file="/WEB-INF/jsp/content/textboby.jsp"%>
</div>
	 </div>
	
		 <%@ include file="/WEB-INF/jsp/content/footer.jsp"%>
	</div>
	


	 <div class="site-tree-mobile layui-hide">
  <i class="layui-icon">&#xe602;</i>
</div>
<div class="site-mobile-shade"></div>
  <script src="${basePath}/Assets/layui.all.js" type="text/javascript"></script>
  <script src="${basePath}/Assets/js/comm.js" type="text/javascript"></script>
<script>
    $(function () {
        $(".site-tree-mobile").click(function () {
            $("body").addClass("site-mobile");
            $(".site-mobile-shade").click(function () {
                $("body").removeClass("site-mobile");
            });
        });
    });

 //显示响应式菜单的显示与隐藏  
  $(".anniu").click(function(){
    
    if($(".ctree").css("display")=="none"){
        
        $(".ctree").show()
        
    }else{
        $(".ctree").hide()
   }
    })
    
    function dengru(){
	 
	  location.href = '${basePath}/logininfo';
 }
//  $(".ctree").css("display","block");
	//退出系统方法
	function logout() {
		
					location.href = '${basePath}logout.action';
				}
		
	
</script>
</body>
</html>