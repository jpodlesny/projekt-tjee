<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
.table {
	width: 800px;
	margin: auto;
	block: centre;		
}
.table h2 {
	margin-top: 20px;
	font-size: 25px;
	text-align: center;
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

<title>Przykładowy cennik</title>
</head>
<body>

<div class="table">
	<h2>PRZYKŁADOWY CENNIK BADAŃ</h2>
	<table>
		<tr>
			<th>Nazwa</th>
			<th>Opis</th>
			<th>Koszt badania (zł)</th>
		</tr>
		<tr>
			<td>Morfologia</td>
			<td>Podstawowe, diagnostyczne badanie krwi</td>
			<td>50</td>
		</tr>
		<tr>
			<td>Mycoplazma pneumoniae IgM</td>
			<td>Badanie na obecność bakterii</td>
			<td>35</td>
		</tr>
		<tr>
			<td>Alergeny – panel mieszany 20 alergenów</td>
			<td>Sprawdzanie uczuleń</td>
			<td>100</td>
		</tr>
		<tr>
			<td>Mocz- badanie ogólne</td>
			<td>Badanie ogólne moczu</td>
			<td>45</td>
		</tr>
		<tr>
			<td>AspAT</td>
			<td>Badanie wzrostu aktywności AspAT</td>
			<td>200</td>
		</tr>
		<tr>
			<td>Cholesterol</td>
			<td>Badanie substancji lipidowych w osoczu</td>
			<td>60</td>
		</tr>
		<tr>
			<td>Grupa krwi</td>
			<td>Sprawdzenie grupy krwi</td>
			<td>110</td>
		</tr>
	</table>
	<br><br>
	<p><a href="BadanieController?action=start" style="padding: 10px; border: outset; border-width: 1px; background-color: #E2FFFF; color: #007375; text-decoration: none;">Powrót</a></p>
	
</div>


</body>
</html>