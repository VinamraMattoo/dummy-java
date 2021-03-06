package com.portea.commp.smsen.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * SMS groups have been modeled from the existing table 'sms_gateway_select'. With sms groups
 * as independent entity, they can be mapped with gateways
 */
@Entity
@Table(name = "smsen_sms_group")
public class SmsGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @JoinColumn(name = "type_id")
    @ManyToOne
    private SmsType smsType;

    @Column(name = "name", columnDefinition = "varchar(128)")
    private String name;

    @Column(name = "description", columnDefinition = "varchar(512)")
    private String description;

    @Column(name = "priority")
    private Integer priority;

    @Column(name = "is_bulk")
    private Boolean isBulk;

    @Column(name = "last_updated_on")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUpdatedOn;

    @JoinColumn(name = "last_updated_by")
    @ManyToOne
    private User lastUpdatedBy;

    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name = "unit", column = @Column(name = "clng_pd_content_match_type", columnDefinition = "varchar(32)")),
            @AttributeOverride(name = "value", column = @Column(name = "clng_pd_content_match_val"))})
    private CoolingPeriod contentMatchCoolingPeriod;

    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name = "unit", column = @Column(name = "clng_pd_type_match_type", columnDefinition = "varchar(32)")),
            @AttributeOverride(name = "value", column = @Column(name = "clng_pd_type_match_val"))})
    private CoolingPeriod typeMatchCoolingPeriod;

    public SmsGroup() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Boolean isBulk() {
        return isBulk;
    }

    public void setIsBulk(Boolean isBulk) {
        this.isBulk = isBulk;
    }

    public SmsType getSmsType() {
        return smsType;
    }

    public void setSmsType(SmsType smsType) {
        this.smsType = smsType;
    }

    public CoolingPeriod getContentMatchCoolingPeriod() {
        return contentMatchCoolingPeriod;
    }

    public void setContentMatchCoolingPeriod(CoolingPeriod contentMatchCoolingPeriod) {
        this.contentMatchCoolingPeriod = contentMatchCoolingPeriod;
    }

    public CoolingPeriod getTypeMatchCoolingPeriod() {
        return typeMatchCoolingPeriod;
    }

    public void setTypeMatchCoolingPeriod(CoolingPeriod typeMatchCoolingPeriod) {
        this.typeMatchCoolingPeriod = typeMatchCoolingPeriod;
    }

    public Boolean getIsBulk() {
        return isBulk;
    }

    public User getLastUpdatedBy() {
        return lastUpdatedBy;
    }

    public void setLastUpdatedBy(User lastUpdatedBy) {
        this.lastUpdatedBy = lastUpdatedBy;
    }

    public Date getLastUpdatedOn() {
        return lastUpdatedOn;
    }

    public void setLastUpdatedOn(Date lastUpdatedOn) {
        this.lastUpdatedOn = lastUpdatedOn;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SmsGroup smsGroup = (SmsGroup) o;

        return !(getId() != null ? !getId().equals(smsGroup.getId()) : smsGroup.getId() != null);

    }

    @Override
    public int hashCode() {
        return getId() != null ? getId().hashCode() : 0;
    }

}
