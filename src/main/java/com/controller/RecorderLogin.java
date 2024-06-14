package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RecorderLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("Remail");  
	    String p=request.getParameter("Rpassword");  
	    
	    System.out.println(n);
	    System.out.println(p);
        
	    String url="jdbc:mysql://localhost:3306/klu6";
		 String username="root";
		 String password="@Godepriya194@";
		 Connection con;
		try {
			con = DriverManager.getConnection(url,username,password);
		
			PreparedStatement ps=con.prepareStatement("select *from register_recorder WHERE Remail = ? AND Rpassword = ?");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet result=ps.executeQuery();
			  if (result.next()) {
	                response.sendRedirect("recorderhome.jsp");
	            } else {
	            	out.print("Sorry UserName or Password Error!");  
	                RequestDispatcher rd=request.getRequestDispatcher("recorderlogin.jsp");  
	                rd.include(request, response); 
	                
	                result.close();
	                ps.close();
	                con.close();
	            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
