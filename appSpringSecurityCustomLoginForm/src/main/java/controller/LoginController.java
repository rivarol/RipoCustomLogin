package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/showMessage", method=RequestMethod.GET)
	public String showMessage(Model model) {
		model.addAttribute("message", "Spring Security ");
		return "showMessage";
	}
	
	@RequestMapping(value="/auth/login", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	/*@RequestMapping(value="/auth/logout", method=RequestMethod.POST)
	public String logout() {
		return "login";
	}*/
	
	
	@RequestMapping(value="/registered/success", method=RequestMethod.GET)
	public String sussessPage() {
		return "success";
	}
}
