package com.dogiant.cms.web.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dogiant.cms.domain.dto.HttpResult;
import com.dogiant.cms.domain.dto.ServiceResponse;
import com.dogiant.cms.domain.dto.ServiceResponse2HttpResult;
import com.dogiant.cms.domain.website.ArticleCat;
import com.dogiant.cms.exception.CommException;
import com.dogiant.cms.exception.ServiceExInfo;
import com.dogiant.cms.service.ArticleCatService;

@RestController
public class ArticleRestAPIController {

	protected final Log logger = LogFactory.getLog(getClass());

	@Autowired
	private ArticleCatService articleCatService;

	@ResponseBody
	@RequestMapping(value = "/api/article/cat/add", method = RequestMethod.POST)
	public HttpResult<?> articleCatAdd(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute ArticleCat articleCat) {

		// 如果顶级分类,则设定父分类为空，避免报错。
		if (articleCat!=null && articleCat.getParent().getCatId() == null) {
			articleCat.setParent(null);
		}
		ServiceResponse<?> resp = ServiceResponse.successResponse();
		try {
			Date now = new Date();
			articleCat.setCtime(now);
			articleCat.setMtime(now);
			articleCatService.addArticleCat(articleCat);
		} catch (Exception e) {
			e.printStackTrace();
			resp = resp.setCode(ServiceExInfo.SYSTEM_ERROR.getCode());
			resp = resp.setMsg(ServiceExInfo.SYSTEM_ERROR.getMessage());
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}
		return ServiceResponse2HttpResult.transfer(resp);
	}
	
	@ResponseBody
	@RequestMapping(value = "/api/article/cat/update", method = RequestMethod.POST)
	public HttpResult<?> articleCatUpdate(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute ArticleCat articleCat) throws CommException {
		
		if (articleCat.getCatId() == null) {
			throw new CommException(ServiceExInfo.PARAMETER_ERROR_EXCEPTION);
		}
		
		ArticleCat articleCatFromDB = articleCatService.getArticleCat(articleCat.getCatId());
		
		if (articleCatFromDB == null) {
			throw new CommException(ServiceExInfo.PARAMETER_ERROR_EXCEPTION);
		}
		
		// 父级分类不能是自己
		if (articleCat!=null && articleCat.getParent().getCatId() == articleCat.getCatId()) {
			articleCat.setParent(null);
		}

		// 如果顶级分类,则设定父分类为空，避免报错。
		if (articleCat!=null && articleCat.getParent().getCatId() == null) {
			articleCat.setParent(null);
		}
		
		ServiceResponse<?> resp = ServiceResponse.successResponse();
		try {
			Date now = new Date();
			articleCat.setCtime(articleCatFromDB.getCtime());
			articleCat.setMtime(now);
			articleCatService.addArticleCat(articleCat);
		} catch (Exception e) {
			e.printStackTrace();
			resp = resp.setCode(ServiceExInfo.SYSTEM_ERROR.getCode());
			resp = resp.setMsg(ServiceExInfo.SYSTEM_ERROR.getMessage());
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}
		return ServiceResponse2HttpResult.transfer(resp);
	}

	@ResponseBody
	@RequestMapping(value = "/api/article/cat/delete", method = { RequestMethod.POST, RequestMethod.GET })
	public HttpResult<?> articleCatList(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "ids", required = true) Long[] ids) {

		ServiceResponse<List<ArticleCat>> resp = ServiceResponse.successResponse();
		try {
			articleCatService.deleteArticleCats(ids);
		} catch (Exception e) {
			e.printStackTrace();
			resp = resp.setCode(ServiceExInfo.SYSTEM_ERROR.getCode());
			resp = resp.setMsg(ServiceExInfo.SYSTEM_ERROR.getMessage());
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}
		return ServiceResponse2HttpResult.transfer(resp);
	}
	
	@ResponseBody
	@RequestMapping(value = "/api/article/cat/list", method = { RequestMethod.POST, RequestMethod.GET })
	public HttpResult<?> articleCatList(HttpServletRequest request, HttpServletResponse response) {

		ServiceResponse<List<ArticleCat>> resp = ServiceResponse.successResponse();
		try {
			List<ArticleCat> list = articleCatService.getArticleCatSortList();
			resp.setData(list);
		} catch (Exception e) {
			e.printStackTrace();
			resp = resp.setCode(ServiceExInfo.SYSTEM_ERROR.getCode());
			resp = resp.setMsg(ServiceExInfo.SYSTEM_ERROR.getMessage());
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}
		return ServiceResponse2HttpResult.transfer(resp);
	}
}
