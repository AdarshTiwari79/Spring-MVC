package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commanData(Model m) 
	{
		m.addAttribute("header1","This is header for checking ModelAttribute annotation");
		m.addAttribute("header2", "This is also a sample to be used for checking purpose");
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	/* using @ModelAttribute to map data from view to class with same properties as view fields name */
	
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String formHadler(@ModelAttribute User user, Model model)
	{
		System.out.println(user);
		int id = this.userService.saveUser(user);
		model.addAttribute("id",id);
		model.addAttribute("msg","User successfully registered.");
		return "success";
	}

	
	
	/* using @RequestParam to real data from view */
	
	/*
	@RequestMapping(path="/processform", method=RequestMethod.POST)
	public String getView(@RequestParam("email") String email,
			@RequestParam("uname")String uname,
			@RequestParam("password")String password,Model model) 
	{
		User user = new User();
		user.setEmail(email);
		user.setUname(uname);
		user.setPassword(password);
		
		System.out.println(user);
		
		// Can do process like sending data to database or perform operation on data
		
		model.addAttribute("email",email);
		model.addAttribute("uname",uname);
		model.addAttribute("password",password);
		return "success";
	}
	*/
}
