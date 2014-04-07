require_relative '../app'
require 'capybara/rspec'
require 'spec_helper'

Capybara.app = App

feature 'Interact with homepage' do

  scenario 'User can enter a search term and be redirected to the google feeling lucky result' do
    visit '/'
    fill_in 'lucky_input',  with: 'facebook'
    click_on 'Go'
    expect(current_url).to eq 'https://www.google.com/search?safe=on&authuser=0&biw=1056&bih=633&sclient=psy-ab&q=facebook&oq=facebook&gs_l=serp.9..35i39j0i67l3.3025.3674.1.6260.2.2.0.0.0.0.94.169.2.2.0.ekp%2Ckpns%3D1000...0...1.1.39.psy-ab..1.11.2363.gpxxHMp98WU&pbx=1&btnI=1'
  end

  scenario 'User enters an input with multiple words' do
    visit '/'
    fill_in 'lucky_input',  with: 'red sox'
    click_on 'Go'
    expect(current_url).to eq 'https://www.google.com/search?safe=on&authuser=0&biw=1056&bih=633&sclient=psy-ab&q=red+sox&oq=red+sox&gs_l=serp.9..35i39j0i67l3.3025.3674.1.6260.2.2.0.0.0.0.94.169.2.2.0.ekp%2Ckpns%3D1000...0...1.1.39.psy-ab..1.11.2363.gpxxHMp98WU&pbx=1&btnI=1'
  end

end