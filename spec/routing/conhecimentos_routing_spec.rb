require 'spec_helper'

describe ConhecimentosController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/conhecimentos" }.should route_to(:controller => "conhecimentos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/conhecimentos/new" }.should route_to(:controller => "conhecimentos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/conhecimentos/1" }.should route_to(:controller => "conhecimentos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/conhecimentos/1/edit" }.should route_to(:controller => "conhecimentos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/conhecimentos" }.should route_to(:controller => "conhecimentos", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/conhecimentos/1" }.should route_to(:controller => "conhecimentos", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/conhecimentos/1" }.should route_to(:controller => "conhecimentos", :action => "destroy", :id => "1") 
    end
  end
end
