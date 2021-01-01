package com.radhi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MysqlCon {
	private Connection getConnection()
	{
		Connection con=null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk", "root", "root");
			 return con;
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
		}
	public String saveDetails(String fname,String lname,long phno,String branch,String email)
	{
		boolean boo=false;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into students(fname,lname,Phno,branch,email) values(?,?,?,?,?)");
			ps.setString(1,fname);
			ps.setString(2,lname);
			ps.setLong(3, phno);
			ps.setString(4,branch);
			ps.setString(5,email);
			boo=ps.execute();
			ps.close();
			con.close();
			return "s";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "n";
	}
	
	public String editDetails(Student s) {
		
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update students set fname=?,lname=?,Phno=?,branch=?,email=? where ID=?");
			ps.setString(1,s.getFname());
			ps.setString(2,s.getLname());
			ps.setLong(3, s.getPhno());
			ps.setString(4,s.getBranch());
			ps.setString(5,s.getEmail());
			ps.setInt(6, s.getSid());
			ps.executeUpdate(); 
			ps.close();
			con.close();
			return "s";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "no";
		
	}
	public ArrayList<Student> studentlist()
	{
		ArrayList<Student> al=new ArrayList<Student>();
		try {
			Connection con=getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from students");
			while (rs.next())
			{
				Student s=new Student();
				s.setSid(rs.getInt(1));
				s.setFname(rs.getString(2));
				s.setLname(rs.getString(3));
				s.setPhno(rs.getLong(4));
				s.setBranch(rs.getString(5));;
				s.setEmail(rs.getString(6));
				al.add(s);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return al;
	}
	
	public boolean deleteStudent(int id) {
		boolean result=false;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from students where ID=?");
			ps.setInt(1, id);
			result  = ps.execute();
			
			return result;
			}catch (Exception e) {
				// TODO: handle exception
			}
		return result;
	}
	
	public Student getStudentbyId(int id) {
		Student s=null;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from students where ID=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next())
			{
				s=new Student();
				s.setSid(rs.getInt(1));
				s.setFname(rs.getString(2));
				s.setLname(rs.getString(3));
				s.setPhno(rs.getLong(4));
				s.setBranch(rs.getString(5));;
				s.setEmail(rs.getString(6));
				
				return s;
			}
			
			}catch (Exception e) {
				// TODO: handle exception
			}
		return s;
	}
}