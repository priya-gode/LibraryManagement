package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Library;
import com.model.LibraryModel;


public class Studentupdates extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		Library e2=new Library();
		LibraryModel em=new LibraryModel();
		int empid=Integer.parseInt(request.getParameter("sid"));
		String returnde=request.getParameter("returned");
		int fin=Integer.parseInt(request.getParameter("fine"));
		String sta=request.getParameter("status");
		
		e2.setSid(empid);
		e2.setReturned(returnde);
		e2.setFine(fin);
		e2.setStatus(sta);
		try {
			String ack=em.studentUpdate(e2);
			pw.print(ack);
			
		} catch (SQLException e) {
			
		}
	}

}
