class CategoriasController < InheritedResources::Base
	def create
		@categoria = Categoria.new params[:categoria]

    respond_to do |format|
      if @categoria.save
      format.html { redirect_to(@categoria, :notice => 'Autor was successfully created.') }
      format.xml  { render :xml => @categoria, :status => :created, :location => @categoria }
      format.js {render :layout=>false}
       else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categoria.errors, :status => :unprocessable_entity }
	format.js {render :layout=>false}
       end
      end
    end

  def update
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      if @categoria.update_attributes(params[:categoria])
        format.html { redirect_to(@autor, :notice => 'Categoria was successfully updated.') }
        format.xml  { head :ok }
	format.js { render :layout => false }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @autor.errors, :status => :unprocessable_entity }
	format.js { render :layout => false }
      end
    end
  end
end
