<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>用户展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="" method="post">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">用户详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group" role="group">
	                		<shiro:hasPermission name="user:create">
			                	<button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="user/add.do">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
		                        </button>
	                        </shiro:hasPermission>

                            <div class="btn-group hidden-xs" role="group">
                                <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="test/view.do">
                                    <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                                </button>
                                <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="test/delete.do">
                                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                                </button>
                            </div>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="userName" value="${entity.supName}" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
					<!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>序号</th>
					                <th>供应商名称</th>
					                <th>描述</th>
					                <th>地址</th>
					                <th>联系人</th>
					                <th>联系电话</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="sup" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${sup.supId}"/></td>
						                <td>${v.count+(page.pageNo-1)*page.pageSize }</td>
						                <td>${sup.supName}</td>
						                <td>${sup.supDescripte}</td>
						                <td>${sup.supAddress }</td>
						                <td>${sup.infoContacts }</td>
						                <td>${sup.infoPhone}</td>
                                        <td>
                                            <button type="button" class="btn btn-link" id="create" name="user/add.do">详情</button>
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