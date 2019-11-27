<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>标签添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight" border-radius: 0px>
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/span/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>标签基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="spanname">标签名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="spanname" name="spanName" type="text" placeholder="填写标签名称"/>
							</div>
						</div>
						<div class="form-group">

						<label class="col-sm-1 control-label" for="spanDescript">标签描述：</label>
							<div class="col-sm-4">
								<textarea class="form-control" rows="4" id="spanDescript" name="spanDescript"></textarea>
							</div>

						</div>
						<table class="table">
							<input type="hidden" name="goodsId" id="goodsId" value="${SpanGoodsEntity.goodsId}"/>

							<thead>
							<tr>
<%--								<th hidden></th>--%>
								<th>商品名称</th>
								<th>商品标号</th>
								<th>所属分类</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
							</thead>
							<tbody>
							<c:set var="vs"></c:set>
								<tr id="clo">

<%--									<td class="td" hidden>1</td>--%>

									<td >
											<input class="form-control" id="goodsName" name="goodsId" type="hidden"/>
											<input class="form-control" id="goodid" type="text" readonly placeholder="选择商品名称"/>
									</td>

								    <td>
											<input class="form-control" id="goodsNumber" name="goodsNumber" readonly type="text" />
									</td>
									<td>
										<input class="form-control" id="typeName" name="typeName" readonly type="text" />
									</td>
									<td>
										<input class="form-control" id="goodsStatus" name="goodsStatus" readonly type="text" />
									</td>


<%--									<td>--%>
<%--										<div>--%>
<%--										<input class="form-control" id="goodsName" name="goodsId" type="hidden"/>--%>
<%--										<input class="form-control" id="goodid" type="text" readonly placeholder="选择商品"/>--%>
<%--									    </div>--%>
<%--									</td>--%>
<%--									<td>${e.goodsNumber}</td>--%>
<%--									<td>${e.spanDescript}</td>--%>
<%--									<td>${e.goodsStatus}</td>--%>
									<td>
										<button type="button" class="btn" data-toggle="modal" id="delete" name="span/delete.do">
											<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>移除
										</button>

									</td>
								</tr>


							</tbody>
						</table>


					</fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-3 control-label" for="ds_host"></label>
                           	<div class="col-sm-3">
                              	<input type="submit" value="保存" class="btn btn-primary"/>
                           	</div>
                           	<div class="col-sm-3">
                              	<input type="reset" value="取消" class="btn btn-danger" id="resetForm"/>
                           	</div>
							<label class="col-sm-3 control-label" for="ds_host"></label>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
	<script type="text/javascript" src="${path }/view/product_center/products_span/js/menu-create.js"></script>
	<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>