package com.zhg.javakc.modules.product_center.products_span.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class Span extends BaseEntity<Span> {

    private String spanId;

    private String spanName;

    private Integer spanNumber;

    private String spanDescript;

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
