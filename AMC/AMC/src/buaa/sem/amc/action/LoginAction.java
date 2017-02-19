package buaa.sem.amc.action;


import com.opensymphony.xwork2.ActionSupport;

import buaa.sem.amc.entity.User;
import buaa.sem.amc.service.LoginService;

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private LoginService loginService;
	private String userName;
	private String password;
	
	public LoginService getLoginService() {
		return loginService;
	}
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		if(userName.equals("")||password.equals("")){
			return INPUT;
		}
		else{
			User user=new User();
			user.setUserName(userName);
			user.setPassword(password);
			if (loginService.checkUser(user)) {
				return SUCCESS;
			} else {
				return INPUT;
			}
		} 
		//return SUCCESS;

	}

}
