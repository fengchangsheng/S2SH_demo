package com.fcs.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.fcs.dao.PublishDAO;
import com.fcs.pojo.Publish;

public class PublishDAOImpl extends HibernateDaoSupport implements PublishDAO{

	public List<Publish> findAll() {
		return this.getSession().createQuery("from Publish publish").list();
	}

}
