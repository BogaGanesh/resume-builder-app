package com.codegnan.resumeApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codegnan.resumeApp.Dao.LoginDAO;
import com.codegnan.resumeApp.model.register;

@WebServlet("/login")
public class loginServlet extends HttpServlet{

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		register reg=new register(email, password);
		
		LoginDAO logindao=new LoginDAO();
		
		boolean value=logindao.checkUser(reg);
		
		if(value==true)
		{
			HttpSession session=req.getSession(true);
			session.setAttribute("email", reg.getEmail());
			
			
			RequestDispatcher rd=req.getRequestDispatcher("Dashboard.jsp");
			rd.forward(req, res);

		}
		else
		{
			 req.setAttribute("error", "Invalid Email or Password!");
	         RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
	         rd.forward(req, res);
		}
		
	}
	
}
