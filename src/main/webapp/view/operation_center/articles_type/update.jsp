<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>文章分组修改页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div>
		<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
	</div>
	<div class="ibox float-e-margins">
		<form action="${path }/articles_type/update.do" method="post" class="form-horizontal" role="form">
			<input type="hidden" name="articleTypeId" id="articleTypeId" value="${artTypeEntity.articleTypeId}"/>
			<fieldset>
				<legend>文章分组基本信息</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">分组名称</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="typeName" value="${artTypeEntity.typeName}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">描述</label>
					<div class="col-sm-4">
						<textarea class="form-control"  cols="50" rows="5"  name="typeDescripe" >${artTypeEntity.typeDescripe}</textarea>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host"></label>
					<div class="col-sm-4">
						<input type="submit" value="提交" class="btn btn-primary"/>
					</div>
					<label class="col-sm-2 control-label" for="ds_host"></label>
					<div class="col-sm-4">
						<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="${path}/static/js/plugins/file-input/fileinput.min.js"></script>
<script type="text/javascript" src="./js/dictionary.js"></script>
</html>