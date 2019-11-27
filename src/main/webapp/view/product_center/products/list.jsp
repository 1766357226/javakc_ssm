<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
					<!-- ------------按钮组 endt------------ -->
					<!-- ------------搜索------------ -->
					 <div class="form-group">
						 <div class="col-sm-2">
							 <input class="form-control" id="searchName" name="goodsName" value="${entity.goodsName }" type="text" placeholder="输入名称"/>
						 </div>
						 <div class="col-sm-2">
							 <input class="form-control" id="searchNumber" name="goodsNumber" value="${entity.goodsNumber }" type="text" placeholder="输入编号"/>
						 </div>
						 <div class="col-sm-2">
							 <input class="form-control" id="searchType" name="goodsType" value="${entity.goodsType }" type="text" placeholder="输入类别"/>
						 </div>
						 <div class="col-sm-2">
							 <zhg:select codeTp="goodsStatus" cls="form-control" def="true"></zhg:select>
						 </div>
							 <div class="col-sm-2">
								 <button type="button" class="btn btn-primary" data-toggle="modal" id="search" name="product/query.do">查询</button>
							 </div>
						 <div class="col-sm-2">
							 <button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="product/add.do">新增</button>
						 </div>
					 </div>
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/>全选</th>
					                <th>商品信息</th>
					                <th>当前售价</th>
					                <th>库存</th>
					                <th>30天销量</th>
					                <th>状态</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="u" items="${page.list }" varStatus="v">
						            <tr >
						                <td><input type="checkbox" name="ids" value="${u.goodsId }"/></td>
											<%-- <td>${v.count+(page.pageNo-1)*page.pageSize }</td>--%>
						                <td width="300px">
											<span>商品编码:${u.goodsNumber}</span><br>
											<span>商品类型:${u.typeName}</span><br>
											<span>${u.goodsName }</span><br>
											<span class="label label-info">
												<c:forEach items="${u.spanList}" var="r">
													${r}
												</c:forEach>
												<button type="button" class="btn btn-primary" data-toggle="modal" onclick="updateSpan()"/>
											</span>

										</td>
						                <td>零售价：￥${u.goodsPrice }</td>
						                <td>${u.goodsSum}</td>
										<td>${u.goodsSales}</td>
										<td><zhg:show codeTp="goodsStatus" value="${u.goodsStatus}"></zhg:show></td>
										<td>
											<button type="button" class="btn btn-danger" onclick="updateStatus('product/updateStatus')" >下架</button>
											<button type="button" class="btn btn-success" data-toggle="modal" onclick="update('product/get')" >编辑</button>
											<button type="button" class="btn btn-primary" onclick="look('product/look')">详情</button>
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
	<script type="text/javascript" src="${path }/view/product_center/products/js/product.js"></script>
</html>