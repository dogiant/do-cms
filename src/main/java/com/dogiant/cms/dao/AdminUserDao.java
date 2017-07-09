package com.dogiant.cms.dao;

import com.dogiant.cms.domain.admin.AdminUser;
import com.dogiant.cms.domain.dto.QueryResult;

public interface AdminUserDao{
		
	public boolean checkAdminUser(String userName, String password);

	public AdminUser getAdminUserByUserName(String userName);
	
	public AdminUser getAdminUserByNickname(String nickname);
	
	public boolean modifyAdminUserPassword(String userName, String md5Hex);

	public QueryResult<AdminUser> getAdminUserQueryResult(Integer pageNo,
			Integer pageRows, String beginTime, String endTime, String userName);

	public AdminUser getAdminUserByUserId(Integer userId);

	public void updateAdminUser(AdminUser adminUser);

	public void addAdminUser(AdminUser adminUser);

}
