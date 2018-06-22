package br.com.caelum.vraptor.dao;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.model.Produto;

public class ProdutoDao {

	@Inject
	private EntityManager entityManager;

	public void adiciona(Produto produto) {
		if (null == produto.getId()) {
			entityManager.persist(produto);
		} else {
			entityManager.merge(produto);
		}
	}

	public void remove(Produto produto) {
		entityManager.remove(busca(produto));
	}

	public Produto buscaPorId(Long id) {
		return entityManager.find(Produto.class, id);
	}
	public Produto busca(Produto produto) {
		return entityManager.find(Produto.class, produto.getId());
	}

	public List<Produto> lista(Produto filtro) {
		StringBuilder sql = new StringBuilder("select p from Produto p");
		sql.append(" where 1=1 ");
		if (null != filtro.getNome() && !"".equals(filtro.getNome())) {
			sql.append(" and lower(p.nome) LIKE lower(:nome)");
		}
		sql.append(" order by p.nome ");
		TypedQuery<Produto> query = entityManager.createQuery(sql.toString(), Produto.class);
		if (null != filtro.getNome() && !"".equals(filtro.getNome())) {
			query.setParameter("nome", "%" + filtro.getNome() + "%");
		}

		return query.getResultList();
	}
}