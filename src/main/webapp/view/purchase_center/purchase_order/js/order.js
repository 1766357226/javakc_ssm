//修改
function find(n) {
            var url = root+"/order/query.do?purType="+n;
            // alert(n);
            $("#searchForm").attr('action',url).submit();
        // document.location.href=url;
}
function search() {
    $('#searchForm').submit();
}
function date(u) {
   var id=$(u).attr("id");
   if(id=='logmin'){
       if($('#logmax').val()!=""){
           if($(u).val()> $('#logmax').val()){
               alert("请选择比"+$('#logmax').val()+"小的时间");
               $(u).val(null)
           }
       }
    }
    if(id=='logmax'){
        if($('#logmin').val()!=null){
            if($(u).val()< $('#logmin').val()){
                alert("请选择比"+$('#logmin').val()+"大的时间");
                $(u).val(null)
            }
        }
    }
    // if($('#logmin').val()< $('#logmax').val()){
    //     return true;
    // }
    // else {
    //     alert("请选择比"+$('#logmin').val()+"大的时间");
    //     $('#logmax').val(null)
    // }
}