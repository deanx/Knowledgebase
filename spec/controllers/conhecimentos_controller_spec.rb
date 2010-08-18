require 'spec_helper'

describe ConhecimentosController do

  def mock_conhecimento(stubs={})
    @mock_conhecimento ||= mock_model(Conhecimento, stubs)
  end

  describe "GET index" do
    it "assigns all conhecimentos as @conhecimentos" do
      Conhecimento.stub(:find).with(:all).and_return([mock_conhecimento])
      get :index
      assigns[:conhecimentos].should == [mock_conhecimento]
    end
  end

  describe "GET show" do
    it "assigns the requested conhecimento as @conhecimento" do
      Conhecimento.stub(:find).with("37").and_return(mock_conhecimento)
      get :show, :id => "37"
      assigns[:conhecimento].should equal(mock_conhecimento)
    end
  end

  describe "GET new" do
    it "assigns a new conhecimento as @conhecimento" do
      Conhecimento.stub(:new).and_return(mock_conhecimento)
      get :new
      assigns[:conhecimento].should equal(mock_conhecimento)
    end
  end

  describe "GET edit" do
    it "assigns the requested conhecimento as @conhecimento" do
      Conhecimento.stub(:find).with("37").and_return(mock_conhecimento)
      get :edit, :id => "37"
      assigns[:conhecimento].should equal(mock_conhecimento)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created conhecimento as @conhecimento" do
        Conhecimento.stub(:new).with({'these' => 'params'}).and_return(mock_conhecimento(:save => true))
        post :create, :conhecimento => {:these => 'params'}
        assigns[:conhecimento].should equal(mock_conhecimento)
      end

      it "redirects to the created conhecimento" do
        Conhecimento.stub(:new).and_return(mock_conhecimento(:save => true))
        post :create, :conhecimento => {}
        response.should redirect_to(conhecimento_url(mock_conhecimento))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved conhecimento as @conhecimento" do
        Conhecimento.stub(:new).with({'these' => 'params'}).and_return(mock_conhecimento(:save => false))
        post :create, :conhecimento => {:these => 'params'}
        assigns[:conhecimento].should equal(mock_conhecimento)
      end

      it "re-renders the 'new' template" do
        Conhecimento.stub(:new).and_return(mock_conhecimento(:save => false))
        post :create, :conhecimento => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested conhecimento" do
        Conhecimento.should_receive(:find).with("37").and_return(mock_conhecimento)
        mock_conhecimento.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :conhecimento => {:these => 'params'}
      end

      it "assigns the requested conhecimento as @conhecimento" do
        Conhecimento.stub(:find).and_return(mock_conhecimento(:update_attributes => true))
        put :update, :id => "1"
        assigns[:conhecimento].should equal(mock_conhecimento)
      end

      it "redirects to the conhecimento" do
        Conhecimento.stub(:find).and_return(mock_conhecimento(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(conhecimento_url(mock_conhecimento))
      end
    end

    describe "with invalid params" do
      it "updates the requested conhecimento" do
        Conhecimento.should_receive(:find).with("37").and_return(mock_conhecimento)
        mock_conhecimento.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :conhecimento => {:these => 'params'}
      end

      it "assigns the conhecimento as @conhecimento" do
        Conhecimento.stub(:find).and_return(mock_conhecimento(:update_attributes => false))
        put :update, :id => "1"
        assigns[:conhecimento].should equal(mock_conhecimento)
      end

      it "re-renders the 'edit' template" do
        Conhecimento.stub(:find).and_return(mock_conhecimento(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested conhecimento" do
      Conhecimento.should_receive(:find).with("37").and_return(mock_conhecimento)
      mock_conhecimento.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the conhecimentos list" do
      Conhecimento.stub(:find).and_return(mock_conhecimento(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(conhecimentos_url)
    end
  end

end
