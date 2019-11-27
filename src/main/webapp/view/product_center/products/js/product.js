function look(url) {
    var selected = $('input[name=ids]:checked').length;
    if (selected != 1) {
        swal({title: "温馨提示", text: "查看信息时,您只能选择一条记录查看！"});
        return false;
    }
    else {
        var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
        // alert(url);
        $("#searchForm").attr('action', url).submit();
    }
}
function update(url) {
    var selected = $('input[name=ids]:checked').length;
    if (selected != 1) {
        swal({title: "温馨提示", text: "修改信息时,您只能选择一条记录修改！"});
        return false;
    }
    else {
        var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
        // alert(url);
        $("#searchForm").attr('action', url).submit();
    }
}
function updateStatus(url) {
    var selected = $('input[name=ids]:checked').length;
    if (selected != 1) {
        swal({title: "温馨提示", text: "只能选择指定商品下架！"});
        return false;
    }
    else {
        var url = root+url+"/"+$('input[name=ids]:checked').val()+".do";
        // alert(url);
        $("#searchForm").attr('action', url).submit();
    }
}
