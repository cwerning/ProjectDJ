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

    <header><h1>Aliquam pretium quam nec mi rhoncus, sed laoreet nibh sollicitudin.</h1></header>
    
    <body>
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            
        </ul>
        <br><br>
        <table>
            <c:forEach var="productList" items="${productList}">
            <tr>
         
                 <td>
                    <a href="?id=<c:out value="${productList.id}"/>">
                        <c:out value="${productList.productName}"/>
                    </a>
                </td>
             </tr>
            </c:forEach>
        </table>


    </body>


</html>