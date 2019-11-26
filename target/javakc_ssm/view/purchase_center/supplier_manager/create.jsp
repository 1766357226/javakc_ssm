<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/sup/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>供应商基本信息</legend>

						<div class="form-group">
							<label class="col-sm-1 control-label" for="supname">名称</label>
							<div class="col-sm-4">
								<input class="form-control" id="supname" name="supName" type="text" placeholder="填写供应商名称"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人1</label>
							<div class="col-sm-2">
								<input class="form-control" id="infoontacts" name="infoContacts" type="text" placeholder="填写联系人姓名"/>
							</div>
							<div class="col-sm-2">
								<input class="form-control" id="infophone" name="infoPhone" type="text" placeholder="填写联系方式"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label">联系人2</label>
							<div class="col-sm-2">
								<input class="form-control" id="infoontacts2" name="infoContacts2" type="text" placeholder="填写备用联系人姓名"/>
							</div>
							<div class="col-sm-2">
								<input class="form-control" id="infophone2" name="infoPhone2" type="text" placeholder="填写备用联系方式"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="infocjin">地区</label>
							<div class="col-sm-4">
								<input class="form-control" id="infocjin" name="infoRcjin" type="text" placeholder="填写地区名称"/>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-1 control-label" for="supaddress">详细地址</label>
							<div class="col-sm-4">
								<textarea class="form-control" rows="3" id="supaddress" name="supAddress"></textarea>
							</div>
							<label class="col-sm-1 control-label" for="supdescripte">描述</label>
							<div class="col-sm-4">
								<textarea class="form-control" rows="3" id="supdescripte" name="supDescripte"></textarea>
							</div>
						</div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">D
                        	<label class="col-sm-2 control-label"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" ></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>