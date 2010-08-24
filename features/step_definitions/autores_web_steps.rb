Given /^I have authors registered$/ do
  a = Autor.new
  a.nome = "Autor de teste"
  a.save!
end
