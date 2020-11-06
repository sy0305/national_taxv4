

function add() {  
	if(check()){
		$("#mainForm").submit();
		$.ajax({
			type : "POST",
			url : "search",
			async : true,
			success:function(){
				alert("添加成功")
			 window.location.href="/national_tax/slip/search"
			}
				
		});
	}
}
	
		
	



function goback() {
	location.href=$("#basePath").val()+'/slip';
}



function update(){
	
	if(check()){
		$("#mainForm").submit();
		$.ajax({
			type : "POST",
			url : "search",
			async : true,
			success:function(){
				alert("修改成功")
			 window.location.href="/national_tax/slip/search"
			}
				
		});
	}
}





                 
	
function check() {
	
	
    return true;
}


