package com.radhi;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentCurd
 */
@WebServlet(description = "Stdent curd opearations", urlPatterns = { "/StudentCurd" })
public class StudentCurd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentCurd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		String id=request.getParameter("id");
		
		if(action.equals("edit")) {
			MysqlCon con=new MysqlCon();
			Student stu=con.getStudentbyId(Integer.parseInt(id));
			 request.setAttribute("stu",stu);
			 request.getRequestDispatcher("Edituser.jsp").forward(request, response);
		}else {
			MysqlCon con=new MysqlCon();
			boolean result=con.deleteStudent(Integer.parseInt(id));
			request.setAttribute("message", "Student is Deleted");
			request.getRequestDispatcher("/StudentList").forward(request, response);	
			
		}
		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("fname");
		String s2=request.getParameter("lname");
		String s3=request.getParameter("ph_no");
		long phno = Long.parseLong(s3);
		String s4=request.getParameter("branch");
		String s5=request.getParameter("email");
		String sid=request.getParameter("sid");
		Student s= new Student();
		s.setSid(Integer.parseInt(sid));
		s.setFname(s1);
		s.setLname(s2);
		s.setPhno(phno);
		s.setBranch(s4);
		s.setEmail(s5);
		MysqlCon con=new MysqlCon();
		String result=con.editDetails(s);
		if(result.equals("s")) {
			request.setAttribute("message", "Student is Updated");
			 request.getRequestDispatcher("/StudentList").forward(request, response);
		}
		
	}

}
