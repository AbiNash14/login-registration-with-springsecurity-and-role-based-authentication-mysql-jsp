package springboot.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springboot.Service.UserService;

import springboot.model.User;

@Controller
public class RegisterController 
{
	
	private static final Logger logger=LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private UserService userService;
	
	/*
	 * @GetMapping("/register") public String register() { return "registration"; }
	 */
	
	@GetMapping("/register")
	public String saveUser(User user,RedirectAttributes attr)
	{
		try {
			User obj=userService.saveUser(user);
			attr.addAttribute("msg",obj);
		} catch (Exception e) {
			logger.error(e.getMessage());
			
		}
		return "registration";
	}
}
