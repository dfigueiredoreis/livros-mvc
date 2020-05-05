package br.com.nac.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.nac.model.LivroModel;
import br.com.nac.repository.LivroRepository;

@Controller
@RequestMapping({"/livro", "/"})
public class LivroController {


private LivroRepository livroRepository = LivroRepository.getInstance();
	
	// Busca
	@GetMapping()
	public String findAll(Model model) {
		
		List<LivroModel> listaDosLivros = livroRepository.findAll();
		
		model.addAttribute("livros", listaDosLivros);
		
		return "livros";
	}
	
	@GetMapping(value = "/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		LivroModel livroEncontrado = livroRepository.findById(id);
		
		model.addAttribute("livro", livroEncontrado);
		
		return "livro-detalhe";
	}
	
	@GetMapping("/form")
	public String open(@RequestParam String page,
						@RequestParam(required = false) Long id,
						@ModelAttribute("livroModel") LivroModel livroModel,
						Model model) {

		if ("livro-editar".equals(page)) {
			model.addAttribute("livro", livroRepository.findById(id));
		}
		
		return page;
	}
	
	@PostMapping()
	public String save(@Valid LivroModel livroModel, 
						BindingResult bindingResult,
						RedirectAttributes redirectAttributes) {

		if (bindingResult.hasErrors()) {
			return "livro-novo";
		}
		
		livroRepository.save(livroModel);
		
		redirectAttributes.addFlashAttribute("messages", "Livro cadastrado com sucesso!!!");
		
		return "redirect:/livro";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable("id") Long id, Model model) {
		
		model.addAttribute("livro", livroRepository.findById(id));
		
		return "livro-editar";
	}
	

	
	@PutMapping()
	public String updateLivro(LivroModel livroModel,
								RedirectAttributes redirectAttributes) {
		
		livroRepository.update(livroModel);
		
		redirectAttributes.addFlashAttribute("messages", "Livro atualizado com sucesso!!!");
				
		//forward
		return "redirect:/livro";
	}
	
	@DeleteMapping("/delete/{id}")
	public String delete(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		livroRepository.deleteById(id);
		
		redirectAttributes.addFlashAttribute("messages", "Livro deletado com sucesso!!! ;)");
		
		//redirect
		return "redirect:/livro";
	}

	
}
