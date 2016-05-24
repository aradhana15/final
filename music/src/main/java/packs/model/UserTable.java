package packs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserTable {
	
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="UID")
	int uid;
	
	public void setUid(int uid) {
		this.uid = uid;
	}
	String uname;
	String upassword;
	String utype;
	public UserTable()
	{}
	public int getUid() {
		return uid;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUtype() {
		return utype;
	}
	public void setUtype(String utype) {
		this.utype = utype;
	}
	
	

}
