<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>

body,html{
	background-color: #FAFAFA;
}
.all{
	width: 600px;
	margin: 0 auto 0 auto;
	text-align: center;
	padding: 20px;
}
.h2{
	font-size: 15px; 
	font-family: Georgia;
}

</style>

<title>Cennik badań</title>
</head>
<body>

	<div class="all">
	
		<h2>Zapraszamy do zapoznania się z cennikiem badań</h2>
	    <p>Możesz dodawać, usuwać i modyfikować badania.</p><br><br>
	    <p><a href="BadanieController?action=wszystkieBadania" style="padding: 10px; border: outset; border-width: 1px; background-color: #F2FFF0; color: #0F9200; text-decoration: none;">Zapraszam</a></p><br><br>
	    <p><a href="Cennik?action=przyklad" style="padding: 5px; border: outset; border-width: 1px; background-color: #E2FFFF; color: #007375; text-decoration: none;">Przykładowy cennik</a></p>	
	</div>
	
</body>
</html>