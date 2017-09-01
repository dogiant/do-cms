package com.dogiant.cms.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dogiant.cms.domain.website.Video;
import com.dogiant.cms.service.VideoService;

@Controller
public class VideoWebUIController {
	
	@Resource
	VideoService videoService;
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	/**
	 * 视频上传
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/uploadVedio", method = RequestMethod.GET)
	public String uploadVedio(Map<String, Object> model,HttpServletRequest request) {
		model.put("menu", "video");
        return "videoUpload";
	}
	
	/**
	 * 视频列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/videoList", method = RequestMethod.GET)
	public String videoList(Map<String, Object> model,HttpServletRequest request) {
		Video video = new Video();
		List<Video> list = new ArrayList<Video>();
		try {
			list = videoService.getVideoList(video);
		} catch (Exception e) {
			logger.info("查询视频列表异常："+e.getMessage());
		}
		model.put("menu", "video");
		model.put("videoList", list);
        return "videoList";
	}
	
	/**
	 * 视频保存
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/saveVideoInfo", method = RequestMethod.POST)
	public String saveVideoInfo(Map<String, Object> model,HttpServletRequest request) {
		String catId = request.getParameter("catId");
		String videoName = request.getParameter("videoName");
		String keywords = request.getParameter("keywords");
		String videoDesc = request.getParameter("videoDesc");
		String fileId = request.getParameter("fileId");
		String url = request.getParameter("url");

		Video video = new Video();
		video.setVideoName(videoName);
		video.setKeywords(keywords);
		video.setVideoDesc(videoDesc);
		video.setFileId(Long.parseLong(fileId));
		video.setUrl(url);
		try {
			videoService.addVideo(video);
		} catch (Exception e) {
			logger.info("保存视频失败："+e.getMessage());
			return "false";
		}
        return "true";
	}
}
