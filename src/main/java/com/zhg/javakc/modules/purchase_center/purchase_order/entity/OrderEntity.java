package com.zhg.javakc.modules.purchase_center.purchase_order.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

public class OrderEntity extends BaseEntity<OrderEntity> {
    // ## 主键
    private String purId;
    // ## 采购单编号
    private String purNumber;
    // ## 审核状态
    private Integer checkStatus;
    // ## 入库状态
    private Integer purType;
    // ## 采购人
    private String purPeople;
    // ## 供应商联系方式
    private String supPhone;
    // ## 备注
    private String  purRemark;
    // ## 创建人
    private String purCreator;
    // ## 创建时间
    private Date purCreateDate;
    // ## 审核人
    private String purAuditor;
    // ## 审核时间
    private Date purCheckDate;
    // ## 供应商外键
    private String SupId;
    // ## 采购金额
    private Integer purMoney;
    // ## 供应商名称
    private String supName;

    public Integer getPurMoney() {
        return purMoney;
    }

    public void setPurMoney(Integer purMoney) {
        this.purMoney = purMoney;
    }

    public String getSupName() {
        return supName;
    }

    public void setSupName(String supName) {
        this.supName = supName;
    }

    public String getPurId() {
        return purId;
    }

    public void setPurId(String purId) {
        this.purId = purId;
    }

    public String getPurNumber() {
        return purNumber;
    }

    public void setPurNumber(String purNumber) {
        this.purNumber = purNumber;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Integer getPurType() {
        return purType;
    }

    public void setPurType(Integer purType) {
        this.purType = purType;
    }

    public String getPurPeople() {
        return purPeople;
    }

    public void setPurPeople(String purPeople) {
        this.purPeople = purPeople;
    }

    public String getSupPhone() {
        return supPhone;
    }

    public void setSupPhone(String supPhone) {
        this.supPhone = supPhone;
    }

    public String getPurRemark() {
        return purRemark;
    }

    public void setPurRemark(String purRemark) {
        this.purRemark = purRemark;
    }

    public String getPurCreator() {
        return purCreator;
    }

    public void setPurCreator(String purCreator) {
        this.purCreator = purCreator;
    }

    public Date getPurCreateDate() {
        return purCreateDate;
    }

    public void setPurCreateDate(Date purCreateDate) {
        this.purCreateDate = purCreateDate;
    }

    public String getPurAuditor() {
        return purAuditor;
    }

    public void setPurAuditor(String purAuditor) {
        this.purAuditor = purAuditor;
    }

    public Date getPurCheckDate() {
        return purCheckDate;
    }

    public void setPurCheckDate(Date purCheckDate) {
        this.purCheckDate = purCheckDate;
    }

    public String getSupId() {
        return SupId;
    }

    public void setSupId(String supId) {
        SupId = supId;
    }
}
