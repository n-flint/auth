require 'rails_helper'

RSpec.describe 'as a visitor' do
  describe 'from the welcome page' do
    it 'can register new user' do
      visit root_path

      click_link "Register"

      fill_in "user_name", with: "noah"
      fill_in "user_email", with: "email@email.com"
      fill_in "user_password", with: "1234"

      click_on "Create User"

      expect(current_path).to eq(root_path)
      expect(User.last.name).to eq("noah")
    end
    it 'can register new user' do
      visit root_path

      click_link "Log In"

      fill_in "email", with: "email@email.com"
      fill_in "password", with: "1234"

      click_on "Login"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("You have successfully logged in")
    end
  end
end
