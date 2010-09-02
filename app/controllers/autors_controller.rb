class AutorsController < ApplicationController
  # GET /autors
  # GET /autors.xml
  def index
    @autors = Autor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @autors }
    end
  end

  # GET /autors/1
  # GET /autors/1.xml
  def show
    @autor = Autor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @autor }
    end
  end

  # GET /autors/new
  # GET /autors/new.xml
  def new
    @autor = Autor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @autor }
    end
  end

  # GET /autors/1/edit
  def edit
    @autor = Autor.find(params[:id])
  end

  # POST /autors
  # POST /autors.xml
  def create
    @autor = Autor.new(params[:autor])

    respond_to do |format|
      if @autor.save
        format.html { redirect_to(@autor, :notice => 'Autor was successfully created.') }
        format.xml  { render :xml => @autor, :status => :created, :location => @autor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @autor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /autors/1
  # PUT /autors/1.xml
  def update
    @autor = Autor.find(params[:id])

    respond_to do |format|
      if @autor.update_attributes(params[:autor])
        format.html { redirect_to(@autor, :notice => 'Autor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @autor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /autors/1
  # DELETE /autors/1.xml
  def destroy
    @autor = Autor.find(params[:id])
    @autor.destroy

    respond_to do |format|
      format.html { redirect_to(autors_url) }
      format.xml  { head :ok }
    end
  end
end
