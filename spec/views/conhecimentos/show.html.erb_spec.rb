require 'spec_helper'

describe "/conhecimentos/show.html.erb" do
  include ConhecimentosHelper
  before(:each) do
    assigns[:conhecimento] = @conhecimento = stub_model(Conhecimento,
      :titulo => "value for titulo",
      :texto => "value for texto"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ titulo/)
    response.should have_text(/value\ for\ texto/)
  end
end
