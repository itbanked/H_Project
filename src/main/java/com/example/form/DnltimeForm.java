package com.example.form;

import java.util.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.domain.Dnltime;

public class DnltimeForm extends Dnltime{

	@NotNull
	@Override
	public Date getAttend() {
		// TODO Auto-generated method stub
		return super.getAttend();
	}

	@Override
	public void setAttend(Date attend) {
		// TODO Auto-generated method stub
		super.setAttend(attend);
	}

	@Override
	public Date getLeave() {
		// TODO Auto-generated method stub
		return super.getLeave();
	}

	@Override
	public void setLeave(Date leave) {
		// TODO Auto-generated method stub
		super.setLeave(leave);
	}

	@Size(max=15)
	@Override
	public String getReason() {
		// TODO Auto-generated method stub
		return super.getReason();
	}

	@Override
	public void setReason(String reason) {
		// TODO Auto-generated method stub
		super.setReason(reason);
	}

	@Digits(integer=3, fraction=0)
	@Override
	public int getDnlCode() {
		// TODO Auto-generated method stub
		return super.getDnlCode();
	}

	@Override
	public void setDnlCode(int dnlCode) {
		// TODO Auto-generated method stub
		super.setDnlCode(dnlCode);
	}

	@Digits(integer=10, fraction=0)
	@Override
	public int getMembersrl() {
		// TODO Auto-generated method stub
		return super.getMembersrl();
	}

	@Override
	public void setMembersrl(int membersrl) {
		// TODO Auto-generated method stub
		super.setMembersrl(membersrl);
	}

}
