<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIREhIREBIZEhgYGBweGBIZGBwhHBIUGBkZHBoaHRwcIy4lHB4rHxgaJzgmKy8xNTU1HCY7QDs0Py40NTEBDAwMDw8QHhISHj8rISs1NDg0Pj8+ODo0OzQ9ND00MTQ4PT80NjQ2NTQ0Pz40NDE0NDQ2NDQ0PzQ0ND00NTE0NP/AABEIALcBFAMBIgACEQEDEQH/xAAcAAEAAwADAQEAAAAAAAAAAAAABQYHAgMEAQj/xABJEAACAQICAwoKCAQFBAMAAAABAgADBBESBSExBgcTFSJBUVRx0RQ1QlJhc4GRkpMjMjRigqGxs3KywcMWRFOi0iUzQ5Qko8L/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAgMEAQUG/8QALBEBAAIBAgMHAwUBAAAAAAAAAAECAwQRMUGRBRITIVFhcTJSgRUiI0OhFP/aAAwDAQACEQMRAD8A1XiO06rR+UndHEdp1Wj8pO6SMQI7iO06rR+UndHEdp1Wj8pO6SMQI7iO06rR+UndHEdp1Wj8pO6SMQI7iO06rR+UndHEdp1Wj8pO6SMQI7iO06rR+UndHEdp1Wj8pO6SMQI7iO06rR+UndHEdp1Wj8pO6SMQI3iO06pR+UndHEdp1Sj8pO6SUQI3iO06rR+Un/GOI7TqtH5Sf8ZJRAjeI7TqlH5Sd0cR2nVKPyk7pJRAjuI7TqtH5Sd0+cR2nVaPyk/4ySiBG8R2nVKPyk7o4jtOqUflJ3SSiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7o4jtOq0flJ3SRiBHcR2nVaPyk7okjEBERAREQEREBERAREQEREBPhM+xAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBETwcaUOCFxwq8GTgKmPJLFsmHxau2B74kRd7oLOizLVuERkODqTrQ4K3KA2DB1OJ1codM4XWlKdKtmqXNNaQoZyh24ZwBVzbMmvDtOMCaieWteU0amjuFZ82RSdb5Bi2HYNZnlstOWtw5ShXSowBOCn6yg4Er5wB5xiIEpEh03SWRxwuqZwTOTm1Cnq5ROwDlL7x0zhX0zTqU1a3uUT6amrMykg52UcHgcCGYHBT0kQJuJXKG661erdU2qKgoYYuW1MAMXbZqCk4HHoMmat5TRqaM4DVCQi463IGY4dOA1wPVPkThUqBQSSABtJ5pyZ2HOJA3W6OkupAXPTsHvO2eB901U/VVV7cT/UTFk7R09J2md/jzaa6TNaN4hbYlNO6G4+78M4HdTUX670x24D+shXtPDbhE9Ep0WWOO3VdYlap6ZuSATblgdhAIxH5z0ppmp5VtUHYCf6CXV1uK3rH4lXbT3j06wnIkWumqflhk/iVv1E9VK9pP9V1PoxGPul9ctLcJVTS0cYeuJ8xn2WIkREBERAREQEREBERARODuACWIAG0nYJ5bm/ppRevmDKisxKkEHKCcAdmOqB7YkRoC+rXFFa1ZKaZwrKtOoXwVgDgxKjBhjrwxkiLhCxQOpYbVxGI9m2B3TOnp1xo8WHgtY1ErgsQhycGLrhA6vsYFcNQ1jXiBhL/w6Zsmdc3m5hmw7Ns5Z116xq269nPr6IFZs7BxV0yz0j9KyhCV/wC6gtkXBfOGbMO3GR2hNDu5tKdzScIdFCjUzKcA5ZA1NidjYY6vRLTcaWopWo0CwzVQxXAjAKgBJJx1Y5hh0zp0XpcVmuFfLT4O4ekuLf8AcyKhx18/K2DogVS20NeXVG6WupSpTtWtaDNq4RjjwlYHzXC0xj6DPboe2FSpaGot4r0AcqVKSLToE02Rlzoih1IOACs2PJMu06FuUYsqupK/WAYYr2jmgVLQ+iVXQ9Ohc0Kg5OL00Q8IG4TMHCjlZgQG59mw7J5a63lehkdatZUvLU0qr0slV6SVEaozoAMAuB5WVcderpntB6ZqXT1WCU1orUemrcITUdkbLmKZcoUkNhyicAOmSPhTNVprTyPTZXLVA4zBlKhQqjaNbYnHVgOmBCW1DC90hRrUajU7nJg4QmmyCjkcMw1KcQRgdZxE8O4+hUqV2aucwsla1ptt4Rw2L1MenItJfQQ0td1wdYNQ4UqxGvI+V1wIOIIOInVoi2t6FMULYjKhOIDZjmJJZmOJJYkkknnge8tgMTKTpfSbV3Kg4IDqHnekyx6fuClBsDrbk+/b+WMyTdBp0qTRoHAjUzjm+6PT0meR2hbJkvGGnzL1ezdP35m+3wldI6Zo0MQTmbzV2+3mErt3unrMTkwpj0AFvedX5SBJx1mfJDBosWPzmN5930MYKbbT5vRcXVSp9eq7Y8zMcPdjhPMaQ5iJzienTUWpG0bbfDHl7J01/PziflKaF3RXliR4PVIXnptykI/h5vw4GaRoDfJtq2CXa+Cv55JNNj/FtT8Wr0zI4znplk6mtvqr0Yrdh7fRfq/SlN1ZQykMCMQwOII9BG2KlBG+sgPaBPz9ojT91Z4+D1mUHamoofTlOoH0iT9HfK0guGYUX7UYE+5h+kh4lJ5M9uyNRXhMT+Wvi0UfVGX+EkfkDhOwKR5RPaB/TCZbT31aw+taoex2H6gzuG+s3PZj5p/4TsXpHBVPZmq+3/YahjEymrvqVcOTaovpNQn8gonlTdzpa6OW3prr/wBKkzYdpYsBO+JVz9N1HG20R7zDXmcAEk4SE/xLQqVfB7Y+E1PKCa0pDHAl32AegYn0Sm2e47SN6c2krl0Q4Y082ZiOjKOQv59kv2h9DULOmKVugQc58pj0sdpMlFpnkpyY8WONu9vPtw6pIT7ESTMREQERECq7s0BayNdS1stfG4GBKgZG4NnA2oHwxx1bCdkhatG3q1NIvZojWxs2zlEHBPdqWKMgwys6oNbL93nEv71FX6zAdpGv3z4K6eevxCBHbmqCU7O1CKEBpISFUDFmVSxIHOTtMq2i3Sjci3tWo3edq7LVC/T2lRldsarc6ljkxOU6wNcvXhCeevxCfBWTz1+IQMyQWvF9KjTp4aRBTk5T4Qt4HGd3bDNlxzEsTlK+iTXh1O2raYp12yvVZXp08DmrqbamnIHl8pGBw2Ya5c+GTz1+IRwyeevxCBntpStqS6CrXKU1XwQq1R0GGcUqJpAkj62psuPpwndV0XRqW2naj0lZ+EuMrMMSuSkrKVJ1ryteI55fTWTzl94jh089fiEDy2FVvBaTkFm4JWI52bIDh2kygaOqU61zoqoiW6Z3qB6FGkQaCPb1CadZyeU2IwKsq4kE4appPhCeevxCfOGTz1+IQM4o6Opm0pqKYTPpUq5RQpakLioFXFQDlCHAdAOqTOlLEUr63p2dNaR8CvMiooVRUY0MpwAwBxlv4dPPX4hHDp56/EIFJ0BeWFKzXg6SvdJbu1S3Kjwh6qoTVDYjMWZgRjz4zy6CZDf2DUfBwGoVQy21IotPk0ytNnxIcjDZgCMMcBjL+Kybc6/EIFZPPX4hArW72pUFui0EZ6jOFRVGJLFW1+wYnH0So6I3sqtQZ7utwWPkJyj7WOoHsxmpmunnr7xPouE89fiEq8Kvem3OWvFrMuLH3KeXvzVK13udHphnR6h6Xc6/YuAkjT3GaOXZaIe3E/qZOcOnnr8Qnzh089feJOK1jkqnU5p42nqiP8IaO6nS+AT4dx+jj/lKfsXD9JM8Onnr7xHDp56+8R3Y9EfHy/dPWUA24jRp/wAqo7Cw/QzqbcDo0/5fDsdx/wDqWTwhPPX3iOHTz194ju19Eo1OaOFp6qbeb2ti4+jNSieYq2Ye0Pj/AElav96+6TE29anVHmuGRvyzA/lNX8ITz1+IR4Qnnr8QnYiI5Jf9ef75YHe7lNI0Mc9o5A8pAHB+Ak/lPNZXtO3bC7sVq+h2qU3H54f7Z+hOHTzl+ITg70m1MyMOgkH9ZZE051hXbU6mf7JZbondXoVMC2j+CPnZEcD2k5vylrobv9FAYCtkA5jScYe5ZN1dGWL63o27ekoh/UTgmiNHqcVt7dfSKdPuj+PlCqb5LT+626Op7vdHOcKVV6p82nRqsT7AklrPSNSrgVtqlNfOq5Ux7FxLY9oE9VNqSDBSijoBA/SdnhCeevxCRmY5QRu7onFWBGIOI6ROU46REQERECL0qLPFDd8CDrycKUGrVjhm9n5TzW1vo2q2SkttUbDHKmRjgOfAc2uevTGibe6Qrc0kqgBsCyglMRrKnap1DWOiZNvTD/qJ9Q/89OBrXElp1al8C90cSWnVqXwL3SRiBHcSWnVqXwL3TqraLsqal6lGiijazKgA5tZOoSWlY3xvFd12J+4kD3WthYVgTSp0KgBwJQIwB6CRzz0cSWnVqXwL3Slbzf2a69cP21mjQIa6sLCiA1WnQpgnAFwignbgCeecrfRtjVXNSpUXXzlVSMR6RKlvyfZbb1/9t5UN77dObCvwdVvoKpAbHZSfYHHo5m9GvmgbFxJadWpfAvdHElp1al8C9094OOsTlAjeI7Tq1P4F7p4GGigSCbUEHAgmniCNRBlhmU77WibejToVqVJKbvUYOyKBnBUtiwG04jbt1mBoFHRdjUUPTo0XU7GVVIPNqI1GfauibJFLvQoqoGJZkUBR0knYJHb3Xiu0/hf9x5YLiilRGSoodWBDIwBDA7QQdRECE/6T02vxU++e/iO06tT+Be6Y1vg6No2ukeDoItNWRHyqMFDFmBwHMOTsE3VdggeDiS06tS+Be6fDoS0G22pfLXukiThMX3TborrS90LOyzcEWKqinDhsNrufM1EgHVht1wL3eaS0JRYrUa2BG0KoYjtyA4RaaS0JVOVHtcTsDKqk+xwJAaN3qaYUeFXLs3OtIKqj0YsCT24Cc73eoolT4Pcuh5hUVWX/AGhTAu66FtCARb0iDzhF1/lOXElp1al8C90r297ufudHpcU7kgguMmViUyhdZUH6uJOvUNkuUCO4ktOrUvgXujiS06tS+Be6SM6q9VURnY4KoJZjzADEn3QIevbaNptkqLbI2rktwYJB1DUdc9fEdp1an8C90wTTd1Uv611eFSVzDE81NGOWmp6NQA7cZte4fTPhtlSqscXUZKnTnTVie0YN+KBIcR2nVqfwL3T7xJadWpfAvdJGIHVRorTUKihFGxQMAOwCdsRAREQEREDhV+q3Yf0mL703jI+of+anNoq/VbsP6TF96bxkfUP/ADU4G1xEQErG+N4ruuxP3ElnlY3xfFd12J+4kCA3mvs1164ftrNGmc7zX2a69cP20mjQM735Pstt6/8AtvK8Ny/hehra5oLjWpirioGutSFapivpZdZHtHOJYd+T7Lbev/tvJnez8V23bU/eqQILev3VcKgsK74ug+icnW9MeRjzso/LsmkTHd8Pc69jcLpC0xpozhiV1cBXxxBH3WPsxxGwgTQdx26FNIWy1BgtRcFqoPJfDaPunaPdzQLDM435R/8AHtfXH9tpo8zjfl+zWvrj/I0Cw73Xiu17H/ceWaVje58V2vY/7jyzwMV31PGiepp/z1Js6bB2TGN9Txonqaf87zZ02DsgRW6qoyWN4yamFCoQRtByNrmdbzlJPCLpjhmWmgXpClmz4e0JNYr0ldGRhirAqy9KsMCPcZhmkLC60FeB6ZOUE8HUIJStTPkP6cMMR0jEc0DeIlM3Pb4VpdAJVbwWpsyueSx+6+z2HAy4g464HKIiAlD31tM8BaC2Q4PcHA4c1JcC/v1L2Ey+TE9JOdM6ZFNTmpB8gPMKFPEu34jmwP3lgW3cXuWQ6KenWGDXalmJGtFI+i92AbtMre9jpF7S9q2Nfk8ISuXmWvTx2fxDMPTgs2BFCgADAAYAdAGwTIN8/Rz2l7SvqPJ4Qhsw8mvTw/UBT6cGgbFEj9C6RS7t6NymyogOHmnyl7QQR7JIQEREBERAREQOFX6rdh/SYvvTeMT6h/5qc2lhiCJim9u/A6W4N9RK1aeH3lOOH/1mBtsREBKxvjeK7rsT9xJZ5UN8+5CaNrKdtRkVR0nOGP5KYERvNfZrr1w/bSaNM/3nqJWzrOfLrnDsWmg/XGaBAzvfk+y23r/7byZ3s/Fdt21P3qkht+T7La+v/t1JM72fiu27an71SBYr6zSvTelVUOjKQynnB/SYuDX3P6R8qpTb3V7cn3Z1/XoDTcZXd2G51NI25p/VqLyqVTzHw2H7rbD7+YQJmxu0r00q0mDI6gqw5wZQt+X7Na+uP7bSE3u90L2VdtHXeKKzlVzf+GvjgVP3WPsxwPlYyb35fs1r68/tvAnt7nxXa9j/ALry0Srb2/iu17H/AHHlpgYrvqeNE9TT/nqTaF2CYtvp+NE9TT/nqTaV2CBynmvbOlXRqdamtRG2owBB9hnpiBmGn961GxewqZD/AKNQkqfQrbR7ce2Vey0zpPQ1QUqgZVH+Xqa0dRzowxw7VPPrE3eRentDUr2g1CsMQRyW8qm3MynmIgdW5vT9HSFEVqOojU9M/Wpt0H0dB55MzE97K4e30mbcnU6ujjmL08WB9hVh+IzbIFX3wNM+B2NRkbB6n0adIZwcWHYoY9uErm9DofJTq3jrrc5KZ+4h5ZHa2r8Egd8S/e/0itnQGYUyKaqDtrORnPs5I9GUztt9yWnaaKlOq1NV1Kq3JAUegA6oGySu7uND+GWVWkoxdRnp/wAaa8PaMV/FKD/hndD/AK9T/wBo98f4Y3Q/67/+03fA9+9BpnEVbJzs+kp/wnAOvvwP4jNRmACjdaHvqFS4XK6kOcGzB6bEq4xG0kZvbhN6oVVdVdTmVgCrDYVIxB9xgdsREBERAREQExbd/o6po/SK3tHUtRxURuZaynF1PadfpDHom0yP0voujd0moXC51b3gjYwPMR0wPNuc09Rv6K1qTa9j08eVTfnUj9DziTMxu/3DaS0fV4bR1RqijYyMFqAdDoeSw7McegT4u7HTtPkPQckasXtXzH4QAfdA2J2ABJOAG0nmExjfB3Q8Y3FO1tMaiI2CZf8Az1m1Yr90DUD6WOzAxWoad0ryKi1FpnarrwVP8QwDOPY0vG4/cNSsPpajCtXwwz4cmmOcIDz/AHjr7IE3uZ0SLK0o2w1lF5TDynY5nPZmJ9mEl4iBne/J9ltfX/26kmd7PxXbdtT96pPFvoaKuLq3oJbUmqstbMyrhqXI4x1kc5ElNwVlUt9H0KVemabqXzIcMRmqOw2eggwLJERAzjfP3LcKhvrdfpEH0qga6lNfK/iUe8dglN05ulN7o62o1jjWo1Rix/8AJT4Nwr9oOo+w883cjGY3uw3B3FO5Z7Gi1WlUxYIuH0LY8pMCRydeI93NrC+72/iu17H/AHHlpld3C2dSho+3pVkKOufMhwxXGo5Gz0ESxQMU30/Giepp/wA9SbSuwTKt8Pc9eXOkFq29u9RBTpjOuXDMrOSNZx1Aj3zVV2CALYDEzz2V5SrotWi61EYYq6kEEdonZc0y6OoOUlSA3QSCMZjx3KaZ0Wxeydqi85onHMB51J9p9jdsDZ5G6b0rTs6FS4qnBVGoc7t5KjpJOqZd/jXTa8g25LdLWtTN7hgPynSm53TGlqiveF6aDyqoyBAduSkADj2gY9MD7vXWb3GkHuWGqmrszc3CVMVA9zOfZNR3TaVFlaVrg7VU5R51RtSj4iPZjG57QdGxoLQoDVtZz9aox2s3p9HMNUp++jZ312aNva271Ka8t3XLgznFVXWRjgMT+IQInen0Ua1xVvqnK4PEKx8qtU1u3aFP++a7ITcpogWVpRoYcoLmcjnqNrbt1nDsAk3AREQKHvraH4e0FwgxegcT0mk2Af3cluxTOW9Xpjh7Q27Ni9ucuHOaTa6Z9nKX8Il0r0VqI9NxmVwVZTzqwwI9xmR6B0NpPRd9UqUrR7imM6HBkHC0swKsCT9bUDrHSIGxRPNZVmqU0dqbUiygmm2GZD5pykjEegz0wEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED//Z"
width="150" height="100"/>

<h2>Welcome to UNISA</h2>

<form action="SearchServlet" method ="post">
		
		<select>
		<option>Select an option</option>
		<option>firstName</option>
		<option>lastName</option>
		<option>telephoneNumber</option>
		<option>email</option>
		<option>dateOfBirth</option>
		<option>maritalStatus</option>
		<option>course</option>
		</select>
		
		<input type="text" name="search"/>
		<input type="submit" value= "Search"/>
		
		<p></p>
		
		<table border=''><tr><th>firstName</th><th>lastName</th><th>telephoneNumber</th>
				<th>email</th><th>dateOfBirth</th><th>maritalStatus</th><th>course</th>
		<%! public Connection getConnection() {
	Connection con = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db","root","YOURNEWPASSWORD");
	}catch(Exception e) {
		System.out.println(e);
	}
	return con;
}
%>
<%!String val = null; %>
<%  

Statement stm = null;
ResultSet rs = null;

try {
	Connection con = getConnection();
	 stm = con.createStatement();
	//rs = stm.executeQuery("select * from student where firstName = '"+val+"'" + "OR where lastName = '"+val+"'" + " OR where email = '"+val+"'");
	//rs = stm.executeQuery("select * from student where firstName = '"+val+"'");
	//val = (String)request.getAttribute("val");
	String val = request.getParameter("search");
	rs = stm.executeQuery("select * from student where firstName like '%"+val+"%'" + " OR lastName like '%"+val+"%'" + "OR email like '%"+val+"%'" + " OR telephoneNumber like '%"+val+"%'");
	
	while(rs.next()) {
		%>
		<tr><td>
		<%= rs.getString("firstName")%>
		</td>
		<td>
		<%=rs.getString("lastName")%>
		</td>
		<td>
		<%=rs.getString("telephoneNumber")%>
		</td>
		<td>
		<%=rs.getString("email")%>
		</td>
		<td>
		<%=rs.getString("dateOfBirth")%>
		</td>
		<td>
		<%=rs.getString("maritalStatus")%>
		</td>
		<td>
		<%=rs.getString("course")%>
		</td>
		</tr>
		
	<% }		
	
} catch (SQLException e) {
	
}%>


</table>
		</form>
</body>
</html>