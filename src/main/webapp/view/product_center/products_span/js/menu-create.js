$(function()
{

    //选择父类触发事件
	$('#goodid').click(function()
	{
		layer.open({
		  type: 2,
		  title: '选择菜单父类',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['65%', '65%'],
		  content: root+'/span/createParent.do'
		}); 
	});

	$('form:eq(0)').bootstrapValidator({
		excluded:[":disabled"],
		trigger:"change",
    	feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        }


    });

    //
    // //前面的序号1,2,3......
    // var i = 1;
    // $(".td").each(function(){
    //     $(this).html(i++);
    // })
    // //添加一行
    // $('#addrow').click(function(){
    //     var $td = $("#clo").clone();       //增加一行,克隆第一个对象
    //     $(".table").append($td);
    //     var i = 1;
    //     $(".td").each(function(){//增加一行后重新更新序号1,2,3......
    //         $(this)
    //         $(this).html(i++);
    //     })
    //     $("table tr:last").find(":input").val('');   //将尾行元素克隆来的保存的值清空
    // });
    // //删除一行
    // $('#delete').click(function(){
    //     $("table tr:not(:first):not(:first):last").remove();//移除最后一行,并且保留前两行
    // })
	
});


