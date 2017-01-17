When /^I go to Home page$/ do
  visit '/'
end

Then /^I should see below menu items$/ do |table|
  table.hashes.each do |row|
    expect(page).to have_selector 'a', text: row['Menu Item']
  end
end

And /^I click (.*?) menu items$/ do |link_text|
  page.find('.navigation a', {text: link_text}).click
end

And /^I should be on (.*?) page/ do |page_name|
  current_path = URI.parse(current_url).path
  expect(path_to(page_name)).to include current_path
end