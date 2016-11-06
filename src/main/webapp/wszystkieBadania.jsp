<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet+JSP</title>

<style>

html,body {
	background-color: #FAFAFA;
	font-family: Georgia;
	font-size: 12px;
}
.header {	
	width: 600px;
	margin: 100px auto 0 auto;
}
.table h2 {
	margin-top: 20px;
	font-size: 25px;
	text-align: center;
}
.table {
	width: 800px;
	margin: auto;		
}
.table table {
	width: 100%;
	text-align: left;
}
.table table th {
	width: 200px;
	padding: 10px;
	font-size: 16px;
	background-color: #D1D1D1;
}
.table table td {
	padding: 2px;
	font-size: 13px;
	background-color: #FFFFFF;
	border-bottom: 1px solid #D9D9D9;
}

</style>
</head>

<body>
<div class="table">
	<h2>CENNIK BADAŃ</h2>
	<table>
			<tr>
				<th>Nazwa</th>
				<th>Opis</th>
				<th>Koszt badania (zł)</th>
				<th colspan="2">Opcje</th>
			</tr>

				<c:forEach items="${badania}" var="badanie">
					<tr>
	                    <td><c:out value="${badanie.nazwa}" /></td>
	                    <td><c:out value="${badanie.opis}" /></td>
	                    <td><c:out value="${badanie.koszt}" /></td>
	                    <td><a onclick="return confirm('Edytować?')" href="BadanieController?action=edit&nazwa=<c:out value="${badanie.nazwa}"/>">Edytuj</a></td>
                    	<td><a onclick="return confirm('Usunąć?')" href="BadanieController?action=delete&nazwa=<c:out value="${badanie.nazwa}"/>">Usuń</a></td>                 
             		</tr>
           		</c:forEach>

    </table>
    <p><a href="BadanieController?action=dodaj" style="padding: 3px; border: outset; border-width: 1px; background-color: #F2FFF0; color: #0F9200; text-decoration: none; float: right;">Dodaj badanie</a></p><br><br>
    
    <jsp:useBean id="kosztBadania" class="model.Badanie"></jsp:useBean>
    <jsp:setProperty property="*" name="kosztBadania"/>
    
    <p>Koszt ostatnio dodanego badania: <jsp:getProperty property="koszt" name="kosztBadania"/> zł.</p><br><br>
    <p><a href="BadanieController?action=start" style="padding: 3px; border: outset; border-width: 1px; background-color: #F2FFF0; color: #0F9200; text-decoration: none; float: left;">Cofnij</a></p>
     
</div>

</body>
</html>
