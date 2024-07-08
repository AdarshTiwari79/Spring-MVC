package springmvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String home(Model model)
	{
		model.addAttribute("name", "Saurav Tiwari");
		model.addAttribute("price",39);
		List<String> books = new ArrayList<String>();
		books.add("Advance Java");
		books.add("Advance Adbms");
		books.add("Software Project Management");
		books.add("Mathematical Foundation for Computer Science");
		model.addAttribute("book",books);
		return "home";
	}

	@RequestMapping("/about")
	public String about(Model model)
	{
		model.addAttribute("name", "Saurav Tiwari");
		model.addAttribute("price",39);
		List<String> books = new ArrayList<String>();
		books.add("Advance Java");
		books.add("Advance Adbms");
		books.add("Software Project Management");
		books.add("Mathematical Foundation for Computer Science");
		model.addAttribute("book",books);
		return "about";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() 
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("name","Adarsh Tiwari");
		mv.addObject("age",23);
		LocalDateTime time =  LocalDateTime.now();
		mv.addObject("time",time);
		mv.setViewName("help");
		return mv;
	}
}
