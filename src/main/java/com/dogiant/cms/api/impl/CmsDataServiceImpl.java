package com.dogiant.cms.api.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dogiant.api.CmsDataService;
import com.dogiant.api.dto.ArticleCatDTO;
import com.dogiant.api.dto.ArticleItemDTO;
import com.dogiant.api.dto.SectionDTO;

@Service("cmsDataService")
public class CmsDataServiceImpl implements CmsDataService {

	@Override
	public String hello(String hi) {
		// TODO Auto-generated method stub
		return "hello";
	}

	@Override
	public SectionDTO getSectionByCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArticleCatDTO getArticleCatByCode(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ArticleCatDTO> getCrumbsArticleCats(String code) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArticleItemDTO getArticleItemById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
