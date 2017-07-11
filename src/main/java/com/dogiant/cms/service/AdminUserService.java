package com.dogiant.cms.service;

import com.dogiant.cms.domain.admin.AdminUser;

public interface AdminUserService {

	AdminUser findUserByUserNameValid(String userName);
	
	AdminUser findUserByNicknameValid(String userName);

	void saveOrUpdate(AdminUser adminUser);

	AdminUser getAdminUserByUserId(Integer userId);

}