package springboot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class LoginController 
{
	@RequestMapping("/")
	public ModelAndView defaultHome() {
		return new ModelAndView("login");
	}

	@RequestMapping("/user/dashboard")
	public ModelAndView user() {
		return new ModelAndView("/user/dashboard");
	}
	
	@RequestMapping("/admin/dashboard")
	public ModelAndView admin() {
		return new ModelAndView("/admin/dashboard");
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
}


