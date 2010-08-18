require 'spec_helper'

describe "/conhecimentos/index.html.erb" do
  include ConhecimentosHelper

  before(:each) do
    assigns[:conhecimentos] = [
      stub_model(Conhecimento,
        :titulo => "value for titulo",
        :texto => "value for texto"
      ),
      stub_model(Conhecimento,
        :titulo => "value for titulo",
        :texto => "value for texto"
      )
    ]
  end

  it "renders a list of conhecimentos" do
    render
    response.should have_tag("tr>td", "value for titulo".to_s, 2)
    response.should have_tag("tr>td", "value for texto".to_s, 2)
  end
end
