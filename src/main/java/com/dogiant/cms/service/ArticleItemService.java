package com.dogiant.cms.service;

import org.springframework.data.domain.Page;

import com.dogiant.cms.domain.website.ArticleItem;

public interface ArticleItemService {
	
	public Page<ArticleItem> getPagedArticleItem(String catCode, int pageNo, int pageRows);
	
	public ArticleItem getArticleItemValidDataById(Long id);
	
}
