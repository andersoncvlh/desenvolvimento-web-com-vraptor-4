<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Listagem de Produtos</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	</head>
	<body>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous" ></script>
		<script type="text/javascript">
			
		</script>
		<div class="container" >
			<h1>Listagem de Produtos</h1>
			<form action="lista" method="get" >
				<div class="row" >
					<div class="form-group mb-3 col" >
						<label for="iptNome">Nome</label>
						<input id="iptNome" name="filtro.nome" class="form-control" />
					</div>
				</div>
				
				<div class="form-group" >
					<div class="btn-group" >
						<button type="submit" class="btn btn-sm btn-secondary" >
							<i class="fas fa-search"></i> Pesquisar
						</button>
						<button type="reset" class="btn btn-sm btn-light" >
							<i class="fas fa-sync-alt"></i> Limpar
						</button>
						<a href="novo" role="button" class="btn btn-sm btn-primary" >
							<i class="fas fa-plus"></i> Novo
						</a>
					</div>
				</div>
			</form>
			
			<c:choose>
				<c:when test="${empty produtoList}">
					<div class="alert alert-warning" role="alert">
						A consulta não retornou nenhum resultado.
					</div>
				</c:when>
				<c:otherwise>
					<table class="table table-striped table-hover table-bordered" >
						<thead class="thead-dark" >
							<tr align="center" >
								<th scope="col">Nome</th>
								<th scope="col">Valor</th>
								<th scope="col">Quantidade</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${produtoList}" var="produto" >
								<tr>
									<td align="left">${produto.nome}</td>
									<td align="right">${produto.valor}</td>
									<td align="right">${produto.quantidade}</td>
									<td align="center" >
										<a href="editar/${produto.id}" role="button" class="btn btn-sm btn-primary" >
											<i class="fas fa-edit"></i>
										</a>
										<form action="${linkTo[ProdutoController].remover(produto.id)}" method="post">
											<input type="hidden" name="_method" value="DELETE"/>
											<button type="submit" class="btn btn-sm btn-danger" >
												<i class="fas fa-trash"></i>
											</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
			
		</div>
	</body>
</html>