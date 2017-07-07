package com.dogiant.cms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dogiant.cms.dao.ArticleItemDao;
import com.dogiant.cms.domain.website.ArticleItem;
import com.dogiant.cms.service.ArticleItemService;

@Service("articleItemService")
public class ArticleItemServiceImpl implements ArticleItemService {

	@Autowired
	private ArticleItemDao articleItemDao;

	@Override
	public Page<ArticleItem> getPagedArticleItem(
			String catCode, int pageNo, int pageRows) {
		return articleItemDao.getPagedArticleItem(pageNo, pageRows, catCode);
	}

	@Override
	public ArticleItem getArticleItemValidDataById(Long id) {
		return articleItemDao.getArticleItemValidDataById(id);
	}

}
