package com.dogiant.cms.api.impl;

import org.springframework.stereotype.Service;

import com.dogiant.api.CmsDataService;

@Service("cmsDataService")
public class CmsDataServiceImpl implements CmsDataService {

	@Override
	public String getSectionDataByCode(String code) {
		return "hello";
	}

}
