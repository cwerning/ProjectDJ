<%-- 
    Document   : cart
    Created on : Feb 27, 2018, 1:19:54 PM
    Author     : wernc
--%>

<%@page import="edu.wctc.cw.week4.model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="jquery-ui-1.12.1.custom/jquery-ui.min.css">
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
        
        <link rel='stylesheet' type='text/css' href='css/SiteCSS.css' />
        <script src='StorefrontJS.js' type='text/javascript'></script>
    </head>
    <header><h1>Aliquam pretium quam nec mi rhoncus, sed laoreet nibh sollicitudin.</h1></header>
    <body>
        <ul>
            <li><a class="default" href="index.jsp">Home</a></li>
            <li><a class="active" href="cart.jsp">Cart</a></li>
        </ul>
        <br><br>
        
        <table>
            <tr>
                <td>Product:</td>
                <td><c:out value="${product.productName}"></c:out></td>
                <td><c:out value="${product.productDescription}"></c:out></td>
                </tr>


        </table>
    </body>
</html>

