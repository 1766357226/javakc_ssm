package com.zhg.javakc.modules.product_center.products_span.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SpanTypeEntity extends BaseEntity<SpanTypeEntity> {

    private String typeId;

    private String typeName;

    private String spanId;

    public String getSpanId() {
        return spanId;
    }

    public void setSpanId(String spanId) {
        this.spanId = spanId;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
