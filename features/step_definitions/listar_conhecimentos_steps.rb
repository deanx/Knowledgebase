Given /^the following listar_conhecimentos:$/ do |listar_conhecimentos|
  ListarConhecimentos.create!(listar_conhecimentos.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) listar_conhecimentos$/ do |pos|
  visit listar_conhecimentos_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following listar_conhecimentos:$/ do |expected_listar_conhecimentos_table|
  expected_listar_conhecimentos_table.diff!(tableish('table tr', 'td,th'))
end
