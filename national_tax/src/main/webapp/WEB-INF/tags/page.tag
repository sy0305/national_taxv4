<%@ tag language="java" pageEncoding="utf-8"%>

<!-- 获取页面的一些信息    引用一下 
Page" name="page" 页数  和总记录数  
获取属性 用attribute    -->

<%@ attribute type="com.camel.util.Page" name="page" required="true"%>
<%@ attribute type="java.lang.String" name="jsMethodName" required="true"%>
<script type="text/javascript">

/* 传一个当前的页码 参数 */
	function transCurrenPage(currentPage) {
		var rule = /^[0-9]*[1-9][0-9]*$/
		if(!rule.test(currentPage)) {
			currentPage = 1;
		}
		eval("${jsMethodName}(currentPage)");
	}
</script>
<div class="page fix">
	<a href="javascript:transCurrenPage('1')" class="first">首页</a>
	<a href="javascript:transCurrenPage('${page.currentPage-1}')" class="pre">上一页</a>
	当前第<span>${page.currentPage}/${page.totalPage}</span>页
	<a href="javascript:transCurrenPage('${page.currentPage+1}')" class="next">下一页</a>
	<a href="javascript:transCurrenPage('${page.totalPage}')" class="last">末页</a>
	跳转&nbsp;<input type="text" id="currentPageText" value="1" class="allInput w28">&nbsp;页 &nbsp;
	<a href="javascript:transCurrenPage($('#currentPageText').val())" class="go">GO</a>
</div>