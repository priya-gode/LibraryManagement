package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LibraryModel {
	String url="jdbc:mysql://localhost:3306/klu6";
	 String username="root";
	 String password="@Godepriya194@";
	 
	public String insertData(Library e1) throws SQLException
	{
		Connection con=DriverManager.getConnection(url,username,password);
	 PreparedStatement ps=con.prepareStatement("insert into library values(?,?,?,?,?)");
	 ps.setInt(1,e1.getBid());
	 ps.setString(2,e1.getBname());
	 ps.setInt(3,e1.getQuantity());
	 ps.setInt(4,e1.getAvailable());
	 ps.setInt(5,e1.getTaken());
	 ps.execute();
	 ps.close();
	 return "insertion done successfully";
	}
	public String deleteData(int id)throws Exception
	{
		Connection con=DriverManager.getConnection(url,username,password);
		 PreparedStatement ps=con.prepareStatement("delete from library where bid=?");
		 ps.setInt(1, id);
		 ps.execute();
		 ps.close();
		 return "deletion done successfully";
	}
	 public List<Library> readData()throws Exception
	 {
	  Connection con=DriverManager.getConnection(url,username,password);
	  PreparedStatement ps=con.prepareStatement("select *from library");
	  ResultSet rs=ps.executeQuery();
	  List<Library> l=new ArrayList<Library>();
	  while(rs.next())
	  {
	   Library e=new Library();
	   e.setBid(rs.getInt(1));
	   e.setBname(rs.getString(2));
	   e.setQuantity(rs.getInt(3));
	   e.setAvailable(rs.getInt(4));
	   e.setTaken(rs.getInt(5));
	   l.add(e);   
	  }
	  return l;
	 }
	 public String updateData(Library e2) throws SQLException
		{
			Connection con=DriverManager.getConnection(url,username,password);
			 PreparedStatement ps=con.prepareStatement("update library set bname=?,quantity=?,available=?,taken=? where bid=?");
			 ps.setString(1,e2.getBname());
			 ps.setInt(2,e2.getQuantity());
			 ps.setInt(3, e2.getAvailable());
			 ps.setInt(4,e2.getTaken() );
			 ps.setInt(5,e2.getBid());
			 ps.execute();
			 ps.close();
			 return "Update done successfully";
			
		}
	 public String insertStudent(Library e2) throws SQLException
		{
			Connection con=DriverManager.getConnection(url,username,password);
		 PreparedStatement ps=con.prepareStatement("insert into student_details values(?,?,?,?,?,?,?,?)");
		 ps.setInt(1,e2.getSid());
		 ps.setString(2,e2.getSname());
		 ps.setString(3,e2.getBook());
		 ps.setString(4,e2.getIssued());
		 ps.setString(5,e2.getReturnd());
		 ps.setString(6, e2.getReturned());
		 ps.setInt(7, e2.getFine());
		 ps.setString(8, e2.getStatus());
		 ps.execute();
		 ps.close();
		 return "insertion of student details done successfully";
		}
	 public String deleteStudent(int id)throws Exception
		{
			Connection con=DriverManager.getConnection(url,username,password);
			 PreparedStatement ps=con.prepareStatement("delete from student_details where sid=?");
			 ps.setInt(1, id);
			 ps.execute();
			 ps.close();
			 return "deletion done successfully";
		}
	 public List<Library> studentData()throws Exception
	 {
	  Connection con=DriverManager.getConnection(url,username,password);
	  PreparedStatement ps=con.prepareStatement("select *from student_details");
	  ResultSet rs=ps.executeQuery();
	  List<Library> l=new ArrayList<Library>();
	  while(rs.next())
	  {
	   Library e=new Library();
	   e.setSid(rs.getInt(1));
	   e.setSname(rs.getString(2));
	   e.setBook(rs.getString(3));
	   e.setIssued(rs.getString(4));
	   e.setReturnd(rs.getString(5));
	   e.setReturned(rs.getString(6));
	   e.setFine(rs.getInt(7));
	   e.setStatus(rs.getString(8));
	   l.add(e);   
	  }
	  return l;
	 }
	 public String studentUpdate(Library e3) throws SQLException
		{
			Connection con=DriverManager.getConnection(url,username,password);
			 PreparedStatement ps=con.prepareStatement("update student_details set returned=?,fine=?,status=? where sid=?");
			
			 ps.setString(1,e3.getReturned());
			 ps.setInt(2, e3.getFine());
			 ps.setString(3, e3.getStatus());
			 ps.setInt(4, e3.getSid());
			 ps.execute();
			 ps.close();
			 return "Update done successfully";
			
		}
	 public String insertRegister(Library e1) throws SQLException
		{
			Connection con=DriverManager.getConnection(url,username,password);
		 PreparedStatement ps=con.prepareStatement("insert into register_recorder values(?,?,?,?)");
		 ps.setString(1,e1.getRname());
		 ps.setString(2,e1.getRemail());
		 ps.setString(3,e1.getRpassword());
		 ps.setString(4,e1.getRmobile());
		
		 ps.execute();
		 ps.close();
		 return "Registration done successfully do login to continue";
		}
	 public String insertLibraran(Library e1) throws SQLException
		{
			Connection con=DriverManager.getConnection(url,username,password);
		 PreparedStatement ps=con.prepareStatement("insert into librarian_register values(?,?,?,?)");
		
		 ps.setString(1,e1.getLname());
		 ps.setString(2,e1.getLemail());
		 ps.setString(3,e1.getLpassword());
		 ps.setString(4,e1.getLmobile());
		 ps.execute();
		 ps.close();
		 return "Registration librarian done successfully";
		}
	
	 
}
