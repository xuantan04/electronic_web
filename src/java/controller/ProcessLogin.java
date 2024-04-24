/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

//import com.sun.tools.javac.jvm.Profile;
import dao.DAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import model.Sample;

//import sun.security.jgss.GSSUtil;

/**
 *
 * @author Tan
 */
public class ProcessLogin extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
       String user=request.getParameter("username");
        String adminpassword = request.getParameter("password");
        String db_username = getServletContext().getInitParameter("username");
        String db_password = getServletContext().getInitParameter("password");
        
        ArrayList<Sample> result =DAO.getAllSamples();
        
        request.getSession().setAttribute("allsamples", result);
        
        if(user.equalsIgnoreCase(db_username) && adminpassword.equalsIgnoreCase(db_password)){
            response.sendRedirect("allsamples.jsp");
        }
        else{
        String password=mahoa(request.getParameter("password"));
        boolean isLogin=UserDAO.login(user, password);
        if(isLogin){
            HttpSession session=request.getSession();
            session.setAttribute("email", UserDAO.getName(user));
            session.setAttribute("email1", user);
            
            response.sendRedirect("text.jsp");
//            RequestDispatcher rd =request.getRequestDispatcher("text.jsp");
            
            
//            rd.forward(request, response);
        }
        else {
               response.sendRedirect("login-error.html");
//            response.getWriter().write("login that bai");
            
        }
    }}
    private String mahoa( String password){
        try{
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte [] inputBytes = password.getBytes();
            byte [] hashBytes = md.digest(inputBytes);
            StringBuilder sb = new StringBuilder();
            for(byte i : hashBytes){
                sb.append(String.format("%02x",i));
            }
            return sb.toString() ;
        }
        catch(NoSuchAlgorithmException e){
            e.printStackTrace();
        }
        return null;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
