package com.zhg.javakc.modules.test.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import java.util.Date;

public class TestEntity extends BaseEntity<TestEntity> {
    private String testId;
    private String testName;
    private String testSex;
    private Date TestDate;

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestSex() {
        return testSex;
    }

    public void setTestSex(String testSex) {
        this.testSex = testSex;
    }

    public Date getTestDate() {
        return TestDate;
    }

    public void setTestDate(Date testDate) {
        TestDate = testDate;
    }
}
