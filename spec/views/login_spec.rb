require 'rails_helper'

RSpec.describe 'Login index page', type: :feature do
  describe 'view page content' do
    before :each do
      @user = User.new(name: 'lucas', email: 'railstest84@gmail.com', password: '123456')
      # @user.skip_confirmation!
      visit new_user_session_path
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
      click_button 'Login'
    end

    it 'shows the right content' do
      expect(page).to have_content('Sign up')
      expect(page).to have_button('Login')
    end

    it 'shows Invalid Email or password.' do
      expect(page).to have_content('Invalid Email or password.')
    end
  end
end
