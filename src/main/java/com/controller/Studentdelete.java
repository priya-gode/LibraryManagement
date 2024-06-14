package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Library;
import com.model.LibraryModel;


public class Studentdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Library e=new Library();
		LibraryModel em=new LibraryModel();
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		int empid=Integer.parseInt(request.getParameter("sid"));
		e.setSid(empid);
		try {
			String ack=em.deleteStudent(empid);
			pw.print(ack);
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
