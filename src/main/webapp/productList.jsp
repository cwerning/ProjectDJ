<%-- 
    Document   : productList
    Created on : Feb 12, 2018, 9:47:39 PM
    Author     : Chad Werning
--%>

<%--<%@page import="java.util.List"%>
<%@page import="edu.wctc.cw.week4.model.Product"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Storefront Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel='stylesheet' type='text/css' href='css/SiteCSS.css' />

        <!-- <style>#slider { margin: 10px; }	</style> -->
 

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


            <c:forEach var="productList" items="${productList}">
                <tr>

                    <td>
                        <a title="${productList.productName}" href="?id=<c:out value="${productList.id}"/>">
                            <img border="0" src="images/${productList.id}.jpg" width="100" height="100">

                        </a>
                        <span>
                            <input class="addButtons" type="submit" value="Add To Cart" id="${productlist.id}" />
                        </span>
                    </td>
                </tr>
            </c:forEach>


        </table>


    </body>




</html>