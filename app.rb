require 'sinatra/base'

class App < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/lucky' do
    lucky_term = params[:lucky_input].sub(" ", "+")
    lucky_url = "https://www.google.com/search?safe=on&authuser=0&biw=1056&bih=633&sclient=psy-ab&q=#{lucky_term}&oq=#{lucky_term}&gs_l=serp.9..35i39j0i67l3.3025.3674.1.6260.2.2.0.0.0.0.94.169.2.2.0.ekp%2Ckpns%3D1000...0...1.1.39.psy-ab..1.11.2363.gpxxHMp98WU&pbx=1&btnI=1"
    redirect lucky_url
  end

end