/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sampleRegistration;

import Utility.CheckRegisterForm;
import utils.DBUtils;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author OS
 */
public class RegistrationDAO implements Serializable{
//    public boolean checkLogin(String username, String password) throws SQLException, ClassNotFoundException{
//        Connection con= null;
//        PreparedStatement stm=null;
//        ResultSet rs=null;
//        try {
//            con=DBUtils.getConnection();
//            String sql="select * from tblRegistration where username=? and password=? and flag=?";
//            stm=con.prepareStatement(sql);
//            stm.setString(1, username);
//            stm.setString(2, password);
//            stm.setString(3, "False");
//            rs=stm.executeQuery();
//            if(rs.next()){
//                return true;
//            }
//        }finally{
//            if(con!=null){con.close();}
//            if(stm!=null){stm.close();}
//            if(rs!=null){rs.close();}
//        }
//        return false;
//    }

//    public boolean deleteByUsername(String username) throws ClassNotFoundException, SQLException{
//        Connection con=null;
//        PreparedStatement stm=null;
//        try {
//            con=DBUtils.getConnection();
//            String sql="Update tblRegistration set flag=? where username=?";
//            stm=con.prepareStatement(sql);
//            stm.setString(1, "True");
//            stm.setString(2, username);
//            
//            int row=stm.executeUpdate();
//            if(row>0){
//                return true;
//            }
//        }finally{
//            if(con!=null){con.close();}
//            if(stm!=null){stm.close();}        
//        }
//        return false;
//    }
//    public boolean updateByUsername(String username,String lastname,String password,boolean role) throws SQLException, SQLException, ClassNotFoundException{
//        Connection con=null;
//        PreparedStatement stm=null;
//        try {
//            con=DBUtils.getConnection();
//            String sql="update tblRegistration set password=?, lastname=? ,isAdmin=? where username =?";
//            stm=con.prepareStatement(sql);
//            stm.setString(1, password);
//            stm.setString(2, lastname);
//            stm.setBoolean(3, role);
//            stm.setString(4, username);
//            int row=stm.executeUpdate();
//            if(row>0){return true;}
//        }finally{
//            if(con!=null){con.close();}
//            if(stm!=null){stm.close();}
//        }
//        return false;
//    }
//    public boolean checkingRole(String username) throws SQLException, ClassNotFoundException{
//        Connection con=null;
//        PreparedStatement stm=null;
//        ResultSet rs= null;
//        boolean role=false;
//        try {
//            con=DBUtils.getConnection();
//            String sql="select * from tblRegistration where username=?";
//            stm=con.prepareStatement(sql);
//            stm.setString(1, username);
//            rs=stm.executeQuery();
//            if(rs.next()){
//               role=rs.getBoolean("isAdmin");
//            }
//            return role;
//        }finally{
//            if(rs!=null){rs.close();}
//            if(stm!=null){stm.close();}
//            if(con!=null){con.close();}
//        }
//    }
    public boolean checkingExist(String username) throws SQLException, ClassNotFoundException{
        Connection con=DBUtils.getConnection();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            String sql="select * from Users where username =?";
            stm=con.prepareStatement(sql);
            stm.setString(1, username);
            rs= stm.executeQuery();
            if(rs.next()){return true;}
        }finally{
            if(con!=null){con.close();}
            if(con!=stm){stm.close();}
        }
        return false;
    }
    public boolean registerAccount(String full_name, String username,String password,String email) throws ClassNotFoundException, SQLException{
        Connection con=DBUtils.getConnection();
        PreparedStatement stm=null;
        try {
            String sql="Insert into Users (full_name,username,password,email,role,created_at)\n" +"values (?,?,?,?,?,GETDATE())";
            stm=con.prepareStatement(sql);
            stm.setString(1, full_name);
            stm.setString(2, username);
            stm.setString(3, password);
            stm.setString(4, email);
            stm.setString(5, "USER");
            int row=stm.executeUpdate();
            if(row>0){return  true;}
        } 
        finally{
            if(con!=null){con.close();}
            if(stm!=null){stm.close();}
        }
        return false;
    }
}
