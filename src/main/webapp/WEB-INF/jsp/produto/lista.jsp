<%@ include file="/header.jsp" %>
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
								<form action="${linkTo[ProdutoController].remover(produto.id)}" method="post">
									<input type="hidden" name="_method" value="DELETE"/>
									<a href="editar/${produto.id}" role="button" class="btn btn-sm btn-primary" >
										<i class="fas fa-edit"></i>
									</a>
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
<%@ include file="/footer.jsp" %>
