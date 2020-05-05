package br.com.nac.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.nac.model.LivroModel;

public class LivroRepository {
private static LivroRepository instance;
	
	
	private static Map<Long, LivroModel> livros;
	
	public static LivroRepository getInstance() {
		if (instance == null) {
			instance = new LivroRepository();
		}
		return instance;
	}
	
	private LivroRepository() {
		livros = new HashMap<Long, LivroModel>();
		livros.put(1L, new LivroModel(1L, "star wars 1", "george lucas", 200, 
				"abril", "pt-br"));
		livros.put(2L, new LivroModel(2L, "star wars 2", "george lucas", 300, 
				"abril", "pt-br"));
		livros.put(3L, new LivroModel(3L, "star wars 3", "george lucas", 400, 
				"abril", "pt-br"));
	}

	
	public List<LivroModel> findAll() {
		return new ArrayList<LivroModel>(livros.values());
	}
	
	public LivroModel findById(long id) {
		return livros.get(id);
	}
	
	public void save(LivroModel livro) {
		 Long newId = (long) (livros.size() + 1);
		 livro.setId(newId);
		 livros.put(newId, livro);
		 
	}
	
	public void update(LivroModel livro) {
		livros.put(livro.getId(), livro);
	}
	
	public void deleteById(long id) {
		livros.remove(id);
	}

}
