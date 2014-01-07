package com.mp2srt.hibernate;

import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Bts
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.mp2srt.hibernate.Bts
 * @author MyEclipse Persistence Tools
 */
public class BtsDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(BtsDAO.class);
	// property constants
	public static final String NOM_BTS = "nomBts";
	public static final String LANGITUDE = "langitude";
	public static final String LATITUDE = "latitude";
	public static final String PUISSANCE = "puissance";
	public static final String INFO = "info";

	public void save(Bts transientInstance) {
		log.debug("saving Bts instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bts persistentInstance) {
		log.debug("deleting Bts instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bts findById(java.lang.Long id) {
		log.debug("getting Bts instance with id: " + id);
		try {
			Bts instance = (Bts) getSession().get("com.mp2srt.hibernate.Bts",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bts instance) {
		log.debug("finding Bts instance by example");
		try {
			List results = getSession()
					.createCriteria("com.mp2srt.hibernate.Bts")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Bts instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bts as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByNomBts(Object nomBts) {
		return findByProperty(NOM_BTS, nomBts);
	}

	public List findByLangitude(Object langitude) {
		return findByProperty(LANGITUDE, langitude);
	}

	public List findByLatitude(Object latitude) {
		return findByProperty(LATITUDE, latitude);
	}

	public List findByPuissance(Object puissance) {
		return findByProperty(PUISSANCE, puissance);
	}

	public List findByInfo(Object info) {
		return findByProperty(INFO, info);
	}

	public List findAll() {
		log.debug("finding all Bts instances");
		try {
			String queryString = "from Bts";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bts merge(Bts detachedInstance) {
		log.debug("merging Bts instance");
		try {
			Bts result = (Bts) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bts instance) {
		log.debug("attaching dirty Bts instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bts instance) {
		log.debug("attaching clean Bts instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}