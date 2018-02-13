package com.college.onlineD.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;




@Entity
@Table(name="businessinfo")
public class User {
	@Id
	@GeneratedValue
	
	private long bid;
	@Column
	private  String bname;
	@Column
	private String bcontactno;
	@Column
	private String blocation;
	@Column
	private String bemail;
	@Column
	private String bdescription;
	@Column
	private String busername;
	@Column
	private String bpassword;
	@Column
	private String bcpassword;
	public long getBid() {
		return bid;
	}
	public void setBid(long bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBcontactno() {
		return bcontactno;
	}
	public void setBcontactno(String bcontactno) {
		this.bcontactno = bcontactno;
	}
	public String getBlocation() {
		return blocation;
	}
	public void setBlocation(String blocation) {
		this.blocation = blocation;
	}
	public String getBemail() {
		return bemail;
	}
	public void setBemail(String bemail) {
		this.bemail = bemail;
	}
	public String getBdescription() {
		return bdescription;
	}
	public void setBdescription(String bdescription) {
		this.bdescription = bdescription;
	}
	public String getBusername() {
		return busername;
	}
	public void setBusername(String busername) {
		this.busername = busername;
	}
	public String getBpassword() {
		return bpassword;
	}
	public void setBpassword(String bpassword) {
		this.bpassword = bpassword;
	}
	public String getBcpassword() {
		return bcpassword;
	}
	public void setBcpassword(String bcpassword) {
		this.bcpassword = bcpassword;
	}
	
}
	
