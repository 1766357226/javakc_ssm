$(function () {
    var setting={
        data:{
            simpleData:{
                enable:true
            }
        }
    };

    $.post(root+'centertype/queryType.do',function (zNode) {
        $.fn.zTree.init($("#treeDemo"),setting,zNode)
    },'json')
})