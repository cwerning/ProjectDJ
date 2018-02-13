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
    </head>
    <body>
        <h1>Search!</h1>
        <form method="get" action="ProductController" />
            <input type="text" name="search" />
            <input type="submit" value="Search" />
    </body>
</html>
