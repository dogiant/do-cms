package com.dogiant.cms.service;

import java.util.List;

import com.dogiant.cms.domain.website.Video;

public interface VideoService {

	/**
	 * 上传video
	 */
	void addVideo(Video video);

	/**
	 * 删除video
	 */
	void deleteVideo(Video video);

	/**
	 * 获取视频列表
	 * @param id
	 * @return
	 */
	List<Video> getVideoList(Video video);

}