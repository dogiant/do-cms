package com.dogiant.cms.service;

import com.dogiant.cms.dao.AdminUserDao;
import com.dogiant.cms.domain.admin.AdminUser;

public interface AdminUserService {

	AdminUserDao getAdminUserDao();

	void setAdminUserDao(AdminUserDao adminUserDao);

	AdminUser findUserByUserNameValid(String userName);

	void update(AdminUser adminUser);

}