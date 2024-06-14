package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Library;
import com.model.LibraryModel;

public class RecorderRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException  {
		response.setContentType("text/html");
		PrintWriter pw;
		try {
			
			pw = response.getWriter();
		
		LibraryModel em=new LibraryModel();
		Library e=new Library();
		String name=(request.getParameter("Lname"));
		String email=request.getParameter("Lemail");
		String password=request.getParameter("Lpassword");
		String phon=request.getParameter("Lmobile");
		e.setLname(name);
		e.setLemail(email);
		e.setLpassword(password);
		e.setLmobile(phon);
		
		String ack;
		
			ack = em.insertLibraran(e);
			pw.print(ack);
			RequestDispatcher dispatcher = request.getRequestDispatcher("librarianlogin.jsp");
	        dispatcher.forward(request, response);
			 
			
		} catch (SQLException | IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
