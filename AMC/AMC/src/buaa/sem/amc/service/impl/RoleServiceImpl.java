package buaa.sem.amc.service.impl;

import java.util.List;

import buaa.sem.amc.dao.RoleDao;
import buaa.sem.amc.dao.UserDao;
import buaa.sem.amc.entity.Role;
import buaa.sem.amc.entity.User;
import buaa.sem.amc.service.RoleService;
import buaa.sem.amc.service.UserService;

public class RoleServiceImpl implements RoleService{
	private RoleDao roleDao;
	@Override
	public List<Role> findAllRoles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getRoleId(String roleName) {
		// TODO Auto-generated method stub
		return this.roleDao.findByName(roleName).get(0).getRoleId();
	}

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	
}
