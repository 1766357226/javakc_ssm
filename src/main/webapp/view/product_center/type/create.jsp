<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/centertype/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>基础类目信息</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" >分类名称</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text" name="typeName" placeholder="分类名称"/>
                          </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" >是否展示</label>
                          <div class="col-sm-2">
                             <input type="radio" name="typeOpen" value="0"/>关闭
							  <input TYPE="radio" name="typeOpen" value="1"/>展开
                          </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" >分类等级</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="typeNum">
							</div>
						</div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" ></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
								<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>