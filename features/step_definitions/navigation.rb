When /^I go to Home page$/ do
  visit '/'
end

Then /^I should see below menu items$/ do |table|
  table.hashes.each do |row|
    expect(page).to have_selector 'a', text: row['Menu Item']
  end
end