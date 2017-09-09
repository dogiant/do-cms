package com.dogiant.cms.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.dogiant.cms.domain.website.ArticleItem;

public interface ArticleItemRepo extends JpaRepository<ArticleItem, Long>, JpaSpecificationExecutor<ArticleItem> {
	
	@Transactional(readOnly = true)
	@Query("select o from ArticleItem o where o.id =:id and o.status>=0")
	ArticleItem getArticleItemValidDataById(@Param("id")Long id);

	@Transactional(readOnly = true)
	@Query("select o from ArticleItem o where o.articleCat.catCode =:code and o.status>=0 order by o.ctme desc limit 1")
	ArticleItem getArticleItemByCatCode(@Param("code")String code);

	@Transactional(readOnly = true)
	@Query("select o from ArticleItem o where o.status>=0 order by o.ctme desc limit :number")
	List<ArticleItem> getLatestPost(@Param("number")int number);

}
