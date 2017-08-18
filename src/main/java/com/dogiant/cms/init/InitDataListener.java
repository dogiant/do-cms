package com.dogiant.cms.init;

import java.util.Date;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.DigestUtils;
import org.springframework.web.context.ServletContextAware;

import com.dogiant.cms.domain.admin.AdminUser;
import com.dogiant.cms.service.AdminUserService;

@Component
public class InitDataListener implements InitializingBean , ServletContextAware {
	
	@Autowired
	private AdminUserService adminUserService;

	@Override
	public void setServletContext(ServletContext servletContext) {
		System.out.println("setServletContext...");
		if(adminUserService.findUserByUserNameValid("admin")==null){
			AdminUser adminUser = new AdminUser();
			adminUser.setUserName("admin");
			adminUser.setNickname("超级管理员");
			adminUser.setEmail("admin@feilongshiliugongge.com");
			adminUser.setPassword(DigestUtils.md5DigestAsHex("123456".getBytes()));
			adminUser.setPhone("13651277590");
			adminUser.setCtime(new Date());
			adminUser.setIsValid(1);
			adminUser.setMtime(new Date());
			adminUserService.saveOrUpdate(adminUser);
			System.out.println("add adminUser...");
		}
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("afterPropertiesSet...");
	}

}
