package za.co.unisa.controllers;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import za.co.unisa.dao.StudentDao;
import za.co.unisa.models.Student;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req,HttpServletResponse res) {
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String telephoneNumber = req.getParameter("telephoneNumber");
		String emailAddress = req.getParameter("emailAddress");
		String dateOfBirth = req.getParameter("dateOfBirth");
		String maritalStatus = req.getParameter("maritalStatus");
		String course = req.getParameter("course");
		
		Student student = new Student();
		student.setFirstName(firstName);
		student.setLastName(lastName);
		student.setTelephoneNumber(telephoneNumber);
		student.setEmail(emailAddress);
		student.setDateOfBirth(dateOfBirth);
		student.setMaritalStatus(maritalStatus);
		student.setCourse(course);
		
		StudentDao studentDao = new StudentDao();
		try {
			PrintWriter out = res.getWriter();
			studentDao.insertStudent(student);
			 
			out.println("Record successfully inserted");
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
protected void doGet(HttpServletRequest req,HttpServletResponse res) {
		
	}
}
