package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

public abstract class BaseController {

	@Inject
	protected Result result;
	
	@Inject
	protected Validator validator;

	/**
	 * THE SAME STRING FOR
	 * 
	 * @param pageTitle
	 *            template TITLE tag
	 * @param headerPage
	 *            template H1 tag
	 */
	protected void setTitleAndHeaderPage(String sameString) {
		this.result.include("pageTitle", sameString);
		this.result.include("headerPage", sameString);
	}

	/**
	 * @param pageTitle
	 *            template TITLE tag
	 * @param headerPage
	 *            template H1 tag
	 */
	protected void setTitleAndHeaderPage(String pageTitle, String headerPage) {
		this.result.include("pageTitle", pageTitle);
		this.result.include("headerPage", headerPage);
	}

}
