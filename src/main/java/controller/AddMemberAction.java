package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Member;

public class AddMemberAction extends ActionSupport{
	private String name;
	private String user;
	private String password;
	private String mobile;
	private String phone;
	private String address;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	@Override
	public String execute() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Factory fact = (Factory) ac.getBean("fact");
		
		Member[] user = fact.getmD()
						.queryHql("from Member where user='"+getUser()+"'")
						.toArray(new Member[0]);
		try {
			Map map =ActionContext.getContext().getSession();
			
			map.put("user", user[0]);
			
			return ERROR;
		}catch (ArrayIndexOutOfBoundsException e) {
			Member newMember = new Member();
			
			newMember.setUser(getUser());
			newMember.setPassword(getPassword());
			newMember.setName(getName());
			newMember.setMobile(getMobile());
			newMember.setPhone(getPhone());
			newMember.setAddress(getAddress());
			
			fact.getmD().add(newMember);
			
			return SUCCESS;
		}
	}
}
