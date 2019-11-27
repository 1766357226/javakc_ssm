<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商查看页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/span/update.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden" name="spanId" value="${entity.spanId }" />
                    <fieldset style="border: 1px solid #777777;">

						<div class="form-group">
							<label class="col-sm-1 control-label">标签描述：</label>
							<div class="col-sm-4">
								${entity.spanName}
							</div>
						</div>
						<div  class="form-group">
							<label class="col-sm-1 control-label">标签描述：</label>
							<div class="col-sm-4">
								${entity.spanDescript}
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
									<td>${g.goodsName }</td>
									<td>${g.goodsNumber}</td>
									<td>${g.typeName}</td>
									<td>${g.goodsStatus}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</fieldset>

                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>