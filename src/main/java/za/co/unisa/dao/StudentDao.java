package za.co.unisa.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import za.co.unisa.models.Student;

public class StudentDao {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db","root","YOURNEWPASSWORD");
		}catch(Exception e) {System.out.println(e);
		}
		return con;
	}

	public static ResultSet getResultSet(String sqlQuery) {
		Statement stm = null;
		Connection con = getConnection();
		try {
			stm = con.createStatement();
		}catch(SQLException e) {
			System.out.println(e);
		}
		ResultSet rs = null;
		try {
			rs = stm.executeQuery(sqlQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	Student student = new Student();
	public void insertStudent(Student student) {
		
		try {
			Connection con = getConnection();
			String sqlVal = "insert into student"+"(firstName,lastName,telephoneNumber,email,dateOfBirth,maritalStatus,course)" + " values(?,?,?,?,?,?,?);";	
			PreparedStatement pst = con.prepareStatement(sqlVal);
					pst.setString(1, student.getFirstName());
					pst.setString(2, student.getLastName());
					pst.setString(3, student.getTelephoneNumber());
					pst.setString(4, student.getEmail());
					pst.setString(5, student.getDateOfBirth());
					pst.setString(6, student.getMaritalStatus());
					pst.setString(7, student.getCourse());
			pst.executeUpdate();
			System.out.println("successfull");
	    }catch(SQLException e){
			
		}
	}
}
