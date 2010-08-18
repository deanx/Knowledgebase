require 'spec_helper'

describe "/conhecimentos/new.html.erb" do
  include ConhecimentosHelper

  before(:each) do
    assigns[:conhecimento] = stub_model(Conhecimento,
      :new_record? => true,
      :titulo => "value for titulo",
      :texto => "value for texto"
    )
  end

  it "renders new conhecimento form" do
    render

    response.should have_tag("form[action=?][method=post]", conhecimentos_path) do
      with_tag("input#conhecimento_titulo[name=?]", "conhecimento[titulo]")
      with_tag("textarea#conhecimento_texto[name=?]", "conhecimento[texto]")
    end
  end
end
