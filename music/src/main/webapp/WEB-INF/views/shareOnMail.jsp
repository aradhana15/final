<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Share the Product</title>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
</head>
<body>
<form method="post" action="/product/sendEmail">
			<table border="0" width="80%">
				<tr>
					<td>To:</td>
					<td><input type="text" name="recipient" size="65" /></td>
				</tr> 
				<tr>
					<td>Subject:</td>
					<td><input type="text" name="subject" size="65" /></td>
				</tr> 
				<tr>
					<td>Message:</td>
					<td><textarea cols="50" rows="10" name="message"></textarea></td>
				</tr> 
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Send E-mail" />
					</td>
				</tr>
			</table>
		</form>  			
  			
</body>
</html>