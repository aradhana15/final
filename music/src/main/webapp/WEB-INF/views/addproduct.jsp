<html>
<%@include file="header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Product Addition</title>	</head>
    <body>
        <h3>Welcome, Enter The Employee Details</h3>
        <form:form method="POST" action="addproduct" commandName="addpro" enctype="multipart/form-data">
             <table>
               <%--  <tr>
                    <td><form:label path="id">Product Id</form:label></td>
                    <td><form:input path="id"/></td>
                </tr> --%>
                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="manufacturer">Manufacture</form:label></td>
                    <td><form:input path="manufacturer"/></td>
                </tr>
                <tr>
                    <td><form:label path="desc">Description</form:label></td>
                    <td><form:input path="desc"/></td>
                </tr>
                <tr>
                    <td><form:label path="price">Price</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>
               <tr>
                    <td><form:label path="image">Icon</form:label></td>
                    <td><form:input type="file" path="image" value="Browse"/></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
