<%-- 
    Document   : index
    Created on : Feb 12, 2018, 9:46:58 PM
    Author     : Chad Werning
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' type='text/css' href='css/SiteCSS.css' />
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
        <h1>Search!</h1>
        <form method="get" action="ProductController" />
            <input type="text" name="search" />
            <input type="submit" value="Search" />
        </form>
</body>
</html>
