require_relative '../app'
require 'capybara/rspec'
require 'spec_helper'

Capybara.app = App

feature 'Interact with homepage' do

  scenario 'Homepage displays welcome' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end

end