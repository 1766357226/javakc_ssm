
// ("#父窗口元素ID",window.parent.document)
//
//
// var i = 1;
// $(".td",window.parent.document).each(function(){
//     $(this).html(i++);
// })
// //添加一行
// $('#ascertain').click(function () {
//
//
//     var $td = $("#clo",window.parent.document).clone();       //增加一行,克隆第一个对象
//     $(".table",window.parent.document).append($td);
//     var i = 1;
//     $(".td",window.parent.document).each(function(){       //增加一行后重新更新序号1,2,3......
//         $(this).html(i++);
//     })
//     $("table tr:last").find(":input").val('');   //将尾行元素克隆来的保存的值清空
// });
//
// $('#delete',window.parent.document).click(	//删除一行
//     function del(){
//         $("table tr:not(:first):not(:first):last").remove();//移除最后一行,并且保留前两行
//     });
