package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;

@Controller
public class HomeController {

	@Inject
	private Result result;

	@Get("/")
	public void inicio() {
		this.result.include("welcome", "Seja Bem Vindo!");
	}
}
