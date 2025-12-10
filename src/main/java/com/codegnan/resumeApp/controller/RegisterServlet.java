package com.codegnan.resumeApp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codegnan.resumeApp.Dao.RegisterDAO;
import com.codegnan.resumeApp.model.register;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	RegisterDAO regdao=new RegisterDAO();
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		res.setContentType("text/html");;
		PrintWriter writer=res.getWriter();
		
		String name=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String pswd=req.getParameter("pswd");
		
		
		if(password.equals(pswd))
		{
			register reg=new register(name, email, password);
						
			boolean value=regdao.addUser(reg);
			
			if(value)
			{
				HttpSession session=req.getSession(true);
				session.setAttribute("name", reg.getName());
				session.setAttribute("email", reg.getEmail());
				session.setAttribute("password", reg.getPassword());
				
				req.setAttribute("msg", "User Registration Succesfull!");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, res);
			}
			else
			{
				req.setAttribute("msg", "User already Registered!");
				RequestDispatcher rd=req.getRequestDispatcher("register.jsp");
				rd.forward(req, res);
			}
			
		}
		else
		{
			req.setAttribute("error", "Password Do Not Match");
			RequestDispatcher rd=req.getRequestDispatcher("register.jsp");
			rd.forward(req, res);
		}
		
		
		
		
	}

}
