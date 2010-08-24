require "inherited_resources"
class ConhecimentosController < InheritedResources::Base

  respond_to :html
	def index
		@autors = Autor.find(:all, :order => "id DESC")
		@conhecimentos = Conhecimento.find(:all, :order => "id DESC")

	end
end
