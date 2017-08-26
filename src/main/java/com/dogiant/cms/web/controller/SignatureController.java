package com.dogiant.cms.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dogiant.cms.utils.Signature;

public class SignatureController {

	@Resource
	Signature signature;
	
	@RequestMapping(value = "/getSignature", method = RequestMethod.GET, consumes="application/json")
	public String signNature(HttpServletRequest request) {
		return signature.getUploadSignature();
	}
}
