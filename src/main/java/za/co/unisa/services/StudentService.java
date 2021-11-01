package za.co.unisa.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import za.co.unisa.dao.StudentDao;

import za.co.unisa.models.Student;

public class StudentService {

	
	public static List<Student> selectAllStudent() {
	
	String sqlQuery = "Select * from student";	
	List<Student> students = new ArrayList<>();
	
	try{Connection con = StudentDao.getConnection();
	Statement stm = null;
	ResultSet rs = null;
	stm = con.createStatement();
	rs = stm.executeQuery(sqlQuery);
	while(rs.next()){
		String firstName = rs.getString("firstName");
		String lastName = rs.getString("lastName");
		String telephoneNumber = rs.getString("telephoneNumber");
		String emailAddress = rs.getString("email");
		String dateOfBirth = rs.getString("dateOfBirth");
		String maritalStatus = rs.getString("maritalStatus");
		String course = rs.getString("course");
		
		Student student = new Student();
		student.setFirstName(firstName);
		student.setLastName(lastName);
		student.setTelephoneNumber(telephoneNumber);
		student.setEmail(emailAddress);
		student.setDateOfBirth(dateOfBirth);
		student.setMaritalStatus(maritalStatus);
		student.setCourse(course);
		students.add(new Student());
	}
	}catch(SQLException e) {
		System.out.println(e);
	}
	return students;
	}
	
}
