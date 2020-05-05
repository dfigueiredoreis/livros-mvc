package br.com.nac.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class LivroModel {
private Long id;

@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
private String nome;

@NotBlank(message = "Por favor, preencha o autor, não pode ser branco")
private String autor;

private Integer npaginas;

private String editora;

@Size(min = 2, max = 5, message="O Idioma deve ter no mínimo 2 caracteres e no máximo 5. Ex:pt-br")
private String idioma;

public LivroModel(Long id, String nome, String autor, Integer npaginas, String editora, String idioma) {
	super();
	this.id = id;
	this.nome = nome;
	this.autor = autor;
	this.npaginas = npaginas;
	this.editora = editora;
	this.idioma = idioma;
}

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}


public String getNome() {
	return nome;
}

public void setNome(String nome) {
	this.nome = nome;
}

public String getAutor() {
	return autor;
}

public void setAutor(String autor) {
	this.autor = autor;
}

public Integer getNpaginas() {
	return npaginas;
}

public void setNpaginas(Integer npaginas) {
	this.npaginas = npaginas;
}

public String getEditora() {
	return editora;
}

public void setEditora(String editora) {
	this.editora = editora;
}

public String getIdioma() {
	return idioma;
}

public void setIdioma(String idioma) {
	this.idioma = idioma;
}


	
}
