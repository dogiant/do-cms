package com.dogiant.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogiant.cms.dao.ArticleCatDao;
import com.dogiant.cms.domain.website.ArticleCat;
import com.dogiant.cms.service.ArticleCatService;

@Service("articleCatService")
public class ArticleCatServiceImpl implements ArticleCatService {
	
	@Autowired
	private ArticleCatDao articleCatDao;

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#addArticleCat(com.dogiant.cms.domain.website.ArticleCat)
	 */
	@Override
	public void addArticleCat(ArticleCat articleCat) {
		articleCatDao.save(articleCat);
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#updateArticleCat(com.dogiant.cms.domain.website.ArticleCat)
	 */
	@Override
	public void updateArticleCat(ArticleCat articleCat) {
		articleCatDao.update(articleCat);
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#getArticleCat(java.lang.Long)
	 */
	@Override
	public ArticleCat getArticleCat(Long id) {
		return articleCatDao.getArticleCat(id);
	}
	
	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#getArticleCatSortList()
	 */
	@Override
	public List<ArticleCat> getArticleCatSortList() {
		List<ArticleCat> topArticleCatList = articleCatDao.getTopScrollData();
		List<ArticleCat> articleSortList = new ArrayList<ArticleCat>();
		for (ArticleCat articleCat : topArticleCatList) {
			listChildCat(articleSortList, articleCat, 0);
		}
		return articleSortList;
	}
	

	/**
	 * 递归分类之子分类
	 * 
	 * @param cat
	 * @param num
	 * @param isSelect 是否下拉菜单
	 */
	private void listChildCat(List<ArticleCat> articleSortList, ArticleCat cat, int num) {
		cat.setLevel(num + 1);
		articleSortList.add(cat);
		List<ArticleCat> childCatList = articleCatDao.getArticleCatChildrenList(cat.getCatId());
		cat.setChildCat(childCatList);
		if (cat.getChildCat()!= null) {
			List<ArticleCat> list = cat.getChildCat();
			num++;
			for (ArticleCat articleCat : list) {
				listChildCat(articleSortList, articleCat, num);
			}
		}

	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#deleteArticleCats(java.lang.Long[])
	 */
	@Override
	public void deleteArticleCats(Long[] ids) {
		for(Long id : ids){
			articleCatDao.delete(id);
		}
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.ArticleCatServiceA#getArticleCatByCatCode(java.lang.String)
	 */
	@Override
	public ArticleCat getArticleCatByCatCode(String catCode) {
		return articleCatDao.getArticleCatByCatCode(catCode);
	}

	@Override
	public ArticleCat checkSameLevelCatNameExists(Long parentCatId, String catName) {
		return articleCatDao.checkSameLevelCatNameExists(parentCatId, catName);
	}

	@Override
	public ArticleCat checkSameLevelCatCodeExists(Long parentCatId, String catCode) {
		return articleCatDao.checkSameLevelCatCodeExists(parentCatId, catCode);
	}
	
}
