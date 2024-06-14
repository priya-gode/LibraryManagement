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


public class Studentinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		LibraryModel em=new LibraryModel();
		Library e=new Library();
		int t1=Integer.parseInt(request.getParameter("sid"));
		String t2=request.getParameter("sname");
		String t4=request.getParameter("book");
		String t5=request.getParameter("issued");
		String t6=request.getParameter("returnd");
		String t7=request.getParameter("returned");
		int t3=Integer.parseInt(request.getParameter("fine"));
		String t8=request.getParameter("status");
		
		e.setSid(t1);
		e.setSname(t2);
		e.setBook(t4);
		e.setIssued(t5);
		e.setReturnd(t6);
		e.setReturned(t7);
		e.setFine(t3);
		e.setStatus(t8);
		
		String ack;
		try {
			ack = em.insertStudent(e);
			pw.print(ack);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
