package br.com.caelum.vraptor.controller;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.dao.ProdutoDao;
import br.com.caelum.vraptor.model.Produto;

@Controller
public class ProdutoController extends BaseController {

	@Inject
	private ProdutoDao produtoDao;

	@Get
	public void novo(Produto produto) {
		this.result.include("produto", produto);
		if (null != produto.getId()) {
			setTitleAndHeaderPage("Cadastro de Produto");
		} else {
			setTitleAndHeaderPage("Cadastro de Produto");
		}
	}

	@Get
	public void lista(Produto filtro) {
		setTitleAndHeaderPage("Listagem de Produtos");
		this.result.include("produtoList", produtoDao.lista(filtro));
	}

	@Post
	public void salvar(Produto produto) throws UnsupportedEncodingException {
		produtoDao.adiciona(produto);
		this.result.redirectTo(this).lista(produto);
	}

	@Get("/produto/editar/{id}")
	public void editar(Long id) {
		Produto produto = produtoDao.buscaPorId(id);
		this.result.redirectTo(this).novo(produto);
	}

	@Delete("/produto/remover/{id}")
	public void remover(Long id) {
		Produto produto = produtoDao.buscaPorId(id);
		produtoDao.remove(produto);
		this.result.redirectTo(this).lista(new Produto());
	}

}
