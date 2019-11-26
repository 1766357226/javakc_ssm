//修改
function find(n) {
            var url = root+"/order/query.do?purType="+n;
            // alert(n);
            $("#searchForm").attr('action',url).submit();
        // document.location.href=url;
}
