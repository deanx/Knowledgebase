require 'spec_helper'

describe "/conhecimentos/edit.html.erb" do
  include ConhecimentosHelper

  before(:each) do
    assigns[:conhecimento] = @conhecimento = stub_model(Conhecimento,
      :new_record? => false,
      :titulo => "value for titulo",
      :texto => "value for texto"
    )
  end

  it "renders the edit conhecimento form" do
    render

    response.should have_tag("form[action=#{conhecimento_path(@conhecimento)}][method=post]") do
      with_tag('input#conhecimento_titulo[name=?]', "conhecimento[titulo]")
      with_tag('textarea#conhecimento_texto[name=?]', "conhecimento[texto]")
    end
  end
end
