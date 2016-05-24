<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<%-- <%@taglib prefix="spr" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
		<script>
			function formSubmit() {

				document.getElementById("logoutForm").submit();

			}
		</script>
		<s:url value="/perform_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<s:if
                        test="${pageContext.request.userPrincipal.name != null}">
                        <h6>
                            Welcome : ${pageContext.request.userPrincipal.name} <a
                                href="javascript:formSubmit()"> Logout</a>
                            <security:authentication var="user"
                                property="principal.authorities" />

                            <security:authorize var="loggedIn" access="isAuthenticated()">

                                <security:authorize access="hasRole('Role_Admin')">
                                    Admin
                                </security:authorize>

                                <security:authorize access="hasRole('Role_User')">
                                    User
                                </security:authorize>
                            </security:authorize>
                        </h6>
                    </s:if>

<div class="container">
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		style="background-color: rgb(); font-weight: bold; play-during: mix; color: white">

		
		<div class="nav navbar-nav">
		
			<li class="active"><a href="house">Home</a></li>
			<li><a href="register">Register</a></li>
			<!-- if u by deflt make anything acive -->
			<li><a href="sign">Sign In</a></li>
			<li><a href="aboutus">About Us</a></li>
			<li><a href="contactus">Contact Us</a></li>
			<li><a href="product">Product</a></li>
			<li><a href="addnewproduct">Add Product</a></li>
			<li><img src="<c:url value='/resources/images/guitar.jpg' />"
				height="40px" width="30px"></li>
		</div>
	</div>
	<!-- <div class="nav navbar-nav"> -->
	<br> <br>
	<div class="nav nav-tabs">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<ul class="nav">
			<li class="active"><a href="whatecomm"> <i
					class="glyphicon glyphicon-question-sign"></i>What is Ecommerce?
			</a>
			<li><a href="yecomm"> <i
					class="glyphicon glyphicon-question-sign"></i>Why Ecommerce?
			</a></li>
			<li><a href="businessparter"> <i
					class="glyphicon glyphicon-user"></i>Business Partner
			</a></li>
			<li><a href="custreview"> <i
					class="glyphicon glyphicon-thumbs-up"></i>Customer Reviews
			</a></li>
		</ul>
	</div>
</div>

