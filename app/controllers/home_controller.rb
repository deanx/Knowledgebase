class HomeController < ApplicationController
  def index
	@conhecimentos = Conhecimento.paginate :page=>params[:pagina_conhecimentos], :order => "id DESC", :select => "id, titulo, autor_id, categoria_id"
	@autors = Autor.paginate :order => "id DESC", :page => params[:pagina_autores]
	@categorias = Categoria.paginate :order => "id DESC", :page => params[:pagina_categorias]
  end

  def pesquisa
	@autors = Autor.paginate :order => "id DESC", :page => params[:pagina_autores]

	@tp_pesquisa = params[:tp_pesquisa]
	@txt_pesquisa = params[:txt_pesquisa]

	case @tp_pesquisa
		when "co"
			@conhecimentos = Conhecimento.paginate_by_sql "select co.id, titulo, autor_id, categoria_id from conhecimentos co where co.titulo like '%#{@txt_pesquisa}%' OR co.texto like '%#{@txt_pesquisa}%'", :page => params[:pagina_conhecimentos], :order => "id DESC"
		when "c"
			@conhecimentos = Conhecimento.paginate_by_sql "select co.id, titulo, autor_id, categoria_id from conhecimentos co join categorias c on c.nome_categoria like '%#{@txt_pesquisa}%' and co.categoria_id = c.id", :page => params[:pagina_conhecimentos], :order => "id DESC" 

		when "a"
			@conhecimentos = Conhecimento.paginate_by_sql "select co.id, titulo, autor_id, categoria_id from conhecimentos co, autors a where (a.nome like '%#{@txt_pesquisa}%' AND co.autor_id = a.id)", :page => params[:pagina_conhecimentos], :order => "id DESC"
		else 
			@conhecimentos = Conhecimento.paginate_by_sql "select co.id, co.titulo, co.autor_id, co.categoria_id from conhecimentos co, categorias c, autors a where co.titulo like '%#{@txt_pesquisa}%' OR co.texto like '%#{@txt_pesquisa}%' OR (a.nome like '%#{@txt_pesquisa}%' AND co.autor_id = a.id) OR (c.nome_categoria like '%#{@txt_pesquisa}%' AND c.id = co.categoria_id) group by co.id", :page => params[:pagina_conhecimentos] 
	end

	render :action => "index"
  end
end
