package buaa.sem.amc.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import buaa.sem.amc.entity.User;
import buaa.sem.amc.service.RoleService;
import buaa.sem.amc.service.UserService;

public class UserAction extends ActionSupport {
	private UserService userService;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String list() throws Exception {

		Map request = (Map) ActionContext.getContext().get("request");

		request.put("list", this.userService.findAllUsers());
		return SUCCESS;
	}

	public String add() throws Exception {
		System.out.println(user.getRoleId());
		this.userService.add(user);
		return SUCCESS;
	}
	public String delete() throws Exception {  
        this.userService.delete(user);  
        return SUCCESS;  
    }  
	public String updateP() throws Exception {  
		this.user = this.userService.findUserById(user.getUserId());   
        return SUCCESS;   
    }  
	public String update() throws Exception {  
		this.userService.update(user);  
        return SUCCESS;  
    }  
}
