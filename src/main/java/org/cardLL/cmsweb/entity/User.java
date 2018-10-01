package org.cardLL.cmsweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name = "users")
public class User {
 
    private String username;
    private String password;
    private int enabled;
    private String displayname;
    private String sub_of;
    private long balance;
    
    @Id
    @Column(name = "username", length = 50, nullable = false)
    public String getUsername() {
        return username;
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
 
    @Column(name = "password", nullable = false)
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
   

    @Column(name = "displayname", nullable = true)
	public String getDisplayname() {
		return displayname;
	}

    @Column(name = "enabled", nullable = false)
	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public void setDisplayname(String displayname) {
		this.displayname = displayname;
	}

	@Column(name = "sub_of", nullable = true)
	public String getSub_of() {
		return sub_of;
	}

	public void setSub_of(String sub_of) {
		this.sub_of = sub_of;
	}

	public long getBalance() {
		return balance;
	}

	public void setBalance(long balance) {
		this.balance = balance;
	}


	
    
 
}