package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {

	/* Redirecting using redirect:absolute path */
	
	/*
	@RequestMapping("/one")
	public String handler1()
	{
		System.out.println("this is one handler");
		return "redirect:/two";
	}
	*/
	
	/* Redirecting using RedirectView */
	@RequestMapping("/one")
	public RedirectView handler1()
	{
		System.out.println("this is one handler");
		RedirectView rv = new RedirectView();
		rv.setUrl("two");
		return rv;
	}
	
	@RequestMapping("/two")
	public String handler2()
	{
		System.out.println("this is two handler");
		return "contact";
	}
}
