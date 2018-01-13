step "I visit the page :path" do |path|
  visit path
end

step "I enter in :email and :password" do |email, password|
    @form_attributes = { email: email, password: password }

  within('form') do
    fill_in "Email", with: email
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password
  end
end

step "I click the :name button" do |name|
  click_button name
end

step "I have created an account" do
  user = User.find_by(email: @form_attributes['Email'])

  expect(user).to be_present
end

step "I fill in the form with:" do |table|
  table.hashes.each do |row|
    label = row['Label']
    value = row['Value']

    @form_attributes[label] = value
    fill_in label, with: value
  end

  puts @form_attributes
end