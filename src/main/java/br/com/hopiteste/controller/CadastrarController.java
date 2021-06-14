package br.com.hopiteste.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.validator.Validator;
import br.com.hopiteste.dao.UsuarioDAO;
import br.com.hopiteste.model.Usuario;


@Controller
@Path("cadastrar")
public class CadastrarController {
	
	@Inject Result result;
	@Inject Validator validator;
	@Inject UsuarioDAO usuarioDAO;
	
	
	@Get("")
	public void cadastrar() {
	}

	@IncludeParameters
	@Post("salvaUsuario")
	public void salvaUsuario(@Valid Usuario usuario, String rg) {
		validator.onErrorRedirectTo(this).cadastrar();
		usuarioDAO.insert(usuario);
		result.redirectTo(VisitantesController.class).visitantes();
		
	}

}
