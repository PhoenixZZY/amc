package buaa.sem.amc.dao;

import java.util.List;

import buaa.sem.amc.entity.Role;
import buaa.sem.amc.entity.User;

public interface RoleDao {
	/**
	 * 添加角色
	 *
	 */
	public void add(Role role);

	/**
	 * 返回角色列表
	 */
	public List<Role> findAllRoles();

	List<Role> findByName(String roleName);

}
