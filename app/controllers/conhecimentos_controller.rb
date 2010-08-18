class ConhecimentosController < ApplicationController
  # GET /conhecimentos
  # GET /conhecimentos.xml
  def index
    @conhecimentos = Conhecimento.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @conhecimentos }
    end
  end

  # GET /conhecimentos/1
  # GET /conhecimentos/1.xml
  def show
    @conhecimento = Conhecimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @conhecimento }
    end
  end

  # GET /conhecimentos/new
  # GET /conhecimentos/new.xml
  def new
    @conhecimento = Conhecimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @conhecimento }
    end
  end

  # GET /conhecimentos/1/edit
  def edit
    @conhecimento = Conhecimento.find(params[:id])
  end

  # POST /conhecimentos
  # POST /conhecimentos.xml
  def create
    @conhecimento = Conhecimento.new(params[:conhecimento])

    respond_to do |format|
      if @conhecimento.save
        flash[:notice] = 'Conhecimento was successfully created.'
        format.html { redirect_to(@conhecimento) }
        format.xml  { render :xml => @conhecimento, :status => :created, :location => @conhecimento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @conhecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /conhecimentos/1
  # PUT /conhecimentos/1.xml
  def update
    @conhecimento = Conhecimento.find(params[:id])

    respond_to do |format|
      if @conhecimento.update_attributes(params[:conhecimento])
        flash[:notice] = 'Conhecimento was successfully updated.'
        format.html { redirect_to(@conhecimento) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @conhecimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /conhecimentos/1
  # DELETE /conhecimentos/1.xml
  def destroy
    @conhecimento = Conhecimento.find(params[:id])
    @conhecimento.destroy

    respond_to do |format|
      format.html { redirect_to(conhecimentos_url) }
      format.xml  { head :ok }
    end
  end
end
