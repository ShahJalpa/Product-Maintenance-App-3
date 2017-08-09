<%--
    Document   : products
    Created on : Sep 14, 2015, 1:11:42 PM
    Author     : jalpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "music.business.Product, music.data.ProductIO, java.util.*" %>
<!DOCTYPE html>

<%     
    //HttpSession session = request.getSession();
    //String productFile = ProductIO.init("/WEB-INF/products.txt");
      
    List <Product> productList = (ArrayList<Product>)request.getSession().getAttribute("productList");
    
    if(productList == null)
        System.out.println("Its null");
    else
        System.out.println("its not null");
%>  

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product Maintenance</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Products</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Price</th>
                <th> </th>
                <th> </th>
            </tr>
            
            <%
                    for (Product next: productList)
                    {
            %>
                    <tr>
                        <td><%= next.getCode() %><%--=request.getSession().getAttribute("productCode")--%></td>
                        <td><%= next.getDescription() %></td>
                        <td><%= next.getPrice() %></td>
                        <td>
                            <a href="productMaint?action=displayProduct&productCode=<%= next.getCode()%>">Edit</a>
                        </td>
                        <td>
                            <a href="productMaint?action=deleteProduct&productCode=<%= next.getCode()%>">Delete</a>
                        </td>
                    </tr>
            <%
                    }
            %>

            
        </table> <br>
        <td>
            <form action ="productMaint" method ="get">
                <input type="hidden" name="action" value="addProduct"/>
                <input type="submit" value="Add Product">
        </form>
        </td>
        
    </body>
</html>
