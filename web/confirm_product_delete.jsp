<%-- 
    Document   : confirm_product_delete
    Created on : Sep 14, 2015, 1:12:44 PM
    Author     : jalpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "music.business.Product, music.data.ProductIO, java.util.*" %>
<!DOCTYPE html>

    <%
            Product product = (Product)request.getSession().getAttribute("product");
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
        <h1>Are you sure you want to delete this product?</h1>
       
        <label>Product Code:</label>
        <span><%=product.getCode()%></span><br>
        <label>Product Description:</label>
        <span><%=product.getDescription()%></span><br>
        <label>Product Price</label>
        <span><%=product.getPriceNumberFormat()%></span><br>
        
     
        
        <!--form action="productMaint?deleteProduct&productCode=<%--=product.getCode()--%>" method="post"-->
        <form action="productMaint" method="post">
            <input type="hidden" name="action" value="deleteProduct">
            <input type="hidden" name="productCode" value="<%=product.getCode()%>">
            <input type="submit" name="yesButton" value="Yes">
        </form>
        
        <!--form action="productMaint?displayProducts" method="get"-->
        <form action="productMaint" method="get">
            <input type="hidden" name="action" value="displayProducts">
            <input type="submit" value="No">
        </form>
        
        
        
        
    </body>
</html>

