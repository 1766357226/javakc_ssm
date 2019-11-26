package com.zhg.javakc.modules.product_center.products.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;
import java.util.List;

public class Producte extends BaseEntity<Producte> {

    private String goodsId;
    private String goodsName;
    private String goodsNumber;
    private Integer viewPrice;
    private Integer goodsPrice;
    private Integer realPrice;
    private String goodsDescripte;
    private Date proTime;
    /**
     * GOODS_IFHEXCHANGE	N	NUMBER(1)	Y	0:支持;1:不支持
     */
    private String ifHexchange;
    private Integer goodsSum;//库存
    /**
     * GOODS_STORAGE_CONDITION	N	VARCHAR2(20)	Y	储存条件
     */
    private String storageCondition;
    private String goodsBrand;//品牌
    private String goodsSavetime;
    private String goodsAddress;
    /**
     * 包装 盒装 袋装 瓶装 礼盒装
     */
    private Integer goodsPackage;
    /**
     * GOODS_WATER	N	NUMBER(1)0:淡水;1:海水
     */
    private Integer goodsWater;
    /**
     * GOODS_UNIT	N	VARCHAR2(50) 单位 :盒 件 千克
     */
    private Integer goodsUnit;
    /**
     * GOODS_WEIGHT	N	VARCHAR2(10)	Y			净含量
     */
    private String goodsWeight;
    /**
     * GOODS_SALES	N	NUMBER(10)	Y			30天销量
     */
    private String goodsSales;

    /**
     * GOODS_STATUS	N	NUMBER(1)	Y			0:未上架;1:已上架;2:已下架
     */

     private Integer goodsStatus;
    /**
     * //    GOODS_SEARCH	N	VARCHAR2(50)	Y			搜索关键字
     */
     private String goodsSearch;

    private String typeId;
    private String articleId;
    //    SUP_ID	N	CHAR(32)	Y			供货商
    private String supId;
    private String typeName;
    private String supName;
    private String articleName;
    private String spanName;
    private List<String> spanList;

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getSupName() {
        return supName;
    }

    public void setSupName(String supName) {
        this.supName = supName;
    }

    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsNumber() {
        return goodsNumber;
    }

    public void setGoodsNumber(String goodsNumber) {
        this.goodsNumber = goodsNumber;
    }

    public Integer getViewPrice() {
        return viewPrice;
    }

    public void setViewPrice(Integer viewPrice) {
        this.viewPrice = viewPrice;
    }

    public Integer getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Integer goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getRealPrice() {
        return realPrice;
    }

    public void setRealPrice(Integer realPrice) {
        this.realPrice = realPrice;
    }

    public String getGoodsDescripte() {
        return goodsDescripte;
    }

    public void setGoodsDescripte(String goodsDescripte) {
        this.goodsDescripte = goodsDescripte;
    }

    public Date getProTime() {
        return proTime;
    }

    public void setProTime(Date proTime) {
        this.proTime = proTime;
    }

    public String getIfHexchange() {
        return ifHexchange;
    }

    public void setIfHexchange(String ifHexchange) {
        this.ifHexchange = ifHexchange;
    }

    public Integer getGoodsSum() {
        return goodsSum;
    }

    public void setGoodsSum(Integer goodsSum) {
        this.goodsSum = goodsSum;
    }

    public String getStorageCondition() {
        return storageCondition;
    }

    public void setStorageCondition(String storageCondition) {
        this.storageCondition = storageCondition;
    }

    public String getGoodsBrand() {
        return goodsBrand;
    }

    public void setGoodsBrand(String goodsBrand) {
        this.goodsBrand = goodsBrand;
    }

    public String getGoodsSavetime() {
        return goodsSavetime;
    }

    public void setGoodsSavetime(String goodsSavetime) {
        this.goodsSavetime = goodsSavetime;
    }

    public String getGoodsAddress() {
        return goodsAddress;
    }

    public void setGoodsAddress(String goodsAddress) {
        this.goodsAddress = goodsAddress;
    }

    public Integer getGoodsPackage() {
        return goodsPackage;
    }

    public void setGoodsPackage(Integer goodsPackage) {
        this.goodsPackage = goodsPackage;
    }

    public Integer getGoodsWater() {
        return goodsWater;
    }

    public void setGoodsWater(Integer goodsWater) {
        this.goodsWater = goodsWater;
    }

    public Integer getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(Integer goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public String getGoodsWeight() {
        return goodsWeight;
    }

    public void setGoodsWeight(String goodsWeight) {
        this.goodsWeight = goodsWeight;
    }

    public String getGoodsSales() {
        return goodsSales;
    }

    public void setGoodsSales(String goodsSales) {
        this.goodsSales = goodsSales;
    }

    public Integer getGoodsStatus() {
        return goodsStatus;
    }

    public void setGoodsStatus(Integer goodsStatus) {
        this.goodsStatus = goodsStatus;
    }

    public String getGoodsSearch() {
        return goodsSearch;
    }

    public void setGoodsSearch(String goodsSearch) {
        this.goodsSearch = goodsSearch;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getSupId() {
        return supId;
    }

    public void setSupId(String supId) {
        this.supId = supId;
    }

    public String getSpanName() {
        return spanName;
    }

    public void setSpanName(String spanName) {
        this.spanName = spanName;
    }

    public List<String> getSpanList() {
        return spanList;
    }

    public void setSpanList(List<String> spanList) {
        this.spanList = spanList;
    }
}
