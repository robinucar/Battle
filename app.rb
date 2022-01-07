require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
    enable :sessions
    configure :development do
        register Sinatra::Reloader
    end




    # Routes
    get '/' do
        erb :index
    end

    get '/play' do
        p params
        @first_player_name = session[:first_player_name]
        @second_player_name = session[:second_player_name]
        erb :play
    end

    post '/names' do
        p params
        session[:first_player_name] = params[:first_player_name]
        session[:second_player_name] = params[:second_player_name]
        redirect '/play'
    end

    get '/attack' do
        @first_player_name = session[:first_player_name]
        @second_player_name = session[:second_player_name]
        erb :attack
    end
    #Start the server if this file is executed directly
    run! if app_file == $0
end
