require 'rails_helper'

RSpec.describe 'Category index page', type: :feature do
  describe 'view page content' do
    before :each do
      @icon = 'http://photo.com'
      @user = User.new(name: 'lucas', email: 'railstest84@gmail.com', password: '123456')
      # @user.skip_confirmation!
      @user.save!
      @category = Category.create(name: 'title1', icon: 'text', user_id: @user.id)
      visit new_user_session_path
      fill_in 'Email', with: 'railstest84@gmail.com'
      fill_in 'Password', with: '123456'
      click_button 'Login'
    end

    it 'shows the right content' do
      expect(page).to have_content('CATEGORIES')
      expect(page).to have_content('Sign Out')
    end

    it ' it redirects me to that posts show page' do
      click_button "Sign Out"
      expect(page).to have_current_path "/users"
    end
  end
end
