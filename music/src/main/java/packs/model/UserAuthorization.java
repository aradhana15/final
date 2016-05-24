package packs.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class UserAuthorization {
	@Id
	int User_Role_Id;
	int Uid;
	String role;
	public int getUser_Role_Id() {
		return User_Role_Id;
	}
	public void setUser_Role_Id(int user_Role_Id) {
		User_Role_Id = user_Role_Id;
	}
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
