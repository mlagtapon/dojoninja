package mari.dojoninjas.Services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import mari.dojoninjas.Models.Dojo;
import mari.dojoninjas.Repositories.DojoRepository;


@Service
public class DojoService {

	private final DojoRepository dRepo;
	
	public DojoService(DojoRepository dRepo) {
		this.dRepo = dRepo;
	}
	
	public List<Dojo> allDojo(){
		return dRepo.findAll();
	}

	public Dojo createDojo(@Valid Dojo d) {
		return dRepo.save(d);
	}
	
	public Dojo findOne(Long id) {
		Optional<Dojo> dojo = dRepo.findById(id);
			if(dojo.isPresent()) {
				return dojo.get();
			} else {
				return null;
			}
	}
}
