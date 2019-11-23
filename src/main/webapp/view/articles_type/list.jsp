<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<title>标签页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
>>>>>>> 9f22c88ba976c5e7ea9064ef8ded42f53bd9a435:src/main/webapp/view/product_center/products_span/list.jsp
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
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="test/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>


		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="testName" value="${Span.spanName}" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
<<<<<<< HEAD:src/main/webapp/view/articles_type/list.jsp
					                <th>分组名称</th>
					                <th>预览图</th>
					                <th>描述</th>
									<th>分组状态</th>
=======
					                <th>标签名称</th>
					                <th>商品数</th>
					                <th>描述</th>
                                    <th>操作</th>
>>>>>>> 9f22c88ba976c5e7ea9064ef8ded42f53bd9a435:src/main/webapp/view/product_center/products_span/list.jsp
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
<<<<<<< HEAD:src/main/webapp/view/articles_type/list.jsp
						                <td>${e.articleTypeId }</td>
						                <td>${e.typeName}</td>
						                <td>${e.typeImage}</td>
						                <td>${e.typeDescript}</td>
										<td>${e.typeStatus}</td>
=======

                                        <td>${e.spanName}</td>
						                <td>${e.spanNumber}</td>
                                        <td>${e.spanDescript}</td>
						                <td>
                                            <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="test/view.do">
                                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                                            </button>

                                            <button type="button" class="btn btn-success" data-toggle="modal" id="query" name="test/queryById.do">
                                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>详情
                                            </button>

                                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="test/delete.do">
                                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                                            </button>
                                        </td>
>>>>>>> 9f22c88ba976c5e7ea9064ef8ded42f53bd9a435:src/main/webapp/view/product_center/products_span/list.jsp
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