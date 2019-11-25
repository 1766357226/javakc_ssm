package com.zhg.javakc.modules.purchase_center.supplier_manager.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.List;

public class SupplierEntity extends BaseEntity<SupplierEntity> {
    // ## 主键
    private String supId;
    // ## 供应商名称
    private String supName;
    // ## 描述
    private String supDescripte;
    // ## 详细地址
    private String supAddress;
    // ## 联系人
    private String infoContacts;
    // ## 联系方式
    private String  infoPhone;
    // ## 备用联系人
    private String infoContacts2;
    // ## 备用联系人的联系方式
    private String infoPhone2;
    // ## 地区
    private String infoRcjin;
//    // ## 备注
//    private String infoRemarkes;
    private List<SupGoodsEntity> SupGoodsList;

    public List<SupGoodsEntity> getSupGoodsList() {
        return SupGoodsList;
    }

    public void setSupGoodsList(List<SupGoodsEntity> supGoodsList) {
        SupGoodsList = supGoodsList;
    }

    public String getSupId() {
        return supId;
    }

    public void setSupId(String supId) {
        this.supId = supId;
    }

    public String getSupName() {
        return supName;
    }

    public void setSupName(String supName) {
        this.supName = supName;
    }

    public String getSupDescripte() {
        return supDescripte;
    }

    public void setSupDescripte(String supDescripte) {
        this.supDescripte = supDescripte;
    }

    public String getSupAddress() {
        return supAddress;
    }

    public void setSupAddress(String supAddress) {
        this.supAddress = supAddress;
    }

    public String getInfoContacts() {
        return infoContacts;
    }

    public void setInfoContacts(String infoContacts) {
        this.infoContacts = infoContacts;
    }

    public String getInfoPhone() {
        return infoPhone;
    }

    public void setInfoPhone(String infoPhone) {
        this.infoPhone = infoPhone;
    }

    public String getInfoContacts2() {
        return infoContacts2;
    }

    public void setInfoContacts2(String infoContacts2) {
        this.infoContacts2 = infoContacts2;
    }

    public String getInfoPhone2() {
        return infoPhone2;
    }

    public void setInfoPhone2(String info_phone2) {
        this.infoPhone2 = infoPhone2;
    }

    public String getInfoRcjin() {
        return infoRcjin;
    }

    public void setInfoRcjin(String infoRcjin) {
        this.infoRcjin = infoRcjin;
    }

//    public String getInfoRemarkes() {
//        return infoRemarkes;
//    }
//
//    public void setInfoRemarkes(String infoRemarkes) {
//        this.infoRemarkes = infoRemarkes;
//    }
}
