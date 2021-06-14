package br.com.hopiteste.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.hopiteste.model.Usuario;
import br.com.olimposistema.aipa.dao.DAO;

@RequestScoped
public class UsuarioDAO  extends DAO<Usuario>{

	@Deprecated
	public UsuarioDAO() {
		super(null,null);
	}
	
	@Inject	
	public UsuarioDAO(EntityManager em) {
		super(em, Usuario.class);
	}
	
	public Usuario buscaRGCadastrado(String rg) {
		
		String jpql = "SELECT u FROM Usuario as u WHERE u.rg = :pRg";
		Query query = em.createQuery(jpql);
		
		query.setParameter("pRg", rg);
		
		try {
			Usuario usuario = (Usuario) query.getSingleResult();
			return usuario;
		}catch (NoResultException e) {
			return null;
		}
		
	}
	

}
