package com.zhg.javakc.modules.product_center.products_span.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.List;

public class Span extends BaseEntity<Span> {

    private String spanId;
    //标签名称
    private String spanName;
    //商品数
    private Integer spanNumber;
    //标签描述
    private String spanDescript;
    //库存
    private Integer goodsSum;


    public Integer getGoodsSum() {
        return goodsSum;
    }

    public void setGoodsSum(Integer goodsSum) {
        this.goodsSum = goodsSum;
    }

    public List<String> getProductsList() {
        return productsList;
    }

    public void setProductsList(List<String> productsList) {
        this.productsList = productsList;
    }

    private List<String> productsList;

    public String getSpanId() {
        return spanId;
    }

    public void setSpanId(String spanId) {
        this.spanId = spanId;
    }

    public String getSpanName() {
        return spanName;
    }

    public void setSpanName(String spanName) {
        this.spanName = spanName;
    }

    public Integer getSpanNumber() {
        return spanNumber;
    }

    public void setSpanNumber(Integer spanNumber) {
        this.spanNumber = spanNumber;
    }

    public String getSpanDescript() {
        return spanDescript;
    }

    public void setSpanDescript(String spanDescript) {
        this.spanDescript = spanDescript;
    }
}
