<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="../header.jsp" />
	<form action="salvar" method="post" >
		<div class="row" >
			<input type="hidden" name="produto.id" value="${produto.id}"/>
			<div class="form-group mb-3 col-sm-12 col-md-6" >
				<label for="iptNome">Nome</label>
				<input id="iptNome" name="produto.nome" value="${produto.nome}" class="form-control" />
			</div>
			
			<div class="form-group mb-3 col-sm-12 col-md-3" >
				<label for="iptValor">Valor</label>
				<input id="iptValor" name="produto.valor" value="${produto.valor}" class="form-control" />
			</div>
			
			<div class="form-group mb-3 col-sm-12 col-md-3" >
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
<c:import url="../footer.jsp" />
