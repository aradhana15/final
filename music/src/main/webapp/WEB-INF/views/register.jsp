<%@include file="header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
	.error{
		color:red;font-weight:bold;}
</style>
</head>
<body>
   <h3>Welcome, Enter The Employee Details</h3>
        <form:form method="POST" action="addmember" commandName="addmem">
             <table>
               <%--  <tr>
                    <td><form:label path="id">Product Id</form:label></td>
                    <td><form:input path="id"/></td>
                </tr> --%>
                <tr>
                    <td><form:label path="cname">Name</form:label></td>
                    <td><form:input path="cname"/></td>
                </tr>
                <tr>
                    <td>Set Password</td>
                   <td> <form:input path="cpassword"></form:input></td>
                    <td><form:errors path="cpassword" type="password" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Email Id</td>
                    <td><form:input path="cemail"></form:input>
                    <td><form:errors path="cemail" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><form:label path="cphone">Contact Number</form:label></td>
                    <td><form:input path="cphone" maxlength="10"/></td>
                </tr>
                 <tr>
                    <td><form:label path="caddress">Address</form:label></td>
                    <td><form:textarea rows="3" cols="50" path="caddress"/></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="Join"/></td>
                </tr>
            </table>
        </form:form>


</body>

</html>