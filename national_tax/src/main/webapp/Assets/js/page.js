//显示信息
$(function(){
	common.showMessage($("#message").val())
})
//这个方法什么时候调用？
function search(currentPage){
	//分页
	$("#currentPage").val(currentPage);
	//查询
	$("#mainForm").submit();
}

function dodelete(slip_id){
	$.ajax({
		type:"get",
		url:"/national_tax/slip/dodelete/"+slip_id,
		async:true,
		success:function(){
			window.location.reload()
		}	
	})	
}

function doupdate(id){	
	 window.location.href="/national_tax/slip/doupdate/"+id	
}

/*向下拉框中填入数据*/
$(function(){
    var dd = new Date();
    var currentYear = dd.getFullYear();
    var size = currentYear - 2002 + 1;
    //$("#years").append($("<option value="+999+">"+"全部"+"</option>"));
    for( var i=0; i<size; i++ ){
        var yearOld = currentYear-i;
        $("#years").append($("<option value="+yearOld+">"+yearOld+"</option>"));
    }
});