<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>文章管理详情页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div>
		<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
	</div>
	<div class="ibox float-e-margins">
		<form action="${path }/article/queryArticle.do" method="post" class="form-horizontal" role="form">
			<input type="hidden" name="articleId" id="articleId" value="${articlesEntity.articleId}"/>
			<fieldset>
				<legend>文章管理基本信息</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">标题</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="articleName" value="${articlesEntity.articleName}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">浏览量</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="viewNumber" value="${articlesEntity.viewNumber}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">状态</label>
					<div class="col-sm-4">
						<zhg:select codeTp="typeStatus" name="articleStatus" cls="form-control" def="true" value="${articlesEntity.articleStatus}"></zhg:select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host">文章描述</label>
					<div class="col-sm-4">
						<textarea class="form-control"  cols="50" rows="5"  name="articleDescripe" >${articlesEntity.articleDescripe}</textarea>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="ds_host"></label>
					<div class="col-sm-4">
						<input type="submit" value="返回" class="btn btn-primary"/>
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