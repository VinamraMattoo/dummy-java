package com.portea.cpnen.domain;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "coupon")
public class Coupon {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "name",columnDefinition = "varchar(128)")
	private String name;
	
	@Column(name = "description",columnDefinition = "varchar(512)")
	private String description;
	
	@Column(name = "created_on")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createdOn;
	
	@JoinColumn(name = "created_by")
    @ManyToOne
	private User createdBy;

    @Column(name = "last_updated_on")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUpdatedOn;

    @JoinColumn(name = "last_updated_by")
    @ManyToOne
    private User lastUpdatedBy;
	
	@Column(name = "deactivated_on")
	@Temporal(TemporalType.TIMESTAMP)
	private Date deactivatedOn;
	
	@JoinColumn(name = "deactivated_by")
    @ManyToOne
	private User deactivatedBy;
	
	@Column(name = "inclusive")
	private Boolean inclusive;

    @Enumerated(EnumType.STRING)
    @Column(name = "category")
    private CouponCategory category;
		
	@Enumerated(EnumType.STRING)
    @Column(name = "application_type")
	private CouponApplicationType applicationType;

    @Enumerated(EnumType.STRING)
    @Column(name = "actor_type")
    private ActorType actorType;

    @Enumerated(EnumType.STRING)
    @Column(name = "context_type")
    private ContextType contextType;
	
	@Column(name = "applicable_from")
	@Temporal(TemporalType.TIMESTAMP)
	private Date applicableFrom;
	
	@Column(name = "applicable_till")
	@Temporal(TemporalType.TIMESTAMP)
	private Date applicableTill;
	
	@Column(name = "applicable_use_count")
	private Integer applicableUseCount;
	
	@Column(name = "trans_val_min")
	private Integer transactionMinValue;
	
	@Column(name = "trans_val_max")
	private Integer transactionMaxValue;
	
	@Column(name = "discount_amt_max")
	private Integer discountAmountMax;

	@Column(name = "discount_amt_min")
	private Integer discountAmountMin;

    @Column(name = "global")
    private Boolean global;

    @Column(name = "is_for_all_areas")
    private Boolean isForAllAreas;

    @Column(name = "is_for_all_products")
    private Boolean isForAllProducts;

    @Column(name = "is_for_all_brands")
    private Boolean isForAllBrands;

    @Column(name = "is_for_all_b2b")
    private Boolean isForAllB2B;

    @Column(name = "is_for_all_b2c")
    private Boolean isForAllB2C;

    @Column(name = "nth_time")
    private Integer nthTime;

    @Column(name = "nth_time_recurring")
    private Boolean nthTimeRecurring;

    @Column(name = "published_on")
    @Temporal(TemporalType.TIMESTAMP)
    private Date publishedOn;

    @JoinColumn(name = "published_by")
    @ManyToOne
    private User publishedBy;

    /**
     * If this value is true coupon applicability count is checked across all codes.
     * ex: If the applicability count is 10 and trackUseAcrossCodes is true only 10
     * codes can be used for this coupon. If this value is false each code can be used 10 times.
     */
    @Column(name = "track_use_across_codes")
    private Boolean trackUseAcrossCodes;

	public Coupon() {}

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

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    public Date getLastUpdatedOn() {
        return lastUpdatedOn;
    }

    public void setLastUpdatedOn(Date lastUpdatedOn) {
        this.lastUpdatedOn = lastUpdatedOn;
    }

    public User getLastUpdatedBy() {
        return lastUpdatedBy;
    }

    public void setLastUpdatedBy(User lastUpdatedBy) {
        this.lastUpdatedBy = lastUpdatedBy;
    }

    public Date getDeactivatedOn() {
        return deactivatedOn;
    }

    public void setDeactivatedOn(Date deactivatedOn) {
        this.deactivatedOn = deactivatedOn;
    }

    public User getDeactivatedBy() {
        return deactivatedBy;
    }

    public void setDeactivatedBy(User deactivatedBy) {
        this.deactivatedBy = deactivatedBy;
    }

    public Boolean getInclusive() {
        return inclusive;
    }

    public void setInclusive(Boolean inclusive) {
        this.inclusive = inclusive;
    }

    public CouponCategory getCategory() {
        return category;
    }

    public void setCategory(CouponCategory category) {
        this.category = category;
    }

    public CouponApplicationType getApplicationType() {
        return applicationType;
    }

    public void setApplicationType(CouponApplicationType applicationType) {
        this.applicationType = applicationType;
    }

    public ActorType getActorType() {
        return actorType;
    }

    public void setActorType(ActorType actorType) {
        this.actorType = actorType;
    }

    public ContextType getContextType() {
        return contextType;
    }

    public void setContextType(ContextType contextType) {
        this.contextType = contextType;
    }

    public Date getApplicableFrom() {
        return applicableFrom;
    }

    public void setApplicableFrom(Date applicableFrom) {
        this.applicableFrom = applicableFrom;
    }

    public Date getApplicableTill() {
        return applicableTill;
    }

    public void setApplicableTill(Date applicableTill) {
        this.applicableTill = applicableTill;
    }

    public Integer getApplicableUseCount() {
        return applicableUseCount;
    }

    public void setApplicableUseCount(Integer applicableUseCount) {
        this.applicableUseCount = applicableUseCount;
    }

    public Integer getTransactionMinValue() {
        return transactionMinValue;
    }

    public void setTransactionMinValue(Integer transactionMinValue) {
        this.transactionMinValue = transactionMinValue;
    }

    public Integer getTransactionMaxValue() {
        return transactionMaxValue;
    }

    public void setTransactionMaxValue(Integer transactionMaxValue) {
        this.transactionMaxValue = transactionMaxValue;
    }

    public Integer getDiscountAmountMax() {
        return discountAmountMax;
    }

    public void setDiscountAmountMax(Integer discountAmountMax) {
        this.discountAmountMax = discountAmountMax;
    }

    public Integer getDiscountAmountMin() {
        return discountAmountMin;
    }

    public void setDiscountAmountMin(Integer discountAmountMin) {
        this.discountAmountMin = discountAmountMin;
    }

    public Boolean getGlobal() {
        return global;
    }

    public void setGlobal(Boolean global) {
        this.global = global;
    }

    public Integer getNthTime() {
        return nthTime;
    }

    public void setNthTime(Integer nthTime) {
        this.nthTime = nthTime;
    }

    public Boolean getNthTimeRecurring() {
        return nthTimeRecurring;
    }

    public void setNthTimeRecurring(Boolean nthTimeRecurring) {
        this.nthTimeRecurring = nthTimeRecurring;
    }

    public Date getPublishedOn() {
        return publishedOn;
    }

    public void setPublishedOn(Date publishedOn) {
        this.publishedOn = publishedOn;
    }

    public User getPublishedBy() {
        return publishedBy;
    }

    public void setPublishedBy(User publishedBy) {
        this.publishedBy = publishedBy;
    }

    public Boolean getTrackUseAcrossCodes() {
        return trackUseAcrossCodes;
    }

    public void setTrackUseAcrossCodes(Boolean trackUseAcrossCodes) {
        this.trackUseAcrossCodes = trackUseAcrossCodes;
    }

    public Boolean getIsForAllAreas() {
        return isForAllAreas;
    }

    public void setIsForAllAreas(Boolean isForAllAreas) {
        this.isForAllAreas = isForAllAreas;
    }

    public Boolean getIsForAllProducts() {
        return isForAllProducts;
    }

    public void setIsForAllProducts(Boolean isForAllProducts) {
        this.isForAllProducts = isForAllProducts;
    }

    public Boolean getIsForAllBrands() {
        return isForAllBrands;
    }

    public void setIsForAllBrands(Boolean isForAllBrands) {
        this.isForAllBrands = isForAllBrands;
    }

    public Boolean getIsForAllB2B() {
        return isForAllB2B;
    }

    public void setIsForAllB2B(Boolean isForAllB2B) {
        this.isForAllB2B = isForAllB2B;
    }

    public Boolean getIsForAllB2C() {
        return isForAllB2C;
    }

    public void setIsForAllB2C(Boolean isForAllB2C) {
        this.isForAllB2C = isForAllB2C;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Coupon coupon = (Coupon) o;

        return !(id != null ? !id.equals(coupon.id) : coupon.id != null);

    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    public boolean isActive() {

        return getDeactivatedBy() == null;
    }

    public boolean isPublished() {
        return getPublishedBy() != null;
    }
}