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


public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		Library e1=new Library();
		LibraryModel em=new LibraryModel();
		int empid=Integer.parseInt(request.getParameter("bid"));
		String empname=request.getParameter("bname");
		int empdept=Integer.parseInt(request.getParameter("quantity"));
		int empsal=Integer.parseInt(request.getParameter("available"));
		int take=Integer.parseInt(request.getParameter("taken"));
		e1.setBid(empid);
		e1.setBname(empname);
		e1.setQuantity(empdept);
		e1.setAvailable(empsal);
		e1.setTaken(take);
		try {
			String ack=em.updateData(e1);
			pw.print(ack);
			
			 RequestDispatcher  rd=request.getRequestDispatcher("add.jsp");
			  
			
		} catch (SQLException e) {
			
		}
	}

}
