<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Categoria"%>
<%@page import="java.util.List"%>
<%
    List<Categoria> categoria = (List<Categoria>)request.getAttribute("categorias");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CATEGORIAS</title>
    </head>
    <body>
        <h1>CATEGORIAS</h1>
        <p><a href="CategoriaController?action=add">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            
            <c:forEach var="item" items="${categorias}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.categoria}</td>
                    <td><a href="CategoriaController?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="CategoriaController?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro?'))">Eliminar</a></td>
                </tr>               
            </c:forEach>

        </table>
    </body>
</html>
