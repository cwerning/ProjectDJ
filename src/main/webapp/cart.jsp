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
    <header>
        <a href="CartController">
            <img src="images/cart.png" title="Your Cart" height="50px">
        </a>

    </header>
    <body>
        <br><br>
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
        </ul>
        <br><br>

        <table>

            <c:forEach var="cartList" items="${cartList}">
                <tr>

                    <td>
                        <a title="${cartList.productName}">

                            <c:out value="${cartList.productName}"/>
                     
                        </a>
                    </td>
                </tr>
            </c:forEach>
                
            <!--will not work

            <c:forEach var="quantityList" items="${quantityList}">
                <tr>
                    <td>
                        <c:out value="${quantityList.intValue()}"/>
                    </td>
                </tr>
            </c:forEach>
            
            -->

        </table>
    </body>
</html>

