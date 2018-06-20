package br.com.caelum.vraptor.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.ProdutoDao;
import br.com.caelum.vraptor.model.Produto;

@Controller
public class ProdutoController {

	@Inject
	private Result result;

	@Inject
	private ProdutoDao produtoDao;

	@Get
	public void novo() {
		this.result.include("headerPage", "Cadastro de Produto");
	}

	@Post
	public void salvar(Produto produto) throws UnsupportedEncodingException {
		produtoDao.adiciona(produto);
		this.result.redirectTo("/produto/lista");
	}

	@Get
	public List<Produto> lista(Produto filtro) {
		return produtoDao.lista(filtro);
	}

}
