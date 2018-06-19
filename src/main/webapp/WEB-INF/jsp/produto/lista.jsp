<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Listagem de Produtos</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	<body>
		<h1>Listagem de Produtos</h1>
		
		<table class="table table-striped table-hover table-bordered" >
			<thead class="thead-dark" >
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Valor</th>
					<th scope="col">Quantidade</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtoList}" var="produto" >
					<tr>
						<td>${produto.nome}</td>
						<td>${produto.valor}</td>
						<td>${produto.quantidade}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>