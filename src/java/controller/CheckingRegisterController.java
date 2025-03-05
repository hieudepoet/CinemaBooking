/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Utility.CheckRegisterForm;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sampleRegistration.RegistrationDAO;

/**
 *
 * @author OS
 */
@WebServlet(name = "CheckingRegisterController", urlPatterns = {"/CheckingRegisterController"})
public class CheckingRegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url="RegisterPage.jsp";
        try{
            String username=request.getParameter("txtUserRegister");
            String password=request.getParameter("txtPassRegister");
            String lastname=request.getParameter("txtLastRegister");
            String email=request.getParameter("txtGmailRegister");
            String confirm=request.getParameter("txtConRegister");
            RegistrationDAO dao= new RegistrationDAO();
            
                CheckRegisterForm checking= new CheckRegisterForm();
                boolean error1=checking.checkUsername(username);
                boolean error2=checking.checkPassword(password);
                boolean error3=checking.checkEmail(email);
                boolean error4=confirm.equals(password);
                boolean error5=dao.checkingExist(username);
                
//                out.print(error4);
                
                request.setAttribute("invalidUsername", error1);
                request.setAttribute("invalidPassword", error2);
                request.setAttribute("invalidEmail", error3);
                request.setAttribute("invalidMatching", error4);
                request.setAttribute("existUsername", error5);
                
                if(error1&&error2&&error3&&error5==false&&error4){url="RegisterController";}
            
            
        }catch(Exception e){e.printStackTrace();}
            RequestDispatcher rd= request.getRequestDispatcher(url);
            rd.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CheckingRegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckingRegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CheckingRegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckingRegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
