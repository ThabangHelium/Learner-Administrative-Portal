<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Classes</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background.jpg');">
	<div id="page">
		<jsp:include page="left-list.jsp" />


		<div id="wrapper">

			<div id="header">
				<h3>Classes</h3>
			</div>
		</div>


		<div id="container">

			<div id="content">

				<table>

					<tr>

						<th>Section</th>
						<th>Subject</th>
						<th>Teacher</th>
						<th>Time</th>
						<th>List of Students</th>

					</tr>

					<c:forEach var="tempClass" items="${classes_list }">
						<tr>

							<c:url var="tempLink" value="AdminControllerServlet">
								<c:param name="command" value="ST_LIST" />
								<c:param name="classId" value="${tempClass.id }" />
								<c:param name="section" value="${tempClass.section }" />
								<c:param name="Subject" value="${tempClass.subject }" />
							</c:url>

							<td>${tempClass.section}</td>
							<td>${tempClass.subject}</td>
							<td>${tempClass.teacher}</td>
							<td>${tempClass.time}</td>
							<td><a href="${tempLink }">List</a></td>
 




						</tr>


					</c:forEach>

				</table>
			</div>
		</div>
	</div>

</body>
</html>