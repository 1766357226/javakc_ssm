<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>商品添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/product/save.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
                    <fieldset>
						<legend>基本信息 </legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsName">名称:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsName" name="goodsName" type="text" placeholder="填写名称"/>
                          	</div>
							<label  class="col-sm-2 control-label">类别</label>
							<div class="col-sm-4">
								<input class="form-control" id="typeId" name="typeId" type="text" />
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsNumber">编号:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsNumber" name="goodsNumber" type="text" placeholder="填写编号"/>
                          	</div>
							<label class="col-sm-2 control-label" for="viewPrice">参考价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="viewPrice" name="viewPrice" type="text" />
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsPrice">销售价:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsPrice" name="goodsPrice" type="text" />
                          	</div>
							<label class="col-sm-2 control-label" for="realPrice">成本价:</label>
							<div class="col-sm-4">
								<input class="form-control" id="realPrice" name="realPrice" type="text"/>
							</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="goodsDescripte">商品简介:</label>
                          	<div class="col-sm-4">
                            	<input class="form-control" id="goodsDescripte" name="goodsDescripte" placeholder="30字以内"width="300px" type="text"/>
                          	</div>
							<label class="col-sm-2 control-label" for="goodsSum">库存：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSum" name="goodsSum" type="text" />
							</div>
                       	</div>
                       	<div class="form-group">
							<label class="col-sm-2 control-label" for="ifHexchange">退换货：</label>
							<div class="col-sm-4">
								<zhg:select codeTp="ifHexchange" name="ifHexchange" cls="form-control" def="true"></zhg:select>
							</div>
							<label class="col-sm-2 control-label" for="goodsSearch">搜索关键字：</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSearch" name="goodsSearch" placeholder="30字以内"width="300px" type="text"/>
							</div>
                       	</div>
					</fieldset>
					<fieldset>
						<legend>商品属性</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">供应商:</label>
							<div class="col-sm-4">
								<select  class="form-control input-medium" >
								<c:forEach var="sup" items="${supList}">
                                    <option value="${sup.supId}">${sup.supName}</option>
								</c:forEach>
                                </select>
							</div>
							<label  class="col-sm-2 control-label" for="storageCondition">储存条件:</label>
							<div class="col-sm-4">
								<input class="form-control" id="storageCondition" name="storageCondition" type="text"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsBrand">商品品牌:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsBrand" name="goodsBrand" type="text"/>
							</div>
							<label class="col-sm-2 control-label" for="goodsSavetime">保质期:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsSavetime" name="goodsSavetime" type="text" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsAddress">产地:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsAddress" name="goodsAddress" />
							</div>
							<label class="col-sm-2 control-label" for="goodsPackage">包装:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="package" name="goodsPackage" cls="form-control" def="true"></zhg:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsWater">水体:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="goodsWater" name="goodsWater" cls="form-control" def="true"></zhg:select>
							</div>
							<label class="col-sm-2 control-label" for="goodsUnit">单位:</label>
							<div class="col-sm-4">
								<zhg:select codeTp="goodsUnit" name="goodsUnit" cls="form-control" def="true"></zhg:select>
							</div>
							</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="goodsWeight">净含量:</label>
							<div class="col-sm-4">
								<input class="form-control" id="goodsWeight" name="goodsWeight" />
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>商品标签 </legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" >选择标签</label>
                          	<div class="col-sm-10">
                            	<c:forEach var="span" items="${spanList}">
                            		<label class="checkbox-inline">
									  	<input type="checkbox" name="spanIds" value="${span.spanId }" />${span.spanName }
									</label>
                            	</c:forEach>
                          	</div>
                       	</div>
					</fieldset>
					<fieldset>
						<legend>相关文章</legend>

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