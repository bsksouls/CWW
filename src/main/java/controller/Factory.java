package controller;

import dao.member.MemberDao;
import dao.porder.PorderDao;
import model.Member;
import model.Porder;

public class Factory {
	private MemberDao mD;
	private PorderDao pD;
	private Member member;
	private Porder porder;
	public MemberDao getmD() {
		return mD;
	}
	public void setmD(MemberDao mD) {
		this.mD = mD;
	}
	public PorderDao getpD() {
		return pD;
	}
	public void setpD(PorderDao pD) {
		this.pD = pD;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Porder getPorder() {
		return porder;
	}
	public void setPorder(Porder porder) {
		this.porder = porder;
	}
	
}
