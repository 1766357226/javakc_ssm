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
	                <div class="alert alert-success" role="alert">供应商详细信息</div>
	                <div class="col-sm-3 col-sm-offset-9">
	                	<div class="btn-group" role="group">
	                		<shiro:hasPermission name="user:create">
			                	<button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="sup/add.do">
		                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
		                        </button>
	                        </shiro:hasPermission>
		                 </div>
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
                                            <button type="button" class="btn btn-link" onclick="update('sup/view')">编辑</button>
                                            <button type="button" class="btn btn-link" onclick="look('sup/look')">详情</button>
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
    <script type="text/javascript" src="${path }/view/purchase_center/supplier_manager/js/supplier_manager.js"></script>
</html>