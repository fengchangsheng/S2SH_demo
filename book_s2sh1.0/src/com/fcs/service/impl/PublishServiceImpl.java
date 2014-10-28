package com.fcs.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.fcs.dao.PublishDAO;
import com.fcs.dto.PublishDTO;
import com.fcs.pojo.Publish;
import com.fcs.service.PublishService;

public class PublishServiceImpl implements PublishService{
	private PublishDAO publishdao;
	

	public List<PublishDTO> findAll() {
		List<PublishDTO> dtos = new ArrayList<PublishDTO>();
		List<Publish> pubs = publishdao.findAll();
		for (Publish publish : pubs) {
			PublishDTO dto = new PublishDTO();
			BeanUtils.copyProperties(publish, dto);
			dtos.add(dto);
		}
		return dtos;
	}
	
	
	public PublishDAO getPublishdao() {
		return publishdao;
	}

	public void setPublishdao(PublishDAO publishdao) {
		this.publishdao = publishdao;
	}

}
