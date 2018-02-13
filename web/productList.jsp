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
        <title>Storefront Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


        <link rel="stylesheet" href="jquery-ui-1.12.1.custom/jquery-ui.min.css">
        <script src="jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
        <script src="jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>

        <link rel='stylesheet' type='text/css' href='SiteCSS.css' />
        <script src='StorefrontJS.js' type='text/javascript'></script>
        <!-- <style>#slider { margin: 10px; }	</style> -->
   
    </head>

    <header><h1>Aliquam pretium quam nec mi rhoncus, sed laoreet nibh sollicitudin.</h1></header>
    
    <body>
        <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            
        </ul>
        <br><br>
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