package com.dogiant.cms.web.controller;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebUIController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Map<String, Object> model) {
		logger.info("login");
        return "login";
    }

}
