package com.dogiant.cms.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dogiant.cms.dao.VideoDao;
import com.dogiant.cms.domain.website.Video;
import com.dogiant.cms.service.VideoService;

@Service("videoService")
public class VideoServiceImpl implements VideoService {

	@Resource
	VideoDao videoDao;
	
	@Override
	public void addVideo(Video video) {

		videoDao.save(video);

	}

	@Override
	public void deleteVideo(Video video) {
		videoDao.delete(video);

	}

	@Override
	public List<Video> getVideoList(Video video) {
	    List<Video> list = new ArrayList<Video>();
	    list = videoDao.getVideoList(video);
		return list;
	}

}
