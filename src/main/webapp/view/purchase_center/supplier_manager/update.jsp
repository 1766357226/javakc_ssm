<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/sup/update.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden" name="supId" value="${entity.supId }" />
                    <fieldset>
						<legend>用户基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="supname">名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="supname" name="supName" type="text" value="${entity.supName}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人1</label>
							<div class="col-sm-2">
								<input class="form-control" id="infoontacts" name="infoContacts" type="text" value="${entity.infoContacts}"/>
							</div>
							<div class="col-sm-2">
								<input class="form-control" id="infophone" name="infoPhone" type="text" value="${entity.infoPhone}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人2</label>
							<div class="col-sm-2">
								<input class="form-control" id="infoontacts2" name="infoContacts2" type="text" value="${entity.infoContacts2}"/>
							</div>
							<div class="col-sm-2">
								<input class="form-control" id="infophone2" name="infoPhone2" type="text" value="${entity.infoPhone2}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="infocjin">地区</label>
							<div class="col-sm-4">
								<input class="form-control" id="infocjin" name="infoRcjin" type="text" value="${entity.infoRcjin}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="supaddress">详细地址</label>
							<div class="col-sm-4">
								<textarea  class="form-control" rows="3" id="supaddress" name="supAddress">${entity.supAddress}</textarea>
							</div>
							<label class="col-sm-1 control-label" for="supdescripte">描述</label>
							<div class="col-sm-4">
								<textarea class="form-control" rows="3" id="supdescripte" name="supDescripte" >${entity.supDescripte}</textarea>
							</div>
						</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>