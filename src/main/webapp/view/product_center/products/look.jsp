<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>商品详情页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<style type="text/css">
			a{      /* 统一设置所以样式 */
				font-family:Arial;
				font-size:12px;
				text-align:center;
				margin:3px;
			}
			a:link,a:visited{  /* 超链接正常状态、被访问过的样式 */
				color:#A62020;
				padding:4px 10px 4px 10px;
				background-color:#ecd8bd;
				text-decoration:none;

				border-top:1px solid #EEEEEE; /* 边框实现阴影效果 */
				border-left:1px solid #EEEEEE;
				border-bottom:1px solid #717171;
				border-right:1px solid #717171;
			}
			a:hover{       /* 鼠标指针经过时的超链接 */
				color:#821818;     /* 改变文字颜色 */
				padding:5px 8px 3px 12px;  /* 改变文字位置 */
				background-color:#e2c4c9;  /* 改变背景色 */
				border-top:1px solid #717171; /* 边框变换，实现“按下去”的效果 */
				border-left:1px solid #717171;
				border-bottom:1px solid #EEEEEE;
				border-right:1px solid #EEEEEE;
			}
		</style>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="col-sm-12" class="btn-group hidden-xs" role="group">
				<div style="background: #26d7d9">
					<div class="col-sm-3" >
						<a href="#info"  >商品信息</a>
					</div>
					<div class="col-sm-3">
						<a href="#attribute"  >商品属性</a>
					</div>
					<div class="col-sm-3">
						<a href="#brands" >商品标签</a>
					</div>
					<div class="col-sm-3">
						<a href="#article" >关联文章</a>
					</div>
				</div>
			</div>
			<div class="ibox float-e-margins">
				<form action="" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden" name="goodsId" value="${entity.goodsId }" />
                    <fieldset>
						<legend>
							<a name="info">商品信息</a>
						</legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsName">名称:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsName" name="goodsName"value="${entity.goodsName}" disabled/>
                          	</div>
							<label  class="col-sm-2 control-label">类别</label>
							<div class="col-sm-4">
								<input class="form-control" id="typeName" name="typeName" value="${entity.typeName}"disabled/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsNumber">编号:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsNumber" name="goodsNumber" value="${entity.goodsNumber}" disabled/>
                          	</div>
							<label class="col-sm-2 control-label" for="viewPrice">参考价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="viewPrice" name="viewPrice"  value="${entity.viewPrice}" disabled/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsPrice">销售价:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsPrice" name="goodsPrice" value="${entity.goodsPrice}"disabled/>
                          	</div>
							<label class="col-sm-2 control-label" for="realPrice">成本价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="realPrice" name="realPrice"  value="${entity.realPrice}"disabled/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsDescripte">商品简介:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsDescripte" name="goodsDescripte" value="${entity.goodsDescripte}"disabled />
                          	</div>
							<label class="col-sm-2 control-label" for="goodsSum">库存：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSum" name="goodsSum" value="${entity.goodsSum}"disabled />
							</div>
                       	</div>
                       	<div class="form-group">
							<label class="col-sm-2 control-label" >退换货：</label>
							<div class="col-sm-4">
								<zhg:show value="${entity.ifHexchange}" codeTp="ifHexchange" ></zhg:show>
							</div>
							<label class="col-sm-2 control-label" for="goodsSearch">搜索关键字：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSearch" name="goodsSearch" value="${entity.goodsSearch}"disabled/>
							</div>
                       	</div>
					</fieldset>
					<fieldset>
						<legend>
							<a name="attribute">商品属性</a>
						</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" >供应商:</label>
							<div class="col-sm-4">
								<input class="form-control" id="supId" name="supId" value="${entity.supName}"disabled/>
							</div>
							<label class="col-sm-2 control-label" for="storageCondition">储存条件:</label>
							<div class="col-sm-4">
								<input class="form-control" id="storageCondition" name="storageCondition" value="${entity.storageCondition}"disabled/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsBrand">商品品牌:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsBrand" name="goodsBrand" value="${entity.goodsBrand}"disabled/>
							</div>
							<label class="col-sm-2 control-label" for="goodsSavetime">保质期:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSavetime" name="goodsSavetime" value="${entity.goodsSavetime}"disabled />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" >产地:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsAddress" name="goodsAddress" value="${entity.goodsAddress}"disabled />
							</div>
							<label class="col-sm-2 control-label" >包装:</label>
							<div class="col-sm-4">
                               <zhg:show codeTp="package" value="${entity.goodsPackage}"></zhg:show>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" >水体:</label>
							<div class="col-sm-4">
                                <zhg:show value="${entity.goodsWater}" codeTp="goodsWater"></zhg:show>
							</div>
							<label class="col-sm-2 control-label" >单位:</label>
							<div class="col-sm-4">
                                <zhg:show value="${entity.goodsUnit}" codeTp="goodsUnit"></zhg:show>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsWeight">净含量:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsWeight" name="goodsWeight" value="${entity.goodsWeight}"disabled/>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>
							<a name="brands">商品标签</a>
						</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" ></label>
							<div class="col-sm-10">
								<c:forEach var="span" items="${spanList}">
									<c:set var="flag" value="0"></c:set>
									<c:forEach var="bindId" items="${entity.spanList}">
										<c:if test="${bindId == span.spanId}">
											<label class="checkbox-inline">
												<input type="checkbox" name="spanIds" value="${span.spanId }" checked/>${span.spanName }
											</label>
											<c:set var="flag" value="1"></c:set>
										</c:if>
									</c:forEach>
									<c:if test="${flag == 0}">
										<c:if test="${bindId !=span.spanId}">
											<label class="checkbox-inline">
												<input type="checkbox" name="spanIds" value="${span.spanId }"/>${span.spanName }
											</label>
										</c:if>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>
							<a name="article">相关文章</a>
						</legend>
						<table class="table table-striped table-bordered table-hover table-condensed">
							<thead>
							<tr>
								<th>文章标题</th>
								<th>文章类型</th>
							</tr>
							</thead>
							<tbody>
								<tr >
									<td>
										${entity.articleName}
									</td>
									<td>
										${entity.artTypeName}
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
                </form>
			</div>
			<div style="align-content: center">
				<div class="col-sm-4">
					<input type="button" value="返回" class="btn btn-success" onclick="javascript:history.back();"/>
				</div>
			</div>
		</div>
	</body>
</html>