package buaa.sem.amc.dao;

import java.util.List;

import buaa.sem.amc.entity.User;

public interface UserDao {
	/**
	 * 添加用户
	 *
	 */
	public void add(User user);

	/**
	 * 返回用户列表
	 */
	public List<User> findAllUsers();

	List<User> findByNameAndPwd(User user);

	public void deleteUser(User user);

	public User findUserById(int userId);

	public void updateUser(User user);

}
