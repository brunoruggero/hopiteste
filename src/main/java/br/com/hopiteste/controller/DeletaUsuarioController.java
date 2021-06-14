package br.com.hopiteste.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.hopiteste.dao.UsuarioDAO;
import br.com.hopiteste.model.Usuario;

@Controller
@Path("deletausuario")
public class DeletaUsuarioController {

	@Inject UsuarioDAO usuarioDAO;
	@Inject Result result;
	
	@Get("/{usuario.id}")
	public void deletausuario(Usuario usuario) {
		usuarioDAO.delete(usuario);
		result.redirectTo(VisitantesController.class).visitantes();
	}
	
}
