package buaa.sem.amc.service.impl;

import java.util.List;

import buaa.sem.amc.dao.UserDao;
import buaa.sem.amc.entity.User;
import buaa.sem.amc.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<User> findAllUsers() {  
        return this.userDao.findAllUsers();  
    }

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		this.userDao.add(user);
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		this.userDao.deleteUser(user);
	}

	@Override
	public User findUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.findUserById(userId);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		this.userDao.updateUser(user);
	} 
	
}
