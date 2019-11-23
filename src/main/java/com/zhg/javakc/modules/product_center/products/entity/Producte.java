package com.zhg.javakc.modules.product_center.products.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.List;

public class Producte extends BaseEntity<Producte> {

    private String goodsId;
    private String goodsName;
    private String goodsNumber;
    private Integer viewPrice;
    private Integer goodsPrice;
    private Integer realPrice;
    private String goodsDescripte;
    private String proTime;
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
    private String goodsPackage;
    /**
     * GOODS_WATER	N	NUMBER(1)0:淡水;1:海水
     */
    private Integer goodsWater;
    /**
     * GOODS_UNIT	N	VARCHAR2(50) 单位 :盒 件 千克
     */
    private String goodsUnit;
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
    private String spanName;
    private List<String> spanList;
}
