<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>文章分组展示列表页面</title>
	<%@ include file="../../common/jsp/header.jsp"%>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">文章分组详细信息</div>
				<div class="col-sm-8">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="articles_type/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="articles_type/view.do">
							<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
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
						<th>分组名称</th>
						<th>预览图</th>
						<th>描述</th>
						<th>分组状态</th>
					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list }" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.articleTypeId}"/></td>
							<td>${e.typeName }</td>
							<td><img src="<%=path%>/static/img/${e.typeImage}.png"
									 style="height: 50px; width: 50px;"
									 onerror="javascript:this.src='<%=path%>/static/img/a1.jpg'"/></td>
							<td>${e.typeDescripe }</td>
							<td>${e.typeStatus }</td>
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