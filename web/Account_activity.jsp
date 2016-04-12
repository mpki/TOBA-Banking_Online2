<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->        

<jsp:include page="header.html"/>
<html>
    <head>
        <title>Account Page</title>
        <link rel="stylesheet" href="CSS/TOBA.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
        <c:if test="${pageContext.request.getSession(false) != null}">
            <c:if test="${User.username == null}">
            <h5>Hello J Smith!</h5>
            <h4>Login Successful!</h4>
            </c:if>
            <c:if test="${User.username != null}">
                <h5>Hello ${User.firstname} ${User.lastname}!</h5>
                <h4>Login Successful!</h4> 
            </c:if>
        </c:if>
        <c:if test = "${pageContext.request.getSession(false) == null}">
        <h5>Not logged in</h5>
        </c:if>
        </div>
    </body>
</html>
<jsp:include page="footer.jsp"/>