package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

@Controller
public class HomeController extends BaseController {

	@Get("/")
	public void inicio() {
		setTitleAndHeaderPage("SysProd", "Seja Bem Vindo!");
	}
}
