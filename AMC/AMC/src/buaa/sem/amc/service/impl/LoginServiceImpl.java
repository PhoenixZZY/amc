package buaa.sem.amc.service.impl;
import java.util.List;

import buaa.sem.amc.dao.UserDao;
import buaa.sem.amc.entity.User;
import buaa.sem.amc.service.LoginService;

public class LoginServiceImpl implements LoginService {
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public boolean checkUser(User user) {
		// TODO Auto-generated method stub
		List<User> users= (userDao.findByNameAndPwd(user));  
		
        if(users.size()>0)  
            return true;  
        else  
            return false;  
	}
	
}
