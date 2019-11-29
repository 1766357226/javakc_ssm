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
	                <div class="alert alert-success" role="alert">订购单详细信息</div>
                    <div class="row">
                    <div class="col-sm-4" style="color: #0d8ddb">
						<button type="button" class="btn btn-link" onclick="find(0)">全部${count.count[0]}</button>
						<button type="button" class="btn btn-link" onclick="find(3)">待确认${count.count[3]}</button>
						<button type="button" class="btn btn-link" onclick="find(1)">待入库${count.count[1]}</button>
						<button type="button" class="btn btn-link" onclick="find(2)">已关闭${count.count[2]}</button>
					</div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8">
                            <input type="text" name="purNumber" placeholder="请输入采购单编号" value="${entity.purNumber}"/>
                            <select name="supId">
                                <option value="" >请选择供应商</option>
                                <c:forEach var="pur" items="${supName}" varStatus="v">
                                <option value="${pur.supId}" ${entity.supId==pur.supId?"selected":"" }>${pur.supName}</option>
                                </c:forEach>
                            </select>
                            采购时间
                            <input type="date" onchange="date(this)" id="logmin" name="sdate" class="input-text Wdate" value="<fmt:formatDate value="${entity.sdate}" pattern="yyyy-MM-dd"/>" style="width:150px;">
                            至
                            <input type="date" onchange="date(this)" id="logmax" name="edate"  class="input-text Wdate" value="<fmt:formatDate value="${entity.edate}" pattern="yyyy-MM-dd"/>" style="width:150px;">
<%--                            value='<f:formatDate value="${pager.sdate}" pattern="yyyy-MM-dd"/>'--%>
							<button type="button" class="btn btn-primary" data-toggle="modal" onclick="search()" name="order/query.do">
								<i class="glyphicon glyphicon-search" aria-hidden="true"></i>查询</button>
                        </div>
                            <div class="col-sm-2  col-sm-offset-2">
                                <div class="btn-group" role="group">
                                    <shiro:hasPermission name="user:create">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" id="add" name="sup/add.do">
                                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
                                        </button>
                                    </shiro:hasPermission>
                                </div>
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
					                <th>入库状态</th>
					                <th>审核状态</th>
					                <th>采购单编号</th>
					                <th>供应商</th>
					                <th>采购金额</th>
					                <th>创建时间</th>
                                    <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:forEach var="pur" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${sup.supId}"/></td>
						                <td>${v.count+(page.pageNo-1)*page.pageSize }</td>
						                <td><zhg:show value="${pur.purType}" codeTp="purType"></zhg:show></td>
						                <td><zhg:show value="${pur.checkStatus}" codeTp="checkStatus"></zhg:show></td>
						                <td>${pur.purNumber}</td>
						                <td>${pur.supName}</td>
						                <td>${pur.purMoney}</td>
										<td><fmt:formatDate value="${pur.purCreateDate}" pattern="yyyy-MM-dd"/></td>
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

    <script type="text/javascript" src="${path }/view/purchase_center/purchase_order/js/order.js"></script>
</html>