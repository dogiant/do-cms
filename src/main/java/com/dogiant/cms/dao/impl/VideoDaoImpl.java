package com.dogiant.cms.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dogiant.cms.dao.VideoDao;
import com.dogiant.cms.domain.website.Video;
import com.dogiant.cms.repo.VideoRepo;

@Service("videoDao")
public class VideoDaoImpl implements VideoDao {

	@Resource
	VideoRepo videoRepo;
	
	@Override
	public void save(Video video) {
		videoRepo.save(video);
	}

	@Override
	public void delete(Video video) {
		videoRepo.delete(video);
	}

	@Override
	public List<Video> getVideoList(Video video) {
		List<Video> list = new ArrayList<Video>();
		list = videoRepo.getVideoList();
		return list;
	}

}
