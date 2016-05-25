<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Produtos</title>
</head>
<body>
    <h1>Lista de produtos</h1>
    <div>${sucesso }</div>
    <table>
        <tr>
            <td>Título</td>
            <td>Descrição</td>
            <td>Página</td>
        </tr>

        <c:forEach items="${produtos}" var="produto">
            <tr><td>
            		<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">${produto.titulo }</a>
                </td>
                <td>${produto.descricao}</td>
                <td>${produto.paginas}</td>
            </tr> 
        </c:forEach>
    </table>
</body>
</html>