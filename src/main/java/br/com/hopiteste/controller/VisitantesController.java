package br.com.hopiteste.controller;

//import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.hopiteste.dao.UsuarioDAO;

@Controller
@Path("visitantes")
public class VisitantesController {	
	
	@Inject Result result;
	@Inject UsuarioDAO usuarioDAO;
	
	@Get("")
	public void visitantes() {
		result.include("usuarios", usuarioDAO.selectAll());
	}
}
