package buaa.sem.amc.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import buaa.sem.amc.dao.UserDao;
import buaa.sem.amc.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	/***
	 * 保存
	 */
	@Override
	public void add(User user) {
		getHibernateTemplate().save(user);
	}


	@Override
	public List<User> findAllUsers() {
		String hql = "select new buaa.sem.amc.entity.User(u.userId,u.userName,u.password,u.realName,u.department,r.roleName,r.roleDescription) from User as u,Role as r where u.roleId=r.roleId order by u.userId";  
		Query query=getSession().createQuery(hql);
		List<User> list =query.list();
		//List<User> list = this.getHibernateTemplate().find(hql); 
        return list;
	}



	@Override
	public List<User> findByNameAndPwd(User user) {
		// TODO Auto-generated method stub
		List users=(List<User>)getHibernateTemplate().find("from User u where u.userName=? and u.password=?",new String[]{user.getUserName(),user.getPassword()});
		return users;
	}


	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(user);
	}


	@Override
	public User findUserById(int userId) {
		// TODO Auto-generated method stub
		User user = null;  
        user = (User) this.getHibernateTemplate().get(User.class, userId);  
        return user;  
	}


	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);  
	}

}
