package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Member;

public class LoginAction extends ActionSupport{
	private String user;
	private String password;
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute() throws Exception{
		/*
		if(user.equals("aaa") && password.equals("1234")){
		
			return SUCCESS;
		}
		return ERROR;
		*/
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Factory fact = (Factory) ac.getBean("fact");
		
		Member[] member = fact.getmD()
						.queryHql("from Member where user='"+getUser()+"' and password='"+getPassword()+"'")
						.toArray(new Member[0]);
		try {
			Map map =ActionContext.getContext().getSession();
			
			map.put("member", member[0]);
			
			if(member[0].getUser().equals("CWW")) {
				return "CWW";
			}
			
			return SUCCESS;
		}catch (ArrayIndexOutOfBoundsException e) {
			return ERROR;
		}
		
	}
}
