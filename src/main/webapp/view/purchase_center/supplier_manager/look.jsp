<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商查看页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/sup/query.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden" name="supId" value="${entity.supId }" />
                    <fieldset style="border: 1px solid #777777;">
						<legend>用户基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label">名称</label>
							<div class="col-sm-4">
								${entity.supName}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人1</label>
							<div class="col-sm-1">
								${entity.infoContacts}
							</div>
							<div class="col-sm-1">
								${entity.infoPhone}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人2</label>
							<div class="col-sm-1">
							${entity.infoContacts2}
							</div>
							<div class="col-sm-1">
								${entity.infoPhone2}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">地区</label>
							<div class="col-sm-4">
								${entity.infoRcjin}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">详细地址</label>
							<div class="col-sm-4">
								${entity.supAddress}
							</div>
						</div>
						<div  class="form-group">
							<label class="col-sm-1 control-label">描述</label>
							<div class="col-sm-4">
								${entity.supDescripte}
							</div>
						</div>
                    </fieldset>
					<fieldset>
						<legend>商品清单</legend>
						<table class="table table-bordered">
							<thead>
							<tr style="background-color: #828282">
							<th>商品名称</th>
							<th>商品编号</th>
							<th>销量</th>
							<th>供货价</th>
							<th>销售价</th>
							<th>状态</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="g" items="${page}" varStatus="v">
								<tr>
									<td>${g.supGoodsName }</td>
									<td>${g.supGoodsNumber}</td>
									<td>${g.supGoodsSum}</td>
									<td>${g.supGoodsPrice }</td>
									<td>${g.supGoodsSellPrice}</td>
									<td>
										<zhg:show value="${g.supGoodsStatus}" codeTp="supGoodsStatus"></zhg:show>
<%--										${g.supGoodsStatus}--%>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-5 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="返回" class="btn btn-primary"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>