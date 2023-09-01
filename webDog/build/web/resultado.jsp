<%-- 
    Document   : resultado
    Created on : 30 ago 2023, 9:36:57
    Author     : Katerine  Forero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%@ page import="SmallPacket.Operations" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <title>Resultado </title>
</head>
<body>
    <h1>Resultado</h1>
    
    <%
        
        int hours = Integer.parseInt(request.getParameter("horasDePaseo"));
        int numBigDog = Integer.parseInt(request.getParameter("perrosGrandes"));
        int numMediumDog = Integer.parseInt(request.getParameter("perrosMedianos"));
        int numSmallDog = Integer.parseInt(request.getParameter("perrosPequenos"));

        Operations operations = new Operations();
        int total = operations.calculateTotal(numBigDog, numMediumDog, numSmallDog, hours);
    %>
    
    <h2>El total a pagar: <%= total %></h2>
    
    <a href="index.html">Volver al inicio</a>
</body>
</html>
