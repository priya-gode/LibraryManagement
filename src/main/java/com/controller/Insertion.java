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


public class Insertion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		LibraryModel em=new LibraryModel();
		Library e=new Library();
		int t1=Integer.parseInt(request.getParameter("bid"));
		String t2=request.getParameter("bname");
		int t3=Integer.parseInt(request.getParameter("quantity"));
		int t4=Integer.parseInt(request.getParameter("available"));
		int t5=Integer.parseInt(request.getParameter("taken"));
		e.setBid(t1);
		e.setBname(t2);
		e.setQuantity(t3);
		e.setAvailable(t4);
		e.setTaken(t5);
		String ack;
		try {
			ack = em.insertData(e);
			pw.print(ack);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	}
		

