/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Hi
 */
public class UserDTO {
    private String username;
    private String password;
    private String full_name;
    private String email;
    private String role;
    
    public UserDTO(String full_name, String username, String password, String email, String role) {
        this.username = username;
        this.password = password;
        this.full_name = full_name;
        this.email = email;
        this.role = role;
    }
    
    public UserDTO(String full_name, String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.full_name = full_name;
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return full_name;
    }

    public void setFullName(String full_name) {
        this.full_name = full_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "username=" + username + ", password=" + password + ", fullName=" + full_name + ", email=" + email + ", role=" + role + '}';
    }
}
