<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>文章管理展示列表页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>

</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">文章管理详细信息</div>
				<div class="col-sm-2">
					<div class="btn-group hidden-xs" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="operation_center/articles/create.jsp">
							<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
						</button>
					</div>
				</div>
				<div class="col-sm-4">
					<input class="form-control" id="searchName" name="articleName" value="${articlesEntity.articleName}" type="text" placeholder="请输入文章标题"/>
				</div>
				<div class="col-sm-6">

				</div>
				<!-- ------------按钮组 end------------ -->
				<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
				<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
					<tr>
						<th><input type="checkbox" id="checkall"/></th>
						<th>标题</th>
						<th>浏览量</th>
						<th>状态</th>
						<th>文章描述</th>
						<th>是否推荐</th>
						<th>编辑</th>
					</tr>
					</thead>
					<tbody>
					<c:set var="vs"></c:set>
					<c:forEach var="e" items="${page.list }" varStatus="v">
						<tr>
							<td><input type="checkbox" name="ids" value="${e.articleId}"/></td>
							<td>${e.articleName }</td>
							<td>${e.viewNumber}</td>
							<td><zhg:show value="${e.articleStatus}" codeTp="articleStatus"></zhg:show></td>
							<td>${e.articleDescripe}</td>
							<td><zhg:show value="${e.ifRecommend}" codeTp="ifRecommend"></zhg:show></td>
							<td>
								<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="article/view.do">
									<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
								</button>
								<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="article/delete.do">
								<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
								</button>
								<button type="button" class="btn btn-danger" data-toggle="modal"  onclick="detail('article/detail')">详情</button>
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
<script type="text/javascript" src="${path }/view/operation_center/articles/js/articles.js"></script>
</html>