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
	
	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.AdminUserService#getAdminUserDao()
	 */
	@Override
	public AdminUserDao getAdminUserDao() {
		return adminUserDao;
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.AdminUserService#setAdminUserDao(com.dogiant.cms.dao.AdminUserDao)
	 */
	@Override
	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.AdminUserService#findUserByUserNameValid(java.lang.String)
	 */
	@Override
	public AdminUser findUserByUserNameValid(String userName) {
		AdminUser adminUser = adminUserDao.getAdminUserByUserName(userName);
		if(adminUser.getIsValid()!=null && adminUser.getIsValid()==1){
			return adminUser;
		}else{
			return null;
		}
	}

	/* (non-Javadoc)
	 * @see com.dogiant.cms.service.impl.AdminUserService#update(com.dogiant.cms.domain.admin.AdminUser)
	 */
	@Override
	public void update(AdminUser adminUser) {
		adminUserDao.updateAdminUser(adminUser);
	}

}
