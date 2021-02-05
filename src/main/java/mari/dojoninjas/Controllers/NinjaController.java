package mari.dojoninjas.Controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mari.dojoninjas.Models.Dojo;
import mari.dojoninjas.Models.Ninja;
import mari.dojoninjas.Services.DojoService;
import mari.dojoninjas.Services.NinjaService;

@Controller
public class NinjaController {
	
	private final NinjaService nService;
	private final DojoService dService;
	
	public NinjaController(NinjaService nService, DojoService dService) {
		this.nService = nService;
		this.dService = dService;
	}
		
		
		@RequestMapping("/ninjas/new")
		public String newNinja(@ModelAttribute("ninja") Ninja ninja, @ModelAttribute("dojo") Dojo dojo, Model model) {
			model.addAttribute("dojos", dService.allDojo());
				return "ninja.jsp";
		}
		
	
		@PostMapping("/ninjas")
		public String create(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
	        if(result.hasErrors()) {
	            return "redirect:/ninjas/new";
	        } else {
	        	nService.createNinja(ninja);
	            return "redirect:/";
	        }
		}
	      
}