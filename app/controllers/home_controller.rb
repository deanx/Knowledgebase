class HomeController < ApplicationController
  def index
	@conhecimentos = Conhecimento.find (:all, :select => "id, titulo, autor_id", :order => "id DESC")
	@autors = Autor.find(:all, :order => "id DESC")
  end
end
