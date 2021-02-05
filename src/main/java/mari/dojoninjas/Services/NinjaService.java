package mari.dojoninjas.Services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import mari.dojoninjas.Models.Ninja;
import mari.dojoninjas.Repositories.NinjaRepository;

@Service
public class NinjaService {

	private final NinjaRepository nRepo;
	
	public NinjaService(NinjaRepository nRepo) {
		this.nRepo = nRepo;
	}
	
	public List<Ninja> allNinja(){
		return nRepo.findAll();
	}
	
	public Ninja createNinja(@Valid Ninja n) {
		return nRepo.save(n);
	}
}
