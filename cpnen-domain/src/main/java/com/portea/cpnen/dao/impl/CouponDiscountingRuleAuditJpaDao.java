package com.portea.cpnen.dao.impl;

import com.portea.cpnen.dao.CouponDiscountingRuleAuditDao;
import com.portea.cpnen.domain.CouponAudit;
import com.portea.cpnen.domain.CouponDiscountingRuleAudit;
import com.portea.dao.JpaDao;
import com.portea.dao.impl.BaseJpaDao;

import javax.enterprise.context.Dependent;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@JpaDao
@Dependent
public class CouponDiscountingRuleAuditJpaDao extends BaseJpaDao<Integer, CouponDiscountingRuleAudit> implements CouponDiscountingRuleAuditDao {

    public CouponDiscountingRuleAuditJpaDao() {
        super(CouponDiscountingRuleAudit.class);
    }

    @Override
    @PersistenceContext(name = "cpnenPU")
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public void delete(CouponAudit couponAudit) {
        Query query = entityManager.createNamedQuery("deleteCouponDiscountingRuleAudit");
        query.setParameter("couponAudit", couponAudit);
        query.executeUpdate();
    }
}
