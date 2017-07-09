package com.dogiant.cms.web.controller;

import java.net.URLDecoder;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dogiant.cms.domain.admin.AdminUser;
import com.dogiant.cms.domain.dto.BusinessErrorCode;
import com.dogiant.cms.domain.dto.HttpResult;
import com.dogiant.cms.domain.dto.ServiceResponse;
import com.dogiant.cms.domain.dto.ServiceResponse2HttpResult;
import com.dogiant.cms.exception.ServiceExInfo;
import com.dogiant.cms.service.AdminUserService;
import com.dogiant.cms.ticket.Ticket;
import com.dogiant.cms.ticket.TicketAuthHandler;
import com.dogiant.cms.ticket.util.UniqueTicketIdGenerator;
import com.dogiant.cms.utils.CookieUtil;
import com.dogiant.cms.utils.IpAddressUtil;

@RestController("/api")
public class RestAPIController {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private AdminUserService adminUserService;
	@Autowired
	private TicketAuthHandler ticketAuthHandler;
	@Autowired
	private UniqueTicketIdGenerator keyGenerator;

	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public HttpResult<?> login(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "userName", required = true) String userName,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "callback", required = false) String callback,
			@RequestParam(value = "returnUrl", required = false) String returnUrl) {

		ServiceResponse<?> resp = ServiceResponse.successResponse();

		if (StringUtils.isNotEmpty(callback)) {
			try {
				userName = URLDecoder.decode(userName, "UTF-8");
				password = URLDecoder.decode(password, "UTF-8");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (StringUtils.isBlank(userName) || StringUtils.isBlank(password)) {
			resp = resp.setCode(BusinessErrorCode.PARAM_NULL.code);
			resp = resp.setMsg(String.format(BusinessErrorCode.PARAM_NULL.msg, "username or password"));
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}

		AdminUser user = adminUserService.findUserByUserNameValid(userName);
		if (user == null) {
			resp = resp.setCode(ServiceExInfo.NO_AUTH_EXCEPTION.getCode());
			resp = resp.setMsg(ServiceExInfo.NO_AUTH_EXCEPTION.getMessage());
			HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
			return result;
		}

		if (StringUtils.isNotBlank(password)) {
			String md5Password = user.getPassword();
			if (StringUtils.isNotEmpty(callback)) {
				if (!md5Password.equalsIgnoreCase(password)) {
					resp = resp.setCode(ServiceExInfo.USER_PASS_ERROR.getCode());
					resp = resp.setMsg(ServiceExInfo.USER_PASS_ERROR.getMessage());
					HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
					return result;
				}
			} else {
				if (!md5Password.equalsIgnoreCase(DigestUtils.md5DigestAsHex(password.getBytes()))) {
					resp = resp.setCode(ServiceExInfo.USER_PASS_ERROR.getCode());
					resp = resp.setMsg(ServiceExInfo.USER_PASS_ERROR.getMessage());
					HttpResult<?> result = ServiceResponse2HttpResult.transfer(resp);
					return result;
				}
			}
			String authKey = this.generateTicket(user);

			CookieUtil.setUserCookie(response, user, authKey);

			String lastLoginIp = IpAddressUtil.getIpAddr(request);
			user.setLastLoginIp(lastLoginIp);
			user.setLastLoginTime(new Date());
			adminUserService.update(user);
			logger.info(user.getUserName() + " " + new Date().toString() + " from " + lastLoginIp + " login success.");
			resp.setPrompt(returnUrl);
			return ServiceResponse2HttpResult.transfer(resp);

		}
		return ServiceResponse2HttpResult.transfer(resp);
	}
	
	/**
	 * 生成Ticket并登记票据
	 * 
	 * @param user
	 * @return authKey
	 */
	private String generateTicket(AdminUser user) {
		String key = this.keyGenerator.getNewTicketId(String.valueOf(user
				.getUserId()));
		Ticket ticket = new Ticket();
		long now = System.currentTimeMillis();
		ticket.setCreationTime(now);
		ticket.setLastTimeUsed(now);
		ticket.setId(key);
		ticket.setUserId(user.getUserId().toString());
		ticketAuthHandler.getTicketRegistry().addTicket(ticket);
		return key;
	}



}
