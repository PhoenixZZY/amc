package buaa.sem.amc.service;

import java.util.List;

import buaa.sem.amc.entity.User;

public interface UserService {
	public List<User> findAllUsers();
	public void add(User user);
	public void delete(User user);
	public User findUserById(int userId);
	public void update(User user);
}
