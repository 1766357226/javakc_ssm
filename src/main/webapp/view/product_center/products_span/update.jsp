<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商修改页面</title>
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
                    <fieldset>
						<legend>标签基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="supname">标签名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="supname" name="supName" type="text" value="${entity.spanName}"/>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-1 control-label" for="supaddress">标签描述</label>
							<div class="col-sm-4">
								<textarea  class="form-control" rows="3" id="supaddress" name="supAddress">${entity.spanDescript}</textarea>
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

					<fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>