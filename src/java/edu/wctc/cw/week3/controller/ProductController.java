/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.cw.week3.controller;

import edu.wctc.cw.week3.model.Product;
import edu.wctc.cw.week3.model.ProductService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chad Werning
 */
public class ProductController extends HttpServlet{
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NameController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NameController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
//does it work

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//          
        ProductService productService = new ProductService();

        RequestDispatcher dispatcher = null;

        String id = request.getParameter("id");
        String search = request.getParameter("search");
        if (id != null) {
            Product product = productService.getProduct(id);
            request.setAttribute("product", product);
            dispatcher = request.getRequestDispatcher("/productDetail.jsp");
        } else if (search != null) {
            List<Product> productList = productService.findProducts(search);
            request.setAttribute("productList", productList);
            dispatcher = request.getRequestDispatcher("/productList.jsp");
        } else {
            List<Product> productList = productService.getAllProducts();
            request.setAttribute("productList", productList);
            dispatcher = request.getRequestDispatcher("/productList.jsp");
        }

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
}
