<%-- 
    Document   : index
    Created on : 22/04/2018, 15:00:25
    Author     : Soriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("sairbtn") != null) {
        session.removeAttribute("usuario");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cred. RU</title>
        <link rel="stylesheet" href="../assets/css/credru.css">
    </head>
    <body>
        <jsp:include page="include/header.jsp"></jsp:include>
        
        blah blah blah ...<br>
        blah blah blah ...<br>
        blah blah blah ...<br>
        blah blah blah ...<br>
        
        <jsp:include page="include/footer.jsp"></jsp:include>
    </body>
</html>
