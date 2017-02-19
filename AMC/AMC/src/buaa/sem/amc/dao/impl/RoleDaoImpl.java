package buaa.sem.amc.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import buaa.sem.amc.dao.RoleDao;
import buaa.sem.amc.dao.UserDao;
import buaa.sem.amc.entity.Role;
import buaa.sem.amc.entity.User;

public class RoleDaoImpl extends HibernateDaoSupport implements RoleDao {

	@Override
	public void add(Role role) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Role> findAllRoles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> findByName(String roleName) {
		// TODO Auto-generated method stub
		List roles=(List<Role>)getHibernateTemplate().find("from Role r where r.roleName=?",roleName);
		return roles;
	}



}
