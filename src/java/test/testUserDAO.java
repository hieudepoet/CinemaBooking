/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import sampleRegistration.UserDAO;
import dto.UserDTO;
import java.util.List;

/**
 *
 * @author Hi
 */
public class testUserDAO {
    public static void main(String[] args) {
        UserDAO users = new UserDAO();
        List<UserDTO> list = users.readAll();
        for (UserDTO user : list) {
            System.out.println(user);
        }
    }
}
