//查看
function detail(url) {
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
function search() {
    $("#searchForm").submit();
}