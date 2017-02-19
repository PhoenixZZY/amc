package buaa.sem.amc.service;

import java.util.List;

import buaa.sem.amc.entity.Role;
import buaa.sem.amc.entity.User;

public interface RoleService {
	public List<Role> findAllRoles();
	public void add(User user);
	public int getRoleId(String roleName);
}
