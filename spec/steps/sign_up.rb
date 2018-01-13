step "I visit the page :path" do |path|
  visit path
end

step "I click the :name button" do |name|
  click_button name
end

step "I have created an account" do
  user = User.find_by(email: @form_attributes['Email'])

  expect(user).to be_present
end

step "I fill in the form with:" do |table|
  @form_attributes = {}
  table.hashes.each do |row|
    label = row['Label']
    value = row['Value']

    @form_attributes[label] = value
    fill_in label, with: value
  end
end