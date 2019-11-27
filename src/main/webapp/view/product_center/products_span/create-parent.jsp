<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>菜单展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>

	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
					<div class="col-sm-12">
						<table class="tree table table-striped table-bordered table-hover table-condensed">
							<thead>
					            <tr>
					                <th>选择</th>
					                <th>商品名称</th>

					            </tr>
					        </thead>
					        <tbody>
								<c:forEach var="m" items="${page }" varStatus="v">
									<tr>
										<td>
											<input type="radio" name="goodsId" value="${m.goodsId }" value1="${m.goodsName }" value2="${m.goodsNumber }" value3="${m.typeName}" value4="${m.goodsStatus}"/>
										</td>

										<td>${m.goodsName }</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-sm-8">
		                	<div class="btn-group" role="group">
			                	<button type="button" class="btn btn-primary" data-toggle="modal" id="ascertain">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true" ></i>确定
		                        </button>
		                        <button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
		                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>关闭
		                        </button>
			                 </div>
		                </div>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
		<script type="text/javascript" src="<%=path%>static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
		<script type="text/javascript" src="${path }/view/product_center/products_span/js/menu-create.js"></script>

		<script type="text/javascript">
			$(function()
			{


				var index = parent.layer.getFrameIndex(window.name);

				$('#ascertain').click(function()
				{
					var count = $('[name=goodsId]:checked').length;
					if(count == 0)
					{
						layer.msg('怎么着, 没有喜欢的?', {icon: 4});
						return;
					}
					else
					{
						var id = $('[name=goodsId]:checked').val();
						var name = $('[name=goodsId]:checked').attr('value1');
						var number = $('[name=goodsId]:checked').attr('value2');
						var typename = $('[name=goodsId]:checked').attr('value3');
						var status = $('[name=goodsId]:checked').attr('value4');

						parent.$('#goodid').val(name);
						parent.$('#goodsName').val(id);
						parent.$('#goodsNumber').val(number);
                        parent.$('#typeName').val(typename);
                        parent.$('#goodsStatus').val(status);

                        parent.layer.close(index);
					}
				});

				$('#shutdo').click(function()
				{
					parent.layer.close(index);
				});

				$('#ascertain').click(function () {

					window.opener
				})
			});


		</script>
	</body>
</html>