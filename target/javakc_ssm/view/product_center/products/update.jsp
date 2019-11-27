<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>商品修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/product/update.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden" name="goodsId" value="${entity.goodsId }" />
                    <fieldset>
						<legend>基本信息 </legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsName">名称:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsName" name="goodsName"value="${entity.goodsName}"/>
                          	</div>
							<label  class="col-sm-2 control-label">类别</label>
							<div class="col-sm-4">
								<input class="form-control" id="typeName" name="typeName" value="${entity.typeName}"/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsNumber">编号:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsNumber" name="goodsNumber" value="${entity.goodsNumber}"/>
                          	</div>
							<label class="col-sm-2 control-label" for="viewPrice">参考价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="viewPrice" name="viewPrice"  value="${entity.viewPrice}" />
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsPrice">销售价:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsPrice" name="goodsPrice" value="${entity.goodsPrice}"/>
                          	</div>
							<label class="col-sm-2 control-label" for="realPrice">成本价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="realPrice" name="realPrice"  value="${entity.realPrice}"/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsDescripte">商品简介:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsDescripte" name="goodsDescripte" value="${entity.goodsDescripte}" />
                          	</div>
							<label class="col-sm-2 control-label" for="goodsSum">库存：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSum" name="goodsSum" value="${entity.goodsSum}" />
							</div>
                       	</div>
                       	<div class="form-group">
							<label class="col-sm-2 control-label" >退换货：</label>
							<div class="col-sm-4">
								<zhg:select value="${entity.ifHexchange}" codeTp="ifHexchange"></zhg:select>
							</div>
							<label class="col-sm-2 control-label" for="goodsSearch">搜索关键字：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSearch" name="goodsSearch" value="${entity.goodsSearch}"/>
							</div>
                       	</div>
					</fieldset>
					<fieldset>
						<legend>商品属性 </legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" >供应商:</label>
							<div class="col-sm-4">
								<input class="form-control" id="supName" name="supName" value="${entity.supName}"/>
							</div>
							<label class="col-sm-2 control-label" for="storageCondition">储存条件:</label>
							<div class="col-sm-4">
								<input class="form-control" id="storageCondition" name="storageCondition" value="${entity.storageCondition}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsBrand">商品品牌:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsBrand" name="goodsBrand" value="${entity.goodsBrand}"/>
							</div>
							<label class="col-sm-2 control-label" for="goodsSavetime">保质期:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSavetime" name="goodsSavetime" value="${entity.goodsSavetime}" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsAddress">产地:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsAddress" name="goodsAddress" value="${entity.goodsAddress}" />
							</div>
							<label class="col-sm-2 control-label" for="goodsPackage">包装:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="package" name="goodsPackage" cls="form-control" value="${entity.goodsPackage}" def="true"></zhg:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsWater">水体:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="goodsWater" name="goodsWater" value="${entity.goodsWater}" cls="form-control" def="true"></zhg:select>
							</div>
							<label class="col-sm-2 control-label" for="goodsUnit">单位:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="goodsUnit" name="goodsUnit" cls="form-control" value="${entity.goodsUnit}" def="true"></zhg:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsWeight">净含量:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsWeight" name="goodsWeight" value="${entity.goodsWeight}"/>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>商品标签 </legend>
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
						<legend>相关文章</legend>
						<table class="table table-striped table-bordered table-hover table-condensed">
							<thead>
							<tr>
								<th>文章标题</th>
								<th>文章类型</th>
								<th>操作</th>
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
									<td>
										<button type="button" class="btn btn-inverse" data-toggle="modal" id="info" name="product/deleteArt.do">移除</button>
									</td>
								</tr>
							</tbody>
						</table>
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
</html>