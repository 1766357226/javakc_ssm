<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>商品页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="" method="post">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">商品详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group" role="group">
	                		<shiro:hasPermission name="goods:create">
			                	<button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="product/add.do">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
		                        </button>
	                        </shiro:hasPermission>
	                        <shiro:hasPermission name="user:update">
		                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="product/view.do">
		                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>编辑
		                        </button>
	                        </shiro:hasPermission>
	                        <shiro:hasPermission name="user:delete">
		                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="product/delete.do">
		                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
		                        </button>
	                        </shiro:hasPermission>
							<button type="button" class="btn btn-danger" data-toggle="modal" id="xiajia"/>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="searchname" name="goodsName" value="${entity.goodsName }" type="text" placeholder="查询内容 回车搜索"/>
						<input class="form-control" id="searchnumber" name="goodsNumber" value="${entity.goodsNumber }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
					<!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>全选</th>
					                <th>商品信息</th>
					                <th>当前售价</th>
					                <th>库存</th>
					                <th>30天销量</th>
					                <th>状态</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="u" items="${page.list }" varStatus="v">
						            <tr >
						                <td><input type="checkbox" name="ids" value="${u.goodsId }"/></td>
<%--						                <td>${v.count+(page.pageNo-1)*page.pageSize }</td>--%>
						                <td width="380px">
											<span>商品编码:${u.goodsNumber}</span>
											<span>商品类型:${u.typeId}</span>
											${u.goodsName }<br>
											<span>
												<c:forEach items="${u.spanList }" var="r">
													${r}
												</c:forEach>
											</span>
											<button type="button" class="btn btn-danger" data-toggle="modal" id="updatespan"/>
										</td>
						                <td>零售价：￥+${u.goodsPrice }</td>
						                <td>${u.goodsSum }</td>
										<td><zhg:show codeTp="status" value="${u.goodsStatus}"/></td>
						                <td>
						                	<c:forEach items="${u.spanList }" var="r">
						                		${r }
						                	</c:forEach>
						                </td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    	<div class="page">${page}</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>