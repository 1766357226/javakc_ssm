

//查看
function look(url) {
	var selected = $('input[name=ids]:checked').length;
	if (selected != 1) {
		swal({title: "温馨提示", text: "查看信息时,您只能选择一条记录查看?"});
		return false;
	}
	else {
		var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
		// alert(url);
		$("#searchForm").attr('action', url).submit();
	}
}

//修改
// function update(url) {
// 	var selected = $('input[name=ids]:checked').length;
// 	if (selected != 1) {
// 		swal({title: "温馨提示", text: "修改信息时,您只能选择一条记录修改?"});
// 		return false;
// 	}
// 	else {
// 		var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
// 		alert(url);
// 		$("#searchForm").attr('action', url).submit();
// 	}
// }






//编辑查看
function fff(url) {
	var selected = $('input[name=ids]:checked').length;
	if (selected != 1) {
		swal({title: "温馨提示", text: "查看信息时,您只能选择一条记录查看?"});
		return false;
	}
	else {
		var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
		alert(url);
		$("#searchForm").attr('action', url).submit();
	}
}



//点击展示页面添加按钮触发事件
$('#upspan').click(function()
{
	var url = $(this).attr('name');
	document.location.href=root+url;
	// alert(url);

	$("#searchForm").attr('action', url).submit();
});



