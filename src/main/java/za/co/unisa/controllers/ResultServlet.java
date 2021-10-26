package za.co.unisa.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import za.co.unisa.dao.StudentDao;


@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	StudentDao studentDao = new StudentDao();
	
    public ResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		
		if(username.equals("chi")&& password.equals("chi")) {
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
		

	}else {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	
	}
}
