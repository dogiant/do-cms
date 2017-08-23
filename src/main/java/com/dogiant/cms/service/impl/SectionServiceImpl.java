package com.dogiant.cms.service.impl;

import org.springframework.stereotype.Service;

import com.dogiant.cms.domain.dto.DataTablesResult;
import com.dogiant.cms.domain.website.Section;
import com.dogiant.cms.service.SectionService;

@Service("sectionService")
public class SectionServiceImpl implements SectionService {

	@Override
	public Section getSection(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addSection(Section section) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSections(Long[] ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateSection(Section section) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DataTablesResult<Section> getSectionDataTablesResult(Integer start, Integer length, String orderName,
			String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		return null;
	}

}
