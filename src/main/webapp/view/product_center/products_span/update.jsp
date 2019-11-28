<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>标签修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/span/updateSpan.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="txt" id="spanId" name="spanId" value="${entity.spanId }" />
					<input type="txt" id="goodsId" name="goodsId" value="${good.goodsId }" />
					<input type="txt" id="typeId" name="typeId" value="${type.typeId }" />


					<fieldset>
						<legend>标签基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="spanName">标签名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="spanName" name="spanName" type="text" value="${entity.spanName}"/>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-1 control-label" for="spanDescript">标签描述</label>
							<div class="col-sm-4">
								<textarea  class="form-control" rows="3" id="spanDescript" name="spanDescript">${entity.spanDescript}</textarea>
							</div>
						</div>
                    </fieldset>

					<fieldset>
						<legend>商品清单</legend>
						<table class="table table-bordered">
							<thead>
							<tr style="background-color: #828282">
								<th>商品名称</th>
								<th>商品编号</th>
								<th>所属分类</th>
								<th>状态</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="g" items="${page}" varStatus="v">
								<tr>


									<td>

										<input class="form-control" id="goodsName" name="goodsName" type="text" value="${g.goodsName }"/>

									</td>
									<td>

											<input class="form-control" id="goodsNumber" name="goodsNumber" type="text" value="${g.goodsNumber }"/>

									</td>
									<td>
											<input class="form-control" id="typeName" name="typeName" type="text" value="${g.typeName }"/>

									</td>
									<td>

											<input class="form-control" id="goodsStatus" name="goodsStatus" type="text" value="${g.goodsStatus }"/>

									</td>

								</tr>
							</c:forEach>
							</tbody>
						</table>
					</fieldset>

					<fieldset>
                        <div class="form-group">

							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-4">
								<input type="reset" value="重置" class="btn btn-danger"/>
							</div>


							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-4">
								<input type="submit" value="提交" class="btn btn-primary"/>
							</div>


                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
	<script type="text/javascript" src="${path }/view/product_center/products_span/js/list.js"></script>


</html>