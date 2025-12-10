package com.codegnan.resumeApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.codegnan.resumeApp.Dao.ResumeCreateDAO;
import com.codegnan.resumeApp.Dao.ResumeViewDAO;
import com.codegnan.resumeApp.model.Resume;

@WebServlet("/create")
public class ResumeServlet extends HttpServlet{
    
    ResumeViewDAO rsview = new ResumeViewDAO();
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
    {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        
        HttpSession session = req.getSession(false);
        
        String oldemail = (String) session.getAttribute("email");
        
        if(!email.equals(oldemail))
        {
            res.sendRedirect("register.jsp");
            return;
        }
        
        boolean val = rsview.checkResume(email);
        
        if(val)
        {
            res.sendRedirect("update");
            return;
        }
        
        
        String[] skills = req.getParameterValues("skills");
        String skill = String.join(",", skills);
        
        String college = req.getParameter("college");
        String degree = req.getParameter("degree");
        String year = req.getParameter("year");
        String education = college + ", " + degree + ", " + year;
        
        String company = req.getParameter("company");
        String duration = req.getParameter("duration");
        String experience = company + ", " + duration;
        
        String project = req.getParameter("project");

        String projectDesc = req.getParameter("projectDesc");
        String certificates = req.getParameter("certificates");
        String achievements = req.getParameter("achievements");
        
       
        Resume resume = new Resume(
                name, email, phone, skill, education, experience, project,
                projectDesc, certificates, achievements
        );
        
        ResumeCreateDAO rsc = new ResumeCreateDAO();
        
        boolean value = rsc.createResume(resume);
        
        if(value)
        {
            session.setAttribute("Object", resume);
            res.sendRedirect("viewresume");
        }
        
    }

}
