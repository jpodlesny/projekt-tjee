<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>

html,body {
	padding: 0;
	font-family: Georgia;
	font-size: 19px;
	background-color: #FAFAFA;
	color: #000;
}
.all {	
	width: 300px;
	margin: 50px auto 0 auto;
	text-align: left;
}

.form {
    margin:10px auto;
    max-width: 400px;
    font: 13px "Georgia";
}
.form li {
    padding: 0;
    display: block;
    list-style: none;
    margin: 10px 0 0 0;
}
.form .field{
	width: 100%;
}
.btn {
    background: #F2FFF0;
	border: outset; 
	border-width: 1px;
    color: #0F9200;
	float: right;
}

</style>

<title>Dodawanie/modyfikowanie</title>
</head>

<body>
	<div class="all">   
	    <form method="POST" action="BadanieController">
			<ul class="form">
	    		<li>
	    			<label>Typ</label>
	    			<input type="text" name="typ" class="field" value="<c:out value="${badanie.typ}" />"/>
	    		</li>
	    		<li>
	        		<label>Data badania</label>
	        		<input type="text" name="data" class="field" value="<c:out value="${badanie.data}" />"/>
	    		</li>
	    		<li>
	       			 <label>Opis</label>
	       			 <input type="text" name="opis" class="field" value="<c:out value="${badanie.opis}" />"/>
	    		</li>
	    		<li>
	    			<label>Koszt badania (zł)</label>
	    			<input type="text" name="koszt" class="field" value="<c:out value="${badanie.koszt}" />"/>
	   			</li>
			</ul>
			<input type="submit" class="btn" value="Dodaj" />
		</form>			
	 </div>
</body>
</html>