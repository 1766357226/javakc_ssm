//修改
function fun(url) {
    var selected = $('input[name=ids]:checked').length;
        if (selected != 1) {
            swal({title: "温馨提示", text: "修改信息时,您只能选择一条记录修改?"});
            return false;
        }
        else {
            var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
            // alert(url);
            $("#searchForm").attr('action', url).submit();
        }

}
