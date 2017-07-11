package com.dogiant.cms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogiant.cms.dao.AdminUserDao;
import com.dogiant.cms.domain.admin.AdminUser;
import com.dogiant.cms.service.AdminUserService;

@Service("adminUserService")
public class AdminUserServiceImpl implements AdminUserService {
	
	@Autowired
	private AdminUserDao adminUserDao;

	@Override
	public AdminUser findUserByUserNameValid(String userName) {
		AdminUser adminUser = adminUserDao.getAdminUserByUserName(userName);
		if(adminUser!=null && adminUser.getIsValid()!=null && adminUser.getIsValid()==1){
			return adminUser;
		}else{
			return null;
		}
	}
	
	@Override
	public AdminUser findUserByNicknameValid(String nickname) {
		AdminUser adminUser = adminUserDao.getAdminUserByNickname(nickname);
		if(adminUser!=null && adminUser.getIsValid()!=null && adminUser.getIsValid()==1){
			return adminUser;
		}else{
			return null;
		}
	}

	@Override
	public AdminUser getAdminUserByUserId(Integer userId) {
		return adminUserDao.getAdminUserByUserId(userId);
	}

	@Override
	public void saveOrUpdate(AdminUser adminUser) {
		adminUserDao.saveAdminUser(adminUser);
	}

}
