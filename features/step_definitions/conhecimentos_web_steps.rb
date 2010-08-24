Given /^I have knowledges registered$/ do
  c = Conhecimento.new
  c.titulo = "livro de teste"
  c.texto = "meu livro"
  a = Autor.new
  a.nome = "Autor de teste"
  c.autor = Autor.new(:nome=> "Meu autor")
  c.save!
end
