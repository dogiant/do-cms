package com.dogiant.cms.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.transaction.annotation.Transactional;

import com.dogiant.cms.domain.website.News;

@Transactional(value="mysqlWebdbEM")
public interface NewsRepo extends JpaRepository<News, Long>, JpaSpecificationExecutor<News> {

}
