class HomeController < ApplicationController
  def index
	@conhecimentos = Conhecimento.find (:all, :select => "id, titulo, autor_id")
	@autors = Autor.find(:all)
  end
end
