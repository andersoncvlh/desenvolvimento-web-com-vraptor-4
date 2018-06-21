<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">SisProd</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item <c:if test="${fn:contains(pageContext.request.requestURI, 'inicio')}"> active</c:if>">
				<a class="nav-link" href="${linkTo[HomeController].inicio()}">Início
					<span class="sr-only">(current)</span>
				</a>
			</li>
			<li class="nav-item dropdown <c:if test="${fn:contains(pageContext.request.requestURI, 'produto')}"> active</c:if>">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> 
					Produto 
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="${linkTo[ProdutoController].lista()}">Listagem de
						Produtos
					</a> 
					<a class="dropdown-item"
						href="${linkTo[ProdutoController].novo()}">Cadastro de
						Produtos
					</a>
				</div>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Pesquisar" aria-label="Pesquisar">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
		</form>
	</div>
</nav>