<%-- 
    Document   : productList
    Created on : Feb 12, 2018, 9:47:39 PM
    Author     : Chad Werning
--%>

<%@page import="java.util.List"%>
<%@page import="edu.wctc.cw.week3.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <table>
            <%
                List<Product> productList = (List<Product>) request.getAttribute("productList");
                for (Product product : productList) {
            %>
            <tr>
                
                <td>
                    <a href="?id=<%= product.getId()%>"><%= product.getProductName()%></a>
                </td>
               
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>