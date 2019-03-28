require 'rails_helper'

RSpec.describe 'as a visitor' do
  describe 'from the welcome page' do
    it 'can register new user' do
      visit root_path

      click_link "Register"
    end
  end
end
