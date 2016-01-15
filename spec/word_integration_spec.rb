require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word path', :type => :feature do
  it 'shows all current words on the homepage' do
    visit '/'
  end
end
