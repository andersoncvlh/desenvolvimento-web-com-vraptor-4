<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>${headerPage}</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
</head>
<body>
	<div class="container" >
		<h1>${headerPage}</h1>
		<form action="salvar" method="post" >
			<div class="row" >
				<input type="hidden" name="produto.id" value="${produto.id}"/>
				<div class="form-group mb-3 col-6" >
					<label for="iptNome">Nome</label>
					<input id="iptNome" name="produto.nome" value="${produto.nome}" class="form-control" />
				</div>
				
				<div class="form-group mb-3 col-3" >
					<label for="iptValor">Valor</label>
					<input id="iptValor" name="produto.valor" value="${produto.valor}" class="form-control" />
				</div>
				
				<div class="form-group mb-3 col-3" >
					<label for="iptQuantidade">Quantidade</label>
					<input id="iptQuantidade" name="produto.quantidade" value="${produto.quantidade}" class="form-control" />
				</div>
			</div>
			
			<div class="form-group" >
				<div class="btn-group" >
					<button type="submit" class="btn btn-sm btn-secondary" >
						<i class="fas fa-save"></i> Salvar
					</button>
					<button type="reset" class="btn btn-sm btn-light">
						<i class="fas fa-sync-alt"></i> Limpar
					</button>
					<a href="lista" role="button" class="btn btn-sm btn-primary">
						<i class="fas fa-backward"></i> Voltar
					</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>