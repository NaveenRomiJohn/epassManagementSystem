<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>sql:query Tag</title>
</head>
<body>

	<sql:setDataSource var="db" driver="oracle.jdbc.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="oracle" />

	<sql:query dataSource="${db}" var="rs">  
SELECT * from epass_admin;  
</sql:query>

	<table border="2" width="100%">
		<tr>
			<th>Admin ID</th>
			<th> Name</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<td><c:out value="${table.admin_id}" /></td>
				<td><c:out value="${table.admin_name}" /></td>
				<td><c:out value="${table.admin_email}" /></td>
				<td><c:out value="${table.admin_password}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>