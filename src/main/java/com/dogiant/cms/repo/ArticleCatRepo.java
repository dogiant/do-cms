package com.dogiant.cms.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.dogiant.cms.domain.website.ArticleCat;

public interface ArticleCatRepo extends JpaRepository<ArticleCat, Long>, JpaSpecificationExecutor<ArticleCat> {

	@Transactional(readOnly = true)
	@Query("select o from ArticleCat o where o.parent is null order by catId desc")
	List<ArticleCat> getTopScrollData();

	@Transactional(readOnly = true)
	@Query("select o from ArticleCat o where o.parent.catId =:catId order by catId desc")
	List<ArticleCat> getArticleCatList(@Param("catId")Long catId);

	@Transactional(readOnly = true)
	@Query("select o from ArticleCat o where o.catCode =:catCode")
	ArticleCat getArticleCatByCatCode(@Param("catCode")String catCode);

}
