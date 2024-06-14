package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Library;
import com.model.LibraryModel;


public class Registerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		LibraryModel em=new LibraryModel();
		Library e=new Library();
		String t1=(request.getParameter("Rname"));
		String t2=request.getParameter("Remail");
		String t4=request.getParameter("Rpassword");
		String t5=request.getParameter("Rmobile");
		e.setRname(t1);
		e.setRemail(t2);
		e.setRpassword(t4);
		e.setRmobile(t5);
		
		String ack;
		try {
			ack = em.insertRegister(e);
			pw.print(ack);
			RequestDispatcher dispatcher = request.getRequestDispatcher("recorderlogin.jsp");
		        dispatcher.forward(request, response);
			 
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
