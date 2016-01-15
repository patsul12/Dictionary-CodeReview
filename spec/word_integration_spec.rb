require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word path', :type => :feature do
  before do
    Word.clear
  end

  it 'allows user to create word and display it on homepage' do
    visit '/'
    click_link 'Add Word'
    fill_in 'name', :with => 'word'
    click_button 'Add'
    expect(page).to have_content('word')
  end

  it 'displays a page for a given word' do
    visit '/'
    click_link 'Add Word'
    fill_in 'name', :with => 'pickle'
    click_button 'Add'
    click_link 'pickle'
    expect(page).to have_content('pickle')
  end

  it 'allows user to add a definition for a given word' do
    visit '/'
    click_link 'Add Word'
    fill_in 'name', :with => 'pickle'
    click_button 'Add'
    click_link 'Add Word'
    fill_in 'name', :with => 'apple'
    click_button 'Add'
    click_link 'apple'
    click_link 'Add Definition'
    fill_in 'term', :with => 'an article of food that has been preserved in brine or in vinegar'
    click_button 'Add'
    expect(page).to have_content('an article of food that has been preserved in brine or in vinegar')
  end
end
