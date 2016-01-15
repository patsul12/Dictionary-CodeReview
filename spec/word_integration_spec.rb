require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word path', :type => :feature do
  it 'allows user to create word and display it on homepage' do
    visit '/'
    click_link 'Add Word'
    fill_in 'name', :with => 'word'
    click_button 'Add'
    expect(page).to have_content('word')
  end
end
