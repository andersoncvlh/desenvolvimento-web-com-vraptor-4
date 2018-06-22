<%@ include file="/header.jsp" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 

<script>
</script>

	<form action="salvar" method="post" >
		<div class="row" >
			<input type="hidden" name="produto.id" value="${produto.id}"/>
			<div class="form-group mb-3 col-sm-12 col-md-6" >
				<label for="iptNome">Nome</label>
				<input id="iptNome" name="produto.nome" value="${produto.nome}" 
					class="form-control"  style="<c:if test="${not empty errors.from('produto.nome')}">border-color: red</c:if>" />
				<c:if test="${not empty errors.from('produto.nome')}">
					<div style="color: red">
						${errors.from('produto.nome')}
					</div>
				</c:if>
			</div>
			
			<div class="form-group mb-3 col-sm-12 col-md-3" >
				<label for="iptValor">Valor</label>
				<input id="iptValor" name="produto.valor" value="${produto.valor}"  
					class="form-control" style="<c:if test="${not empty errors.from('produto.valor')}">border-color: red</c:if>" />
				<c:if test="${not empty errors.from('produto.valor')}">
					<div style="color: red">
						${errors.from('produto.valor')}
					</div>
				</c:if>
			</div>
			
			<div class="form-group mb-3 col-sm-12 col-md-3" >
				<label for="iptQuantidade">Quantidade</label>
				<input id="iptQuantidade" name="produto.quantidade" value="${produto.quantidade}" type="number"
					class="form-control" style="<c:if test="${not empty errors.from('produto.quantidade')}">border-color: red</c:if>" />
				<c:if test="${not empty errors.from('produto.quantidade')}">
					<div style="color: red">
						${errors.from('produto.quantidade')}
					</div>
				</c:if>
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
<%@ include file="/footer.jsp" %>
