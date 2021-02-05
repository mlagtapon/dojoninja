package mari.dojoninjas.Controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mari.dojoninjas.Models.Dojo;
import mari.dojoninjas.Models.Ninja;
import mari.dojoninjas.Services.DojoService;
import mari.dojoninjas.Services.NinjaService;

@Controller
public class DojoController {
	
	private final NinjaService nService;
	private final DojoService dService;
	
	public DojoController(NinjaService nService, DojoService dService) {
		this.nService = nService;
		this.dService = dService;
	}
		@RequestMapping("/")
			public String index(@ModelAttribute("ninja") Ninja ninja, @ModelAttribute("dojo") Dojo dojo, Model model) {
				model.addAttribute("ninjas", nService.allNinja());
				model.addAttribute("dojos", dService.allDojo());
				return "home.jsp";
		}
		
		@RequestMapping("/dojos/new")
		public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
				return "dojo.jsp";
		}
		
		@RequestMapping("/dojos/{id}")
		public String showOne(@PathVariable("id") Long id, HttpServletRequest request, Model model) {
		    Dojo aDojo = dService.findOne(id);
		    model.addAttribute("aDojo", aDojo);
		    return "show.jsp";
		 }
	
		@PostMapping("/dojos")
		public String create(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
	        if(result.hasErrors()) {
	            return "redirect:/dojos/new";
	        } else {
	        	dService.createDojo(dojo);
	            return "redirect:/";
	        }
		}
}
