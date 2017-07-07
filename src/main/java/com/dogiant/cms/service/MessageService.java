package com.dogiant.cms.service;

import com.dogiant.cms.domain.dto.QueryResult;
import com.dogiant.cms.domain.website.ArticleItem;

public interface MessageService {

	void addSingleNews(ArticleItem articleItem);

	void updateArticleItem(Long[] ids,  int status);

	ArticleItem getArticleItem(Long id);

	void updateArticleItem(ArticleItem articleItem);

	QueryResult<ArticleItem> getArticleItemListForDatatables(Integer start,
			Integer length,String orderName,String orderDir,String searchValue);

}
