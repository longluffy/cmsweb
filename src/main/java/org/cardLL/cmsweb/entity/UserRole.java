package org.cardLL.cmsweb.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
 
@Entity
@Table(name = "user_role", uniqueConstraints = //
           @UniqueConstraint(columnNames = { "username", "user_role" }))
public class UserRole {
 
    private String roleId;
    private User user;
    private String userRole;
 
    @Id
    @Column(name = "role_id", nullable = false)
    public String getRoleId() {
        return roleId;
    }
 
    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }
 
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "username")
    public User getUser() {
        return user;
    }
 
    public void setUser(User user) {
        this.user = user;
    }
 
    @Column(name = "user_role", length = 30, nullable = false)
    public String getUserRole() {
        return userRole;
    }
 
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
 
}