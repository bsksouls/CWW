package model;

public class Porder {
	private Integer id;
	private String name;
	private Integer pro1;
	private Integer pro2;
	private Integer pro3;
	private Integer sum;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPro1() {
		return pro1;
	}
	public void setPro1(Integer pro1) {
		this.pro1 = pro1;
	}
	public Integer getPro2() {
		return pro2;
	}
	public void setPro2(Integer pro2) {
		this.pro2 = pro2;
	}
	public Integer getPro3() {
		return pro3;
	}
	public void setPro3(Integer pro3) {
		this.pro3 = pro3;
	}
	public Integer getSum() {
		sum = pro1*20+pro2*30+pro3*40;
		return sum;
	}
	public void setSum(Integer sum) {
		this.sum = sum;
	}
	
}
