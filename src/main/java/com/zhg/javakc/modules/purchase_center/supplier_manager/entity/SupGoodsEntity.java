package com.zhg.javakc.modules.purchase_center.supplier_manager.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SupGoodsEntity extends BaseEntity<SupGoodsEntity> {
    // ## 主键
    private String supGoodsId;
    // ## 商品名称
    private String supGoodsName;
    // ## 商品编号
    private Integer supGoodsNumber;
    // ##销量
    private Integer supGoodsSum;
    // ## 供货价
    private Integer supGoodsPrice;
    // ## 销售价
    private Integer supGoodsSellPrice;
    // ## 状态
    private Integer supGoodsStatus;


    public String getSupGoodsId() {
        return supGoodsId;
    }

    public void setSupGoodsId(String supGoodsId) {
        this.supGoodsId = supGoodsId;
    }

    public String getSupGoodsName() {
        return supGoodsName;
    }

    public void setSupGoodsName(String supGoodsName) {
        this.supGoodsName = supGoodsName;
    }

    public Integer getSupGoodsNumber() {
        return supGoodsNumber;
    }

    public void setSupGoodsNumber(Integer supGoodsNumber) {
        this.supGoodsNumber = supGoodsNumber;
    }

    public Integer getSupGoodsSum() {
        return supGoodsSum;
    }

    public void setSupGoodsSum(Integer supGoodsSum) {
        this.supGoodsSum = supGoodsSum;
    }

    public Integer getSupGoodsPrice() {
        return supGoodsPrice;
    }

    public void setSupGoodsPrice(Integer supGoodsPrice) {
        this.supGoodsPrice = supGoodsPrice;
    }

    public Integer getSupGoodsSellPrice() {
        return supGoodsSellPrice;
    }

    public void setSupGoodsSellPrice(Integer supGoodsSellPrice) {
        this.supGoodsSellPrice = supGoodsSellPrice;
    }

    public Integer getSupGoodsStatus() {
        return supGoodsStatus;
    }

    public void setSupGoodsStatus(Integer supGoodsStatus) {
        this.supGoodsStatus = supGoodsStatus;
    }
}
