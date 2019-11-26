<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>标签页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">标签信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="product_center/products_span/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>


		                 </div>
	                </div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
                                    <th><input type="checkbox" id="checkall"/></th>

                                    <th>标签名称</th>
					                <th>商品数</th>
					                <th>描述</th>
                                    <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
                                        <td><input type="checkbox" name="ids" value="${e.spanId }"/></td>

                                        <td>${e.spanName}</td>
						                <td>${e.goodsSum}</td>
                                        <td>${e.spanDescript}</td>
						                <td>
											<button type="button" class="btn btn-link" onclick="update('span/update')">编辑</button>


											<button type="button" class="btn btn-link" onclick="look('span/look')">详情</button>

											<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="span/delete.do">
												<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
											</button>
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
	<script type="text/javascript" src="${path }/view/product_center/products_span/js/list.js"></script>
</html>