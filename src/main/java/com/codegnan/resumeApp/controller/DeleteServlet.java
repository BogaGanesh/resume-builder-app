package com.codegnan.resumeApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codegnan.resumeApp.Dao.deleteResume;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        HttpSession  session=req.getSession(false);
        
        String email=(String) session.getAttribute("email");
        
        if(email==null)
        {
        		res.sendRedirect("login.jsp");
        		return;
        }
        
        deleteResume dao = new deleteResume();
        boolean deleted = dao.deleteResume(email);
        
        if (deleted) {
        	
        		req.setAttribute("message", "Resume Deleted Succuessfully");
            RequestDispatcher rsd=req.getRequestDispatcher("Dashboard.jsp");
            rsd.forward(req, res);
            
        } else {
        		req.setAttribute("msg", "Resume Deletion Failed (or) not Exist");
        		req.getRequestDispatcher("view.jsp").forward(req, res);
        }
    }
}
