package com.yelenadovgal.postdemo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}

//	@PostMapping("/submit")
//	public String submitForm(@RequestParam(value = "crust") String crust, @RequestParam(value = "cheese") String cheese,
//			@RequestParam(value = "sauce") String sauce, @RequestParam(value = "topping") String topping,
//			HttpSession session) {
//
//		session.setAttribute("crust", crust);
//		session.setAttribute("cheese", cheese);
//		session.setAttribute("sauce", sauce);
//		session.setAttribute("topping", topping);
//
//		return "redirect:/display";
//	}
//
//	@GetMapping("/display")
//	public String display(HttpSession session, Model model) {
//		if (session.getAttribute("crust") == null) {
//			return "redirect:/";
//		}
//
//		model.addAttribute("crust", session.getAttribute("crust"));
//		model.addAttribute("cheese", session.getAttribute("cheese"));
//		model.addAttribute("sauce", session.getAttribute("sauce"));
//		model.addAttribute("topping", session.getAttribute("topping"));
//
//		return "result.jsp";
//	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "email") String email, @RequestParam(value = "password") String password,
			HttpSession session, RedirectAttributes redirectAttributes) {

		if (password.length() < 5) {
			redirectAttributes.addFlashAttribute("error", "The password must be 5 characters or more!");
			return "redirect:/";
		}
		session.setAttribute("email", email);
		return "redirect:/home";
	}

	@GetMapping("/home")
	public String home() {
		return "result.jsp";
	}

}
